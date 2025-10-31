#version 120
/*
 * End Water Fragment Shader
 */

#define END_SHADER
#define WATER

#include "/lib/settings.glsl"
#include "/lib/water_effects.glsl"

varying vec4 lmtexcoord;
varying vec4 color;
varying vec3 normal;
varying vec3 viewPos;

uniform sampler2D texture;
uniform sampler2D lightmap;

/* RENDERTARGETS: 0 */

void main() {
    vec4 albedo = texture2D(texture, lmtexcoord.xy) * color;
    vec3 lightmapColor = texture2D(lightmap, lmtexcoord.zw).rgb;
    
    // Efecto Fresnel para agua del End
    vec3 viewDir = normalize(viewPos);
    float fresnel = CalculateFresnelReflectance(viewDir, normalize(normal), 1.0, WATER_IOR);
    
    vec3 endWaterColor = mix(albedo.rgb, vec3(0.5, 0.3, 0.8), 0.4); // Tinte púrpura
    vec3 finalColor = mix(endWaterColor, vec3(0.8, 0.5, 1.0), fresnel * 0.5);
    
    gl_FragData[0] = vec4(finalColor * lightmapColor, albedo.a);
}