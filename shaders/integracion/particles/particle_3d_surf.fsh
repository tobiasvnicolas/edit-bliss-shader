#version 330 core

// =============================================================================
// Particle 3D Surface Fragment Shader
// =============================================================================
// Converted from Unity Particle3DSurf shader to GLSL
// Simple diffuse shading for 3D particle spheres

in vec3 v_Normal;
in vec2 v_TexCoord;
in vec3 v_Color;
in vec3 v_WorldPos;

out vec4 fragColor;

uniform vec3 u_LightDirection;

void main() {
    // Simple diffuse lighting
    float diffuse = max(0.0, dot(normalize(v_Normal), u_LightDirection));
    vec3 ambient = vec3(0.3);
    
    vec3 lighting = ambient + vec3(diffuse * 0.7);
    fragColor = vec4(v_Color * lighting, 1.0);
}
