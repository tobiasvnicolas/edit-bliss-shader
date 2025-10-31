#version 330 core

// =============================================================================
// Particle Depth Vertex Shader
// =============================================================================
// Converted from Unity ParticleDepth shader to GLSL
// Billboard particle rendering with depth calculation

layout(location = 0) in vec3 a_Position;
layout(location = 1) in vec2 a_TexCoord;

out vec2 v_TexCoord;
out vec3 v_PosWorld;

// Uniforms
uniform mat4 u_ViewMatrix;
uniform mat4 u_ProjectionMatrix;
uniform mat4 u_InverseView;
uniform vec3 u_Positions[1024];  // Particle positions (instanced)
uniform float u_ParticleScale;

void main() {
    // Get instance ID (may need to use gl_InstanceID if using instancing)
    int instanceID = gl_InstanceID;
    
    vec3 worldCentre = u_Positions[instanceID];
    vec3 vertOffset = a_Position * u_ParticleScale * 2.0;
    
    // Camera vectors for billboarding
    vec3 camUp = u_InverseView[1].xyz;
    vec3 camRight = u_InverseView[0].xyz;
    
    vec3 vertPosWorld = worldCentre + camRight * vertOffset.x + camUp * vertOffset.y;
    gl_Position = u_ProjectionMatrix * u_ViewMatrix * vec4(vertPosWorld, 1.0);
    v_PosWorld = vertPosWorld;
    v_TexCoord = a_TexCoord;
}
