// =============================================================================
// Water Utility Functions
// =============================================================================
// Converted from Unity FluidRender shader to GLSL for Minecraft shader pack
// Contains shared utility functions for water rendering

#ifndef WATER_UTILS_GLSL
#define WATER_UTILS_GLSL

// =============================================================================
// Constants
// =============================================================================
const float PI = 3.14159265359;
const float INF = 1e10;

// =============================================================================
// Structures
// =============================================================================
struct HitInfo {
    bool didHit;
    bool isInside;
    float dst;
    vec3 hitPoint;
    vec3 normal;
};

struct LightResponse {
    vec3 reflectDir;
    vec3 refractDir;
    float reflectWeight;
    float refractWeight;
};

// =============================================================================
// Random Number Generation (PCG)
// =============================================================================
// PCG (permuted congruential generator)
uint NextRandomUint(inout uint state) {
    state = state * 747796405u + 2891336453u;
    uint result = ((state >> ((state >> 28u) + 4u)) ^ state) * 277803737u;
    result = (result >> 22u) ^ result;
    return result;
}

float RandomUNorm(inout uint state) {
    return float(NextRandomUint(state)) / 4294967295.0; // 2^32 - 1
}

float RandomSNorm(inout uint state) {
    return RandomUNorm(state) * 2.0 - 1.0;
}

vec3 RandomSNorm3(inout uint state) {
    return vec3(RandomSNorm(state), RandomSNorm(state), RandomSNorm(state));
}

uint RngSeedUintFromUV(vec2 uv) {
    return uint(uv.x * 5023.0 + uv.y * 96456.0);
}

uint HashInt2(ivec2 v) {
    return uint(v.x * 5023 + v.y * 96456);
}

// =============================================================================
// Color Space Conversions (RGB <-> HSV)
// =============================================================================
vec3 RGBToHSV(vec3 rgb) {
    vec4 K = vec4(0.0, -1.0 / 3.0, 2.0 / 3.0, -1.0);
    vec4 p = mix(vec4(rgb.bg, K.wz), vec4(rgb.gb, K.xy), step(rgb.b, rgb.g));
    vec4 q = mix(vec4(p.xyw, rgb.r), vec4(rgb.r, p.yzx), step(p.x, rgb.r));

    float d = q.x - min(q.w, q.y);
    float e = 1.0e-10;
    return vec3(abs(q.z + (q.w - q.y) / (6.0 * d + e)), d / (q.x + e), q.x);
}

vec3 HSVToRGB(vec3 hsv) {
    vec4 K = vec4(1.0, 2.0 / 3.0, 1.0 / 3.0, 3.0);
    vec3 p = abs(fract(hsv.xxx + K.xyz) * 6.0 - K.www);
    return hsv.z * mix(K.xxx, clamp(p - K.xxx, 0.0, 1.0), hsv.y);
}

vec3 TweakHSV(vec3 colRGB, vec3 shift) {
    vec3 hsv = RGBToHSV(colRGB);
    return clamp(HSVToRGB(hsv + shift), 0.0, 1.0);
}

// =============================================================================
// Depth Reconstruction
// =============================================================================
// Reconstruct view-space position from depth
vec3 ReconstructViewPos(vec2 uv, float depth, mat4 invProjection) {
    float z = depth * 2.0 - 1.0; // Convert to NDC z
    vec4 clip = vec4(uv * 2.0 - 1.0, z, 1.0);
    vec4 viewPos = invProjection * clip;
    viewPos /= viewPos.w;
    return viewPos.xyz;
}

// Reconstruct world-space position from depth
vec3 ReconstructWorldPos(vec2 uv, float depth, mat4 invProjection, mat4 invView) {
    vec3 viewPos = ReconstructViewPos(uv, depth, invProjection);
    vec4 worldPos = invView * vec4(viewPos, 1.0);
    return worldPos.xyz;
}

// Get world-space view direction from UV
vec3 WorldViewDir(vec2 uv, mat4 invProjection, mat4 invView) {
    vec3 viewVector = (invProjection * vec4(uv.xy * 2.0 - 1.0, 0.0, -1.0)).xyz;
    vec3 worldVector = (invView * vec4(normalize(viewVector), 0.0)).xyz;
    return normalize(worldVector);
}

// =============================================================================
// Ray-Box Intersection
// =============================================================================
// Test intersection of ray with unit box centered at origin
HitInfo RayUnitBox(vec3 pos, vec3 dir) {
    const vec3 boxMin = vec3(-1.0);
    const vec3 boxMax = vec3(1.0);
    vec3 invDir = 1.0 / dir;

    vec3 tMin = (boxMin - pos) * invDir;
    vec3 tMax = (boxMax - pos) * invDir;
    vec3 t1 = min(tMin, tMax);
    vec3 t2 = max(tMin, tMax);
    float tNear = max(max(t1.x, t1.y), t1.z);
    float tFar = min(min(t2.x, t2.y), t2.z);

    HitInfo hitInfo;
    hitInfo.dst = INF;
    hitInfo.didHit = tFar >= tNear && tFar > 0.0;
    hitInfo.isInside = tFar > tNear && tNear <= 0.0;

    if (hitInfo.didHit) {
        float hitDst = hitInfo.isInside ? tFar : tNear;
        vec3 hitPos = pos + dir * hitDst;

        hitInfo.dst = hitDst;
        hitInfo.hitPoint = hitPos;

        // Calculate normal
        vec3 o = 1.0 - abs(hitPos);
        vec3 absNormal = (o.x < o.y && o.x < o.z) ? vec3(1.0, 0.0, 0.0) : 
                         (o.y < o.z) ? vec3(0.0, 1.0, 0.0) : vec3(0.0, 0.0, 1.0);
        hitInfo.normal = absNormal * sign(hitPos) * (hitInfo.isInside ? -1.0 : 1.0);
    }

    return hitInfo;
}

// Test intersection of ray with arbitrary box
HitInfo RayBox(vec3 rayPos, vec3 rayDir, vec3 centre, vec3 size) {
    HitInfo hitInfo = RayUnitBox((rayPos - centre) / size, rayDir / size);
    hitInfo.hitPoint = hitInfo.hitPoint * size + centre;
    if (hitInfo.didHit) {
        hitInfo.dst = length(hitInfo.hitPoint - rayPos);
    }
    return hitInfo;
}

// =============================================================================
// Normal Utilities
// =============================================================================
// Calculate closest face normal of a box
vec3 CalculateClosestFaceNormal(vec3 boxSize, vec3 p) {
    vec3 halfSize = boxSize * 0.5;
    vec3 o = halfSize - abs(p);
    return (o.x < o.y && o.x < o.z) ? vec3(sign(p.x), 0.0, 0.0) : 
           (o.y < o.z) ? vec3(0.0, sign(p.y), 0.0) : vec3(0.0, 0.0, sign(p.z));
}

// Smooth edge normals at boundary
vec4 SmoothEdgeNormals(vec3 normal, vec3 pos, vec3 boxSize) {
    vec3 o = boxSize / 2.0 - abs(pos);
    float faceWeight = max(0.0, min(o.x, o.z));
    vec3 faceNormal = CalculateClosestFaceNormal(boxSize, pos);
    
    const float smoothDst = 0.01;
    float cornerWeight = 1.0 - clamp(abs(o.x - o.z) * 6.0, 0.0, 1.0);
    faceWeight = 1.0 - smoothstep(0.0, smoothDst, faceWeight);
    faceWeight *= (1.0 - cornerWeight);

    return vec4(normalize(normal * (1.0 - faceWeight) + faceNormal * faceWeight), faceWeight);
}

// =============================================================================
// Fresnel and Refraction
// =============================================================================
// Calculate the proportion of light reflected at the boundary (Fresnel equations)
float CalculateReflectance(vec3 inDir, vec3 normal, float iorA, float iorB) {
    float refractRatio = iorA / iorB;
    float cosAngleIn = -dot(inDir, normal);
    float sinSqrAngleOfRefraction = refractRatio * refractRatio * (1.0 - cosAngleIn * cosAngleIn);
    
    if (sinSqrAngleOfRefraction >= 1.0) return 1.0; // Total internal reflection

    float cosAngleOfRefraction = sqrt(1.0 - sinSqrAngleOfRefraction);
    
    // Perpendicular polarization
    float rPerpendicular = (iorA * cosAngleIn - iorB * cosAngleOfRefraction) / 
                           (iorA * cosAngleIn + iorB * cosAngleOfRefraction);
    rPerpendicular *= rPerpendicular;
    
    // Parallel polarization
    float rParallel = (iorB * cosAngleIn - iorA * cosAngleOfRefraction) / 
                      (iorB * cosAngleIn + iorA * cosAngleOfRefraction);
    rParallel *= rParallel;

    return (rPerpendicular + rParallel) / 2.0;
}

// Refract a ray
vec3 Refract(vec3 inDir, vec3 normal, float iorA, float iorB) {
    float refractRatio = iorA / iorB;
    float cosAngleIn = -dot(inDir, normal);
    float sinSqrAngleOfRefraction = refractRatio * refractRatio * (1.0 - cosAngleIn * cosAngleIn);
    
    if (sinSqrAngleOfRefraction > 1.0) return vec3(0.0); // Total internal reflection

    vec3 refractDir = refractRatio * inDir + 
                      (refractRatio * cosAngleIn - sqrt(1.0 - sinSqrAngleOfRefraction)) * normal;
    return refractDir;
}

// Reflect a ray
vec3 Reflect(vec3 inDir, vec3 normal) {
    return inDir - 2.0 * dot(inDir, normal) * normal;
}

// Calculate reflection and refraction
LightResponse CalculateReflectionAndRefraction(vec3 inDir, vec3 normal, float iorA, float iorB) {
    LightResponse result;

    result.reflectWeight = CalculateReflectance(inDir, normal, iorA, iorB);
    result.refractWeight = 1.0 - result.reflectWeight;

    result.reflectDir = Reflect(inDir, normal);
    result.refractDir = Refract(inDir, normal, iorA, iorB);

    return result;
}

// =============================================================================
// Sky and Environment Sampling
// =============================================================================
vec3 SampleSky(vec3 dir, vec3 sunDir, float sunIntensity, float sunInvSize) {
    const vec3 colGround = vec3(0.35, 0.3, 0.35) * 0.53;
    const vec3 colSkyHorizon = vec3(1.0, 1.0, 1.0);
    const vec3 colSkyZenith = vec3(0.08, 0.37, 0.73);

    float sun = pow(max(0.0, dot(dir, sunDir)), sunInvSize) * sunIntensity;
    float skyGradientT = pow(smoothstep(0.0, 0.4, dir.y), 0.35);
    float groundToSkyT = smoothstep(-0.01, 0.0, dir.y);
    vec3 skyGradient = mix(colSkyHorizon, colSkyZenith, skyGradientT);

    return mix(colGround, skyGradient, groundToSkyT) + sun * float(groundToSkyT >= 1.0);
}

// =============================================================================
// Screen Space Radius Calculation
// =============================================================================
// Calculate the number of pixels covered by a world-space radius at given distance
float CalculateScreenSpaceRadius(float worldRadius, float depth, int imageWidth, float fovScale) {
    float pxPerMeter = (float(imageWidth) * fovScale) / (2.0 * depth);
    return abs(pxPerMeter) * worldRadius;
}

// =============================================================================
// Modulo Function
// =============================================================================
float Modulo(float x, float y) {
    return x - y * floor(x / y);
}

#endif // WATER_UTILS_GLSL
