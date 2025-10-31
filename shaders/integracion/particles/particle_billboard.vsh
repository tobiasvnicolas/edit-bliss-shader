#version 330 core

// =============================================================================
// Particle Billboard Vertex Shader
// =============================================================================
// Converted from Unity ParticleBillboard shader to GLSL
// Renders particles as camera-facing billboards with color based on velocity

layout(location = 0) in vec3 a_Position;
layout(location = 1) in vec2 a_TexCoord;
layout(location = 2) in vec3 a_Normal;

out vec2 v_TexCoord;
out vec3 v_Color;
out vec3 v_Normal;

uniform mat4 u_ViewMatrix;
uniform mat4 u_ProjectionMatrix;
uniform mat4 u_InverseView;
uniform vec3 u_Positions[1024];
uniform vec3 u_Velocities[1024];
uniform sampler2D u_ColorMap;
uniform float u_ParticleScale;
uniform float u_VelocityMax;

void main() {
    int instanceID = gl_InstanceID;
    v_TexCoord = a_TexCoord;
    v_Normal = a_Normal;
    
    vec3 centreWorld = u_Positions[instanceID];
    vec3 objectVertPos = a_Position * u_ParticleScale * 2.0;
    
    // Billboard in view space
    vec4 viewPos = u_ViewMatrix * vec4(centreWorld, 1.0) + vec4(objectVertPos, 0.0);
    gl_Position = u_ProjectionMatrix * viewPos;

    // Color based on velocity
    float speed = length(u_Velocities[instanceID]);
    float speedT = clamp(speed / u_VelocityMax, 0.0, 1.0);
    v_Color = texture(u_ColorMap, vec2(speedT, 0.5)).rgb;
}
