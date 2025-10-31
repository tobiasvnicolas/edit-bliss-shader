#version 330 core

// =============================================================================
// Billboard Foam Vertex Shader
// =============================================================================
// Converted from Unity BillboardFoam shader to GLSL
// Renders foam particles as camera-facing billboards

layout(location = 0) in vec3 a_Position;
layout(location = 1) in vec2 a_TexCoord;

out vec2 v_TexCoord;
out vec3 v_PosWorld;
out float v_Lifetime;
out float v_Scale;
out float v_Speed;

// Uniforms
uniform mat4 u_ViewMatrix;
uniform mat4 u_ProjectionMatrix;
uniform mat4 u_InverseView;
uniform float u_BaseScale;

// Particle data (could be in a buffer/texture in real implementation)
struct FoamParticle {
    vec3 position;
    vec3 velocity;
    float lifetime;
    float scale;
};

// For simplicity, using uniform array (in practice use SSBO or texture buffer)
uniform FoamParticle u_Particles[1024];

float Remap01(float val, float minVal, float maxVal) {
    return clamp((val - minVal) / (maxVal - minVal), 0.0, 1.0);
}

void main() {
    int instanceID = gl_InstanceID;
    FoamParticle particle = u_Particles[instanceID];

    // Scale particle based on age (dissolve over time)
    const float remainingLifetimeDissolveStart = 3.0;
    float dissolveScaleT = clamp(particle.lifetime / remainingLifetimeDissolveStart, 0.0, 1.0);
    float speed = length(particle.velocity);
    float velScale = mix(0.6, 1.0, Remap01(speed, 1.0, 3.0));
    float vertScale = u_BaseScale * 2.0 * dissolveScaleT * particle.scale * velScale;

    // Billboard quad facing camera
    vec3 worldCentre = particle.position;
    vec3 vertOffset = a_Position * vertScale;
    vec3 camUp = u_InverseView[1].xyz;
    vec3 camRight = u_InverseView[0].xyz;
    vec3 vertPosWorld = worldCentre + camRight * vertOffset.x + camUp * vertOffset.y;
    
    gl_Position = u_ProjectionMatrix * u_ViewMatrix * vec4(vertPosWorld, 1.0);
    v_TexCoord = a_TexCoord;
    v_PosWorld = worldCentre;
    v_Lifetime = particle.lifetime;
    v_Scale = vertScale;
    v_Speed = speed;
}
