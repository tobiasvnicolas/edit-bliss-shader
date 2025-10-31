#version 330 core

// =============================================================================
// Normals From Depth Fragment Shader
// =============================================================================
// Converted from Unity NormalsFromDepth shader to GLSL
// Calculates surface normals from depth buffer using screen-space derivatives

// Input from vertex shader
in vec2 v_TexCoord;

// Output
out vec4 fragColor;

// Uniforms
uniform sampler2D u_DepthTexture;      // Depth texture (packed: r=smoothed, a=raw)
uniform vec2 u_TexelSize;              // Texel size (1/width, 1/height)
uniform mat4 u_InverseProjection;      // Inverse projection matrix
uniform mat4 u_InverseView;            // Inverse view matrix (camera to world)
uniform int u_UseSmoothedDepth;        // Use smoothed depth (1) or raw depth (0)

// =============================================================================
// View Position Reconstruction
// =============================================================================
vec4 ViewPos(vec2 uv) {
    vec4 depthInfo = texture(u_DepthTexture, uv);
    float depth = (u_UseSmoothedDepth == 1) ? depthInfo.r : depthInfo.a;

    vec3 origin = vec3(0.0);

    // Reconstruct view direction
    vec3 viewVector = (u_InverseProjection * vec4(uv.xy * 2.0 - 1.0, 0.0, -1.0)).xyz;
    vec3 dir = normalize(viewVector);
    
    return vec4(origin + dir * depth, depth);
}

// =============================================================================
// Main Fragment Shader
// =============================================================================
void main() {
    // Get center position in view space
    vec4 posCentre = ViewPos(v_TexCoord);
    
    // Early exit if depth is invalid (far plane or no geometry)
    if (posCentre.w > 10000.0) {
        fragColor = vec4(0.0);
        return;
    }

    vec2 o = u_TexelSize;

    // Calculate derivatives using neighbor samples
    // Choose the derivative with smaller depth difference (more reliable)
    vec3 ddx = ViewPos(v_TexCoord + vec2(o.x, 0.0)).xyz - posCentre.xyz;
    vec3 ddx2 = posCentre.xyz - ViewPos(v_TexCoord + vec2(-o.x, 0.0)).xyz;
    if (abs(ddx2.z) < abs(ddx.z)) {
        ddx = ddx2;
    }
    
    vec3 ddy = ViewPos(v_TexCoord + vec2(0.0, o.y)).xyz - posCentre.xyz;
    vec3 ddy2 = posCentre.xyz - ViewPos(v_TexCoord + vec2(0.0, -o.y)).xyz;
    if (abs(ddy2.z) < abs(ddy.z)) {
        ddy = ddy2;
    }
    
    // Calculate normal in view space using cross product
    vec3 viewNormal = normalize(cross(ddy, ddx));
    
    // Transform to world space
    vec3 worldNormal = (u_InverseView * vec4(viewNormal, 0.0)).xyz;

    fragColor = vec4(worldNormal, 1.0);
}
