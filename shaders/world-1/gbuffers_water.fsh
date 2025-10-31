#version 120
/*
 * Nether Water Fragment Shader (Lava)
 */

#define NETHER
#define NETHER_SHADER
#define WATER

#include "/lib/settings.glsl"

varying vec4 lmtexcoord;
varying vec4 color;
varying vec3 normal;
varying vec3 viewPos;

uniform sampler2D texture;
uniform sampler2D lightmap;
uniform float frameTimeCounter;

/* RENDERTARGETS: 0 */

void main() {
    vec4 albedo = texture2D(texture, lmtexcoord.xy) * color;
    vec3 lightmapColor = texture2D(lightmap, lmtexcoord.zw).rgb;
    
    // Efecto de brillo para lava
    float glow = 1.0 + sin(frameTimeCounter * 3.0) * 0.2;
    vec3 lavaColor = albedo.rgb * glow;
    
    gl_FragData[0] = vec4(lavaColor * lightmapColor, albedo.a);
}