#version 330 core

// =============================================================================
// Bilateral Filter 1D Fragment Shader  
// =============================================================================
// Converted from Unity BilateralFilter1D shader to GLSL
// Applies 1D depth-aware bilateral filter (separable for performance)
// Use two passes: horizontal then vertical

in vec2 v_TexCoord;
out vec4 fragColor;

// Uniforms
uniform sampler2D u_InputTexture;
uniform vec2 u_TexelSize;
uniform mat4 u_InverseProjection;
uniform vec2 u_BlurDirection;          // (1,0) for horizontal, (0,1) for vertical
uniform float u_WorldRadius;
uniform int u_MaxScreenSpaceRadius;
uniform float u_Strength;
uniform float u_DiffStrength;
uniform vec3 u_SmoothMask;

// =============================================================================
// Gaussian Weight Calculation
// =============================================================================
float CalculateGaussianWeight1D(int x, float sigma) {
    float c = 2.0 * sigma * sigma;
    return exp(-(float(x * x)) / c);
}

// =============================================================================
// View Position Reconstruction
// =============================================================================
vec4 ViewPos(vec2 uv, float depth) {
    vec3 origin = vec3(0.0);
    vec3 viewVector = (u_InverseProjection * vec4(uv.xy * 2.0 - 1.0, 0.0, -1.0)).xyz;
    vec3 dir = normalize(viewVector);
    return vec4(origin + dir * depth, depth);
}

// =============================================================================
// Screen Space Radius Calculation
// =============================================================================
float CalculateScreenSpaceRadius(vec3 viewPoint, float worldRadius, int imageWidth) {
    float clipW = viewPoint.z;
    float projScale = 1.0; // May need to be passed as uniform
    float pxPerMeter = (float(imageWidth) * projScale) / (2.0 * clipW);
    return abs(pxPerMeter * worldRadius);
}

// =============================================================================
// 1D Blur Calculation
// =============================================================================
vec4 CalculateBlur1D(vec2 uv, vec2 direction) {
    vec4 centreSample = texture(u_InputTexture, uv);
    float depth = centreSample.a;
    
    vec3 viewPos = ViewPos(uv, depth).xyz;
    int radius = int(round(CalculateScreenSpaceRadius(viewPos, u_WorldRadius, 
                     int(1.0 / u_TexelSize.x))));
    radius = min(u_MaxScreenSpaceRadius, radius);

    float sigma = max(0.0000001, float(radius) * u_Strength);

    vec4 sum = vec4(0.0);
    float wSum = 0.0;

    for (int i = -radius; i <= radius; i++) {
        vec2 uv2 = uv + float(i) * direction * u_TexelSize;
        vec4 sample = texture(u_InputTexture, uv2);

        float w = CalculateGaussianWeight1D(i, sigma);

        float centreDiff = centreSample.a - sample.a;
        float diffWeight = exp(-centreDiff * centreDiff * u_DiffStrength);

        float sampleWeight = w * diffWeight;
        sum += sample * sampleWeight;
        wSum += sampleWeight;
    }

    if (wSum > 0.0) {
        sum /= wSum;
    }

    return vec4(mix(centreSample.rgb, sum.rgb, u_SmoothMask), depth);
}

// =============================================================================
// Main Fragment Shader
// =============================================================================
void main() {
    fragColor = CalculateBlur1D(v_TexCoord, u_BlurDirection);
}
