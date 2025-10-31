#version 120
/*
 * Water Vertex Shader - Integración de efectos avanzados
 * Usa los shaders convertidos de Unity FluidRender
 */

#define OVERWORLD_SHADER
#define WATER

// Imports básicos
#include "/lib/settings.glsl"
#include "/lib/res_params.glsl"

// Variables de entrada estándar de Minecraft
varying vec4 lmtexcoord;
varying vec4 color;
varying vec4 normalMat;
varying vec3 binormal;
varying vec4 tangent;
varying vec3 normal;
varying vec3 viewPos;
varying vec3 worldPos;

attribute vec4 at_tangent;
attribute vec4 mc_Entity;

uniform mat4 gbufferModelView;
uniform mat4 gbufferModelViewInverse;
uniform vec3 cameraPosition;
uniform float frameTimeCounter;

#include "/lib/water_effects.glsl"

// Función para calcular ondas de agua
vec3 calculateWaterWave(vec3 worldPosition) {
    float time = frameTimeCounter * WATER_WAVE_SPEED;
    vec2 pos = worldPosition.xz;
    
    float wave = sin(pos.x * 2.0 + time) * 0.1;
    wave += sin(pos.y * 3.0 + time * 1.5) * 0.05;
    
    return vec3(0.0, wave, 0.0);
}

void main() {
    // Pasar texcoords y color
    lmtexcoord.xy = (gl_TextureMatrix[0] * gl_MultiTexCoord0).xy;
    lmtexcoord.zw = (gl_TextureMatrix[1] * gl_MultiTexCoord1).xy;
    color = gl_Color;
    
    // Calcular posición
    vec3 position = gl_Vertex.xyz;
    worldPos = (gbufferModelViewInverse * (gl_ModelViewMatrix * gl_Vertex)).xyz + cameraPosition;
    
    // Aplicar ondas de agua
    #ifdef WATER_WAVE_STRENGTH
        position += calculateWaterWave(worldPos);
    #endif
    
    viewPos = (gl_ModelViewMatrix * vec4(position, 1.0)).xyz;
    
    // Calcular normal, tangente, binormal
    normal = normalize(gl_NormalMatrix * gl_Normal);
    tangent.xyz = normalize(gl_NormalMatrix * at_tangent.xyz);
    tangent.w = at_tangent.w;
    binormal = cross(tangent.xyz, normal) * tangent.w;
    
    normalMat = vec4(normal, 1.0); // Material ID para agua
    
    // Posición final
    gl_Position = gl_ProjectionMatrix * vec4(viewPos, 1.0);
}