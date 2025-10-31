#version 120
/*
 * Water Fragment Shader - Integración de efectos avanzados
 * Usa funciones de water_effects.glsl convertidas desde Unity FluidRender
 */

#define OVERWORLD_SHADER
#define WATER

// Imports
#include "/lib/settings.glsl"
#include "/lib/res_params.glsl"
#include "/lib/water_effects.glsl"

// Variables de entrada
varying vec4 lmtexcoord;
varying vec4 color;
varying vec4 normalMat;
varying vec3 normal;
varying vec3 viewPos;
varying vec3 worldPos;

// Texturas
uniform sampler2D texture;
uniform sampler2D lightmap;
uniform sampler2D noisetex;
uniform sampler2D depthtex0;
uniform sampler2D depthtex1;
uniform sampler2D colortex0; // Scene color

// Uniforms de cámara
uniform mat4 gbufferProjection;
uniform mat4 gbufferProjectionInverse;
uniform mat4 gbufferModelViewInverse;
uniform vec3 cameraPosition;
uniform vec3 sunPosition;
uniform float frameTimeCounter;
uniform float viewWidth;
uniform float viewHeight;
uniform int isEyeInWater;
uniform float rainStrength;

/* RENDERTARGETS: 0,1 */

void main() {
    // Leer textura base y color
    vec4 albedo = texture2D(texture, lmtexcoord.xy) * color;
    vec3 waterColor = albedo.rgb;
    
    // Leer lightmap
    vec2 lightmapCoords = lmtexcoord.zw;
    vec3 lightmapColor = texture2D(lightmap, lightmapCoords).rgb;
    
    // Calcular dirección de vista
    vec3 viewDir = normalize(viewPos);
    vec3 waterNormal = normalize(normal);
    
    // Leer profundidad de la escena detrás del agua
    vec2 screenCoord = gl_FragCoord.xy / vec2(viewWidth, viewHeight);
    float sceneDepth = texture2D(depthtex0, screenCoord).r;
    float waterDepth = gl_FragCoord.z;
    
    // Calcular profundidad del agua (distancia a través del agua)
    float depthDifference = max(sceneDepth - waterDepth, 0.0) * 10.0; // Ajustar escala
    
    // Leer color de fondo (escena detrás del agua)
    vec3 backgroundColor = texture2D(colortex0, screenCoord).rgb;
    
    // Calcular color del cielo (simplificado)
    vec3 skyColor = mix(vec3(0.5, 0.7, 1.0), vec3(0.1, 0.3, 0.5), rainStrength);
    
    // Aplicar efectos avanzados de agua usando las funciones de integración
    vec4 finalWaterColor = ApplyAdvancedWaterEffects(
        viewDir,
        waterNormal,
        waterColor,
        backgroundColor,
        skyColor,
        waterDepth,
        depthDifference
    );
    
    // Aplicar iluminación básica
    finalWaterColor.rgb *= lightmapColor;
    
    // Mezclar con color base para mantener compatibilidad
    finalWaterColor.rgb = mix(waterColor * lightmapColor, finalWaterColor.rgb, 0.7);
    
    // Salida
    gl_FragData[0] = vec4(finalWaterColor.rgb, albedo.a);
    gl_FragData[1] = vec4(waterColor, 1.0); // Material buffer
}