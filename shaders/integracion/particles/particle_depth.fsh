#version 330 core

// =============================================================================
// Particle Depth Fragment Shader
// =============================================================================
// Converted from Unity ParticleDepth shader to GLSL
// Outputs linear depth for particles

in vec2 v_TexCoord;
in vec3 v_PosWorld;

out vec4 fragColor;

// Uniforms
uniform mat4 u_ViewMatrix;
uniform vec3 u_CameraPosition;
uniform float u_ParticleScale;
uniform vec2 u_NearFar;  // x = near, y = far

// Convert linear depth to Unity-style depth buffer value
float LinearDepthToUnityDepth(float linearDepth, vec2 nearFar) {
    float depth01 = (linearDepth - nearFar.x) / (nearFar.y - nearFar.x);
    // This may need adjustment based on your depth buffer format
    return depth01;
}

void main() {
    vec2 centreOffset = (v_TexCoord - 0.5) * 2.0;
    float sqrDst = dot(centreOffset, centreOffset);
    
    // Discard fragments outside circle (billboard sphere)
    if (sqrDst > 1.0) discard;

    // Calculate z offset for sphere surface
    float z = sqrt(1.0 - sqrDst);
    
    // Calculate view-space depth
    vec4 viewPos = u_ViewMatrix * vec4(v_PosWorld, 1.0);
    float d = abs(viewPos.z);
    
    // Calculate camera distance
    float dcam = length(v_PosWorld - u_CameraPosition);
    float linearDepth = dcam - z * u_ParticleScale;
    
    // Output linear depth and set gl_FragDepth if needed
    gl_FragDepth = LinearDepthToUnityDepth(linearDepth, u_NearFar);
    
    fragColor = vec4(linearDepth, linearDepth, linearDepth, 1.0);
}
