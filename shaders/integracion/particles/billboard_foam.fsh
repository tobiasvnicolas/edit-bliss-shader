#version 330 core

// =============================================================================
// Billboard Foam Fragment Shader
// =============================================================================
// Converted from Unity BillboardFoam shader to GLSL
// Renders foam particles with proper depth

in vec2 v_TexCoord;
in vec3 v_PosWorld;
in float v_Lifetime;
in float v_Scale;
in float v_Speed;

out vec4 fragColor;

uniform mat4 u_ViewMatrix;
uniform vec2 u_NearFar;

float LinearDepthToUnityDepth(float linearDepth, vec2 nearFar) {
    float depth01 = (linearDepth - nearFar.x) / (nearFar.y - nearFar.x);
    return depth01;
}

void main() {
    vec2 centreOffset = (v_TexCoord - 0.5) * 2.0;
    float sqrDst = dot(centreOffset, centreOffset);
    
    // Discard fragments outside circle
    if (sqrDst > 1.0) discard;

    // Calculate linear depth
    vec4 viewPos = u_ViewMatrix * vec4(v_PosWorld, 1.0);
    float linearDepth = abs(viewPos.z);
    
    // Output: r=foam mask, g=depth for depth buffer, b=linear depth, a=1
    fragColor = vec4(1.0, LinearDepthToUnityDepth(linearDepth, u_NearFar), linearDepth, 1.0);
}
