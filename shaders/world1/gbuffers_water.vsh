#version 120
/*
 * End Water Vertex Shader
 */

#define END_SHADER
#define WATER

#include "/lib/settings.glsl"
#include "/lib/res_params.glsl"

varying vec4 lmtexcoord;
varying vec4 color;
varying vec3 normal;
varying vec3 viewPos;

void main() {
    lmtexcoord.xy = (gl_TextureMatrix[0] * gl_MultiTexCoord0).xy;
    lmtexcoord.zw = (gl_TextureMatrix[1] * gl_MultiTexCoord1).xy;
    color = gl_Color;
    viewPos = (gl_ModelViewMatrix * gl_Vertex).xyz;
    normal = normalize(gl_NormalMatrix * gl_Normal);
    gl_Position = gl_ProjectionMatrix * vec4(viewPos, 1.0);
}