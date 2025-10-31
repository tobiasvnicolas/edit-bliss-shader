#version 120

#define HAND
#define END_SHADER
#define WATER

#include "/lib/settings.glsl"

varying vec4 lmtexcoord;
varying vec4 color;

uniform sampler2D texture;
uniform sampler2D lightmap;

/* RENDERTARGETS: 0 */

void main() {
    vec4 albedo = texture2D(texture, lmtexcoord.xy) * color;
    vec3 lightmapColor = texture2D(lightmap, lmtexcoord.zw).rgb;
    gl_FragData[0] = vec4(albedo.rgb * lightmapColor, albedo.a);
}