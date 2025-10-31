#version 330 core

// =============================================================================
// Water Render Vertex Shader
// =============================================================================
// Converted from Unity FluidRender shader to GLSL
// Simple fullscreen quad vertex shader for screen-space water rendering

// Vertex attributes
layout(location = 0) in vec3 a_Position;
layout(location = 1) in vec2 a_TexCoord;

// Output to fragment shader
out vec2 v_TexCoord;

void main() {
    // Pass through texture coordinates
    v_TexCoord = a_TexCoord;
    
    // Output position (assuming fullscreen quad from -1 to 1)
    gl_Position = vec4(a_Position, 1.0);
}
