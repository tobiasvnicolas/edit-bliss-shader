#version 330 core

// =============================================================================
// Particle Thickness Fragment Shader
// =============================================================================
// Converted from Unity ParticleThickness shader to GLSL
// Accumulates thickness contribution from particles (additive blending)

in vec2 v_TexCoord;
out vec4 fragColor;

void main() {
    vec2 centreOffset = v_TexCoord - 0.5;
    centreOffset *= 2.0;
    float sqrDst = dot(centreOffset, centreOffset);
    
    // Discard fragments outside circle
    if (sqrDst >= 1.0) discard;

    const float contribution = 0.1;
    fragColor = vec4(contribution, contribution, contribution, contribution);
}
