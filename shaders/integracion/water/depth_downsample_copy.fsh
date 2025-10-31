#version 330 core

// =============================================================================
// Depth Downsample Copy Fragment Shader
// =============================================================================
// Converted from Unity DepthDownsampleCopy shader to GLSL
// Copies depth data, potentially with downsampling

in vec2 v_TexCoord;
out vec4 fragColor;

uniform sampler2D u_InputTexture;

void main() {
    float depth = texture(u_InputTexture, v_TexCoord).g;
    gl_FragDepth = depth;
    fragColor = vec4(0.0, 0.0, 0.0, 0.0);
}
