#version 120
/*
 * Nether Water Vertex Shader (Lava)
 */

#define NETHER
#define NETHER_SHADER
#define WATER

#include "/lib/settings.glsl"
#include "/lib/res_params.glsl"

varying vec4 lmtexcoord;
varying vec4 color;
varying vec3 normal;
varying vec3 viewPos;

uniform float frameTimeCounter;

void main() {
    lmtexcoord.xy = (gl_TextureMatrix[0] * gl_MultiTexCoord0).xy;
    lmtexcoord.zw = (gl_TextureMatrix[1] * gl_MultiTexCoord1).xy;
    color = gl_Color;
    
    // Animación de lava
    vec3 position = gl_Vertex.xyz;
    position.y += sin(position.x * 3.0 + frameTimeCounter * 2.0) * 0.05;
    position.y += cos(position.z * 2.0 + frameTimeCounter * 1.5) * 0.03;
    
    viewPos = (gl_ModelViewMatrix * vec4(position, 1.0)).xyz;
    normal = normalize(gl_NormalMatrix * gl_Normal);
    gl_Position = gl_ProjectionMatrix * vec4(viewPos, 1.0);
}