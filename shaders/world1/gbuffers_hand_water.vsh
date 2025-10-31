#version 120

#define HAND
#define END_SHADER
#define WATER

#include "/lib/settings.glsl"

varying vec4 lmtexcoord;
varying vec4 color;

void main() {
    lmtexcoord.xy = (gl_TextureMatrix[0] * gl_MultiTexCoord0).xy;
    lmtexcoord.zw = (gl_TextureMatrix[1] * gl_MultiTexCoord1).xy;
    color = gl_Color;
    gl_Position = ftransform();
}