#version 330 core

// =============================================================================
// Smooth Thickness Prepare Fragment Shader
// =============================================================================
// Converted from Unity SmoothThickPrepare shader to GLSL
// Combines depth and thickness into a single packed texture for smoothing

in vec2 v_TexCoord;
out vec4 fragColor;

uniform sampler2D u_DepthTexture;
uniform sampler2D u_ThicknessTexture;

void main() {
    float depth = texture(u_DepthTexture, v_TexCoord).r;
    float thick = texture(u_ThicknessTexture, v_TexCoord).r;

    // Pack: r=depth, g=thick, b=thick, a=depth
    fragColor = vec4(depth, thick, thick, depth);
}
