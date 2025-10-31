#version 330 core

// =============================================================================
// Particle Billboard Fragment Shader
// =============================================================================
// Converted from Unity ParticleBillboard shader to GLSL

in vec2 v_TexCoord;
in vec3 v_Color;
in vec3 v_Normal;

out vec4 fragColor;

uniform vec3 u_LightDirection;

void main() {
    float shading = clamp(dot(u_LightDirection, v_Normal), 0.0, 1.0);
    shading = (shading + 0.6) / 1.4;
    fragColor = vec4(v_Color * shading, 1.0);
}
