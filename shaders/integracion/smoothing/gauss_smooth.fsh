#version 330 core

// =============================================================================
// Gaussian Smooth Fragment Shader
// =============================================================================
// Converted from Unity GaussSmooth shader to GLSL
// Simple Gaussian blur (separable, 1D per pass)

in vec2 v_TexCoord;
out vec4 fragColor;

// Uniforms
uniform sampler2D u_InputTexture;
uniform vec2 u_TexelSize;
uniform vec2 u_BlurDirection;  // (1,0) for horizontal, (0,1) for vertical
uniform int u_BlurRadius;      // Blur radius in pixels
uniform float u_Sigma;         // Gaussian sigma

// =============================================================================
// Gaussian Weight Calculation
// =============================================================================
float CalculateGaussianWeight(float x, float sigma) {
    float c = 2.0 * sigma * sigma;
    return exp(-(x * x) / c);
}

// =============================================================================
// 1D Gaussian Blur
// =============================================================================
vec4 CalculateBlur1D(vec2 uv, vec2 direction) {
    vec4 sum = vec4(0.0);
    float wSum = 0.0;

    for (int i = -u_BlurRadius; i <= u_BlurRadius; i++) {
        vec2 offset = float(i) * direction * u_TexelSize;
        vec4 sample = texture(u_InputTexture, uv + offset);
        
        float w = CalculateGaussianWeight(float(i), u_Sigma);
        sum += sample * w;
        wSum += w;
    }

    if (wSum > 0.0) {
        sum /= wSum;
    }

    return sum;
}

// =============================================================================
// Main Fragment Shader
// =============================================================================
void main() {
    fragColor = CalculateBlur1D(v_TexCoord, u_BlurDirection);
}
