```plaintext
#version 330 compatibility

#include "/lib/settings.glsl"
#include "/lib/util.glsl"

uniform vec2 texelSize;
uniform float frameTimeCounter;
uniform sampler2D noisetex;

// Varyings from DH_translucent.vsh (kept for compatibility)
varying vec4 pos;
varying vec4 gcolor;
flat varying int isWater;

void main() {
    // Screen-space noise animation (fast and cheap). Scale for denser veins.
    vec2 uv = gl_FragCoord.xy * texelSize * 3.0;
    float n = texture2D(noisetex, uv + vec2(frameTimeCounter * 0.04, frameTimeCounter * 0.02)).r;

    // Make the lava pockets denser: bias and sharpen the noise
    float m = smoothstep(0.35, 0.7, pow(n, 1.8));
    float pockets = smoothstep(0.5, 0.95, m);

    // Palette: deep almost-black crust -> hot core
    vec3 crust = vec3(0.05, 0.01, 0.00);
    vec3 core = vec3(1.0, 0.55, 0.18);
    vec3 glow = vec3(1.0, 0.85, 0.6);

    // Mix using pockets to create sharp bright veins
    vec3 base = mix(crust, core, pockets);
    // Add a small inner glow where noise is strongest
    float inner = smoothstep(0.8, 0.98, n);
    vec3 color = base + glow * inner * 0.9;

    // Stronger flicker for liveliness but keep it constrained
    float flicker = 1.0 + 0.35 * sin(frameTimeCounter * 8.0 + uv.x * 12.0);
    color *= flicker;

    // Increase contrast and clamp
    color = clamp(color * vec3(1.2, 1.05, 0.9), 0.0, 2.0);

    // Make lava opaque/dense: alpha = 1.0 and a strong color
    gl_FragColor = vec4(color, 1.0);
}

```
