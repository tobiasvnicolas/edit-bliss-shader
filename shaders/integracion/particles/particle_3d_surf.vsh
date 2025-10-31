#version 330 core

// =============================================================================
// Particle 3D Surface Vertex Shader
// =============================================================================
// Converted from Unity Particle3DSurf shader to GLSL
// Renders particles as 3D spheres with velocity-based coloring

layout(location = 0) in vec3 a_Position;
layout(location = 1) in vec3 a_Normal;
layout(location = 2) in vec2 a_TexCoord;

out vec3 v_Normal;
out vec2 v_TexCoord;
out vec3 v_Color;
out vec3 v_WorldPos;

uniform mat4 u_ModelMatrix;
uniform mat4 u_ViewMatrix;
uniform mat4 u_ProjectionMatrix;
uniform vec3 u_Positions[1024];
uniform vec3 u_Velocities[1024];
uniform sampler2D u_ColorMap;
uniform float u_ParticleScale;
uniform float u_VelocityMax;

void main() {
    int instanceID = gl_InstanceID;
    
    // Instance transformation
    vec3 particlePos = u_Positions[instanceID];
    mat4 instanceTransform = mat4(
        u_ParticleScale, 0.0, 0.0, 0.0,
        0.0, u_ParticleScale, 0.0, 0.0,
        0.0, 0.0, u_ParticleScale, 0.0,
        particlePos.x, particlePos.y, particlePos.z, 1.0
    );
    
    vec4 worldPos = instanceTransform * vec4(a_Position, 1.0);
    gl_Position = u_ProjectionMatrix * u_ViewMatrix * worldPos;
    
    v_WorldPos = worldPos.xyz;
    v_Normal = normalize((instanceTransform * vec4(a_Normal, 0.0)).xyz);
    v_TexCoord = a_TexCoord;
    
    // Color based on velocity
    float speed = length(u_Velocities[instanceID]);
    float speedT = clamp(speed / u_VelocityMax, 0.0, 1.0);
    v_Color = texture(u_ColorMap, vec2(speedT, 0.5)).rgb;
}
