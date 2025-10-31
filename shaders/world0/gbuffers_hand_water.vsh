#version 120
/*
 * Hand Water Vertex Shader - Versión simplificada para items en mano
 */

#define HAND
#define OVERWORLD_SHADER
#define WATER

#include "/lib/settings.glsl"
#include "/lib/res_params.glsl"

varying vec4 lmtexcoord;
varying vec4 color;
varying vec3 normal;
varying vec3 viewPos;

uniform mat4 gbufferModelView;

void main() {
    // Pasar texcoords y color
    lmtexcoord.xy = (gl_TextureMatrix[0] * gl_MultiTexCoord0).xy;
    lmtexcoord.zw = (gl_TextureMatrix[1] * gl_MultiTexCoord1).xy;
    color = gl_Color;
    
    // Calcular posición (sin ondas para la mano)
    viewPos = (gl_ModelViewMatrix * gl_Vertex).xyz;
    
    // Normal
    normal = normalize(gl_NormalMatrix * gl_Normal);
    
    // Posición final
    gl_Position = gl_ProjectionMatrix * vec4(viewPos, 1.0);
}