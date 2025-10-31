#version 120
/*
 * Hand Water Fragment Shader - Versión simplificada para items en mano
 */

#define HAND
#define OVERWORLD_SHADER
#define WATER

#include "/lib/settings.glsl"
#include "/lib/res_params.glsl"
#include "/lib/water_effects.glsl"

varying vec4 lmtexcoord;
varying vec4 color;
varying vec3 normal;
varying vec3 viewPos;

uniform sampler2D texture;
uniform sampler2D lightmap;

/* RENDERTARGETS: 0 */

void main() {
    // Textura y color
    vec4 albedo = texture2D(texture, lmtexcoord.xy) * color;
    
    // Lightmap
    vec3 lightmapColor = texture2D(lightmap, lmtexcoord.zw).rgb;
    
    // Aplicar Fresnel simple para la mano
    vec3 viewDir = normalize(viewPos);
    vec3 waterNormal = normalize(normal);
    float fresnel = CalculateFresnelReflectance(viewDir, waterNormal, 1.0, WATER_IOR);
    
    // Mezclar con un tinte azulado
    vec3 waterTint = mix(albedo.rgb, vec3(0.3, 0.5, 0.8), 0.3);
    vec3 finalColor = mix(waterTint, vec3(1.0, 1.0, 0.9), fresnel * 0.3);
    
    // Aplicar iluminación
    finalColor *= lightmapColor;
    
    gl_FragData[0] = vec4(finalColor, albedo.a);
}