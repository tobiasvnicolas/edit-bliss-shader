#version 330 core

// =============================================================================
// Bilateral Filter 2D Fragment Shader
// =============================================================================
// Converted from Unity BilateralFilter2D shader to GLSL
// Applies depth-aware bilateral filter for smoothing while preserving edges

in vec2 v_TexCoord;
out vec4 fragColor;

// Uniforms
uniform sampler2D u_InputTexture;
uniform vec2 u_TexelSize;              // (1/width, 1/height)
uniform mat4 u_InverseProjection;
uniform float u_WorldRadius;           // World-space smoothing radius
uniform int u_MaxScreenSpaceRadius;    // Maximum screen-space radius in pixels
uniform float u_Strength;              // Gaussian sigma multiplier
uniform float u_DiffStrength;          // Depth difference weight strength
uniform vec3 u_SmoothMask;             // Mask for which channels to smooth (RGB)

// =============================================================================
// Gaussian Weight Calculation
// =============================================================================
float CalculateGaussianWeight2D(int x, int y, float sigma) {
    float c = 2.0 * sigma * sigma;
    return exp(-(float(x * x + y * y)) / c);
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
float CalculateScreenSpaceRadius(vec3 viewPoint, float worldRadius, int imageWidth, float projScale) {
    float clipW = viewPoint.z;
    float pxPerMeter = (float(imageWidth) * projScale) / (2.0 * clipW);
    return abs(pxPerMeter * worldRadius);
}

// =============================================================================
// Main Fragment Shader
// =============================================================================
void main() {
    vec4 centreSample = texture(u_InputTexture, v_TexCoord);

    // Calculate screen space radius based on depth
    float depth = centreSample.a;
    vec3 viewPos = ViewPos(v_TexCoord, depth).xyz;
    
    // Get projection scale (FOV related)
    float projScale = 1.0; // You may need to pass this as uniform
    
    int radius = int(round(CalculateScreenSpaceRadius(viewPos, u_WorldRadius, 
                     int(1.0 / u_TexelSize.x), projScale)));
    radius = min(u_MaxScreenSpaceRadius, radius);

    float sigma = max(0.0000001, float(radius) * u_Strength);

    vec4 sum = vec4(0.0);
    float wSum = 0.0;

    // Apply 2D bilateral filter
    for (int dx = -radius; dx <= radius; dx++) {
        for (int dy = -radius; dy <= radius; dy++) {
            vec2 uv2 = v_TexCoord + vec2(float(dx), float(dy)) * u_TexelSize;
            vec4 sample = texture(u_InputTexture, uv2);

            // Gaussian spatial weight
            float w = CalculateGaussianWeight2D(dx, dy, sigma);

            // Depth difference weight (bilateral term)
            float centreDiff = centreSample.a - sample.a;
            float diffWeight = exp(-centreDiff * centreDiff * u_DiffStrength);

            float sampleWeight = w * diffWeight;
            sum += sample * sampleWeight;
            wSum += sampleWeight;
        }
    }
   
    if (wSum > 0.0) {
        sum /= wSum;
    }

    // Apply smooth mask to blend between original and smoothed
    fragColor = vec4(mix(centreSample.rgb, sum.rgb, u_SmoothMask), depth);
}
