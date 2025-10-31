#version 330 core

// =============================================================================
// Water Render Fragment Shader
// =============================================================================
// Converted from Unity FluidRender shader to GLSL for Minecraft shader pack
// Main water rendering with refraction, reflection, foam, and thickness

// Include shared files
#include "../lib/water_config.glsl"
#include "../lib/water_utils.glsl"

// Input from vertex shader
in vec2 v_TexCoord;

// Output color
out vec4 fragColor;

// =============================================================================
// Environment Sampling
// =============================================================================
vec3 SampleEnvironment(vec3 pos, vec3 dir) {
    HitInfo floorInfo = RayBox(pos, dir, u_FloorPosition, u_FloorSize);

    if (floorInfo.didHit) {
        // Choose tile color based on quadrant
        vec3 tileCol = floorInfo.hitPoint.x < 0.0 ? u_TileColor1.rgb : u_TileColor2.rgb;
        if (floorInfo.hitPoint.z < 0.0) {
            tileCol = floorInfo.hitPoint.x < 0.0 ? u_TileColor3.rgb : u_TileColor4.rgb;
        }

        // Dark tile pattern
        ivec2 tileCoord = ivec2(floor(floorInfo.hitPoint.xz * u_TileScale));
        bool isDarkTile = (int(Modulo(float(tileCoord.x), 2.0)) == int(Modulo(float(tileCoord.y), 2.0)));
        tileCol = TweakHSV(tileCol, vec3(0.0, 0.0, u_TileDarkOffset * float(isDarkTile)));

        // Random variation per tile
        uint rngState = HashInt2(tileCoord);
        vec3 randomVariation = RandomSNorm3(rngState) * u_TileColorVariation * 0.1;
        tileCol = TweakHSV(tileCol, randomVariation);

        // Shadow sampling
        vec4 shadowClip = u_ShadowViewProjection * vec4(floorInfo.hitPoint, 1.0);
        shadowClip /= shadowClip.w;
        vec2 shadowUV = shadowClip.xy * 0.5 + 0.5;
        float shadowEdgeWeight = float(shadowUV.x >= 0.0 && shadowUV.x <= 1.0 && 
                                       shadowUV.y >= 0.0 && shadowUV.y <= 1.0);
        vec3 shadow = vec3(texture(u_ShadowMap, shadowUV).r * shadowEdgeWeight);
        shadow = exp(-shadow * u_ExtinctionCoefficients);

        shadow = shadow * (1.0 - u_AmbientLight) + u_AmbientLight;

        return tileCol * shadow;
    }

    return SampleSky(dir, u_SunDirection, u_SunIntensity, u_SunInvSize);
}

// Crude anti-aliasing for environment sampling
vec3 SampleEnvironmentAA(vec3 pos, vec3 dir) {
    // Get camera right and up vectors from inverse view matrix
    vec3 right = u_InverseView[0].xyz;
    vec3 up = u_InverseView[1].xyz;
    
    vec3 sum = vec3(0.0);
    for (int ox = -1; ox <= 1; ox++) {
        for (int oy = -1; oy <= 1; oy++) {
            vec3 jitteredFocusPoint = (pos + dir) + 
                                      (right * float(ox) + up * float(oy)) * 0.7 / u_ScreenParams.x;
            vec3 jDir = normalize(jitteredFocusPoint - pos);
            sum += SampleEnvironment(pos, jDir);
        }
    }

    return sum / 9.0;
}

// =============================================================================
// Debug Display Modes
// =============================================================================
vec4 DebugModeDisplay(float depthSmooth, float depth, float thicknessSmooth, 
                      float thickness, vec3 normal) {
    vec3 col = vec3(0.0);

    switch (u_DebugDisplayMode) {
        case 1: // Raw depth
            col = vec3(depth / u_DepthDisplayScale);
            break;
        case 2: // Smoothed depth
            col = vec3(depthSmooth / u_DepthDisplayScale);
            break;
        case 3: // Normals
            if (dot(normal, normal) == 0.0) {
                col = vec3(0.0);
            } else {
                vec3 normalDisplay = normal * 0.5 + 0.5;
                col = pow(normalDisplay, vec3(2.2));
            }
            break;
        case 4: // Raw thickness
            col = vec3(thickness / u_ThicknessDisplayScale);
            break;
        case 5: // Smoothed thickness
            col = vec3(thicknessSmooth / u_ThicknessDisplayScale);
            break;
        default:
            col = vec3(1.0, 0.0, 1.0); // Magenta for invalid mode
            break;
    }

    return vec4(col, 1.0);
}

// =============================================================================
// Main Fragment Shader
// =============================================================================
void main() {
    // Read data from textures
    vec3 normal = texture(Normals, v_TexCoord).xyz;

    vec4 packedData = texture(Comp, v_TexCoord);
    float depthSmooth = packedData.r;
    float thickness = packedData.g;
    float thickness_hard = packedData.b;
    float depth_hard = packedData.a;

    vec4 bg = texture(u_SceneColor, v_TexCoord);
    float foam = bg.r;
    float foamDepth = bg.b;

    // Get view direction
    vec3 viewDirWorld = WorldViewDir(v_TexCoord, u_InverseProjection, u_InverseView);
    
    // Sample environment and early exit if ray misses fluid
    vec3 world = SampleEnvironmentAA(u_CameraPosition, viewDirWorld);
    if (depthSmooth > 1000.0) {
        fragColor = vec4(world * (1.0 - foam) + vec3(foam), 1.0);
        return;
    }

    // Calculate fluid hit point and smooth out normals along edges
    vec3 hitPos = u_CameraPosition + viewDirWorld * depthSmooth;
    vec4 smoothEdgeNormal = SmoothEdgeNormals(normal, hitPos, u_BoundsSize);
    normal = normalize(normal + smoothEdgeNormal.xyz * 6.0 * 
                      max(0.0, dot(normal, smoothEdgeNormal.xyz)));

    // Debug display mode
    if (u_DebugDisplayMode != 0) {
        fragColor = DebugModeDisplay(depthSmooth, depth_hard, thickness, 
                                     thickness_hard, normal);
        return;
    }

    // Calculate shading
    float shading = dot(normal, u_SunDirection) * 0.5 + 0.5;
    shading = shading * (1.0 - u_AmbientLight) + u_AmbientLight;

    // Calculate reflection and refraction
    LightResponse lightResponse = CalculateReflectionAndRefraction(
        viewDirWorld, normal, 1.0, u_IOR);
    vec3 reflectDir = reflect(viewDirWorld, normal);

    vec3 exitPos = hitPos + lightResponse.refractDir * thickness * u_RefractionMultiplier;
    
    // Clamp to ensure doesn't go below floor
    exitPos += lightResponse.refractDir * 
               max(0.0, u_FloorPosition.y + u_FloorSize.y - exitPos.y) / 
               lightResponse.refractDir.y;
   
    // Color calculation
    vec3 transmission = exp(-thickness * u_ExtinctionCoefficients);
    vec3 reflectCol = SampleEnvironmentAA(hitPos, lightResponse.reflectDir);
    vec3 refractCol = SampleEnvironmentAA(exitPos, viewDirWorld);
    refractCol = refractCol * (1.0 - foam) + vec3(foam);
    refractCol *= transmission;

    // If foam is in front of the fluid, overwrite the reflected color
    if (foamDepth < depthSmooth) {
        reflectCol = reflectCol * (1.0 - foam) + vec3(foam);
    }

    // Blend between reflected and refracted color
    vec3 col = mix(reflectCol, refractCol, lightResponse.refractWeight);
    fragColor = vec4(col, 1.0);
}
