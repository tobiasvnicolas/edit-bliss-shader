```plaintext
#version 330 compatibility

#include "/lib/settings.glsl"
#include "/lib/util.glsl"

uniform vec2 texelSize;
uniform float frameTimeCounter;
uniform sampler2D noisetex;

// Varyings from DH_translucent.vsh
varying vec4 pos;
varying vec4 gcolor;
flat varying int isWater;

void main() {
    // Simple animated lava: use screen-space noise and time to drive color
    vec2 uv = gl_FragCoord.xy * texelSize * 2.0; // scale noise a bit
    float n = texture2D(noisetex, uv + vec2(frameTimeCounter * 0.02, 0.0)).r;
    float p = smoothstep(0.2, 0.8, n);

    vec3 dark = vec3(0.12, 0.02, 0.00);
    vec3 hot = vec3(1.00, 0.45, 0.06);
    vec3 color = mix(dark, hot, p);

    // Add a small flicker and extra emissive boost
    float flicker = 0.7 + 0.5 * sin(frameTimeCounter * 6.0 + uv.x * 8.0);
    color *= flicker;
    color = clamp(color, 0.0, 1.5);

    // Slightly translucent to blend with scene (keeps the DH blending behavior simple)
    gl_FragColor = vec4(color, 0.9);
}

```
