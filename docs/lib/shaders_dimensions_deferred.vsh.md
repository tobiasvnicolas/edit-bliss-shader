# shaders\dimensions\deferred.vsh

**Ruta original:** `shaders\dimensions\deferred.vsh`

## Includes

- `/lib/settings.glsl`
- `/lib/res_params.glsl`
- `/lib/Shadow_Params.glsl`
- `/lib/sky_gradient.glsl`
- `/lib/util.glsl`
- `/lib/ROBOBO_sky.glsl`

## Uniforms / Variables detectadas

- `uniform float frameTimeCounter;`
- `uniform sampler2D colortex4;`
- `uniform sampler2D colortex6;`
- `uniform sampler2D depthtex0;`
- `uniform sampler2D depthtex1;`
- `uniform sampler2D depthtex2;`
- `uniform mat4 gbufferModelViewInverse;`
- `uniform vec3 sunPosition;`
- `uniform vec2 texelSize;`
- `uniform float sunElevation;`
- `uniform float eyeAltitude;`
- `uniform float near;`
- `uniform float frameTime;`
- `uniform int frameCounter;`
- `uniform float rainStrength;`
- `uniform float nightVision;`
- `uniform int worldDay;`

## Defines / Preprocesador

- `#ifdef OVERWORLD_SHADER`
- `#endif`
- `#ifdef Daily_Weather`
- `#ifdef CHOOSE_RANDOM_WEATHER_PROFILE`
- `#else`
- `#endif`
- `#endif`
- `#ifndef AUTO_EXPOSURE`
- `#endif`

## Constantes detectadas

- `const int maxITexp = 50;`

## Funciones detectadas (heurística)

- `float luma(vec3 color)` — línea 55
- `vec2 R2_samples(int n)` — línea 66
- `float tanh(float x)` — línea 70
- `float ld(float depth)` — línea 73
- `void main()` — línea 106

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.
