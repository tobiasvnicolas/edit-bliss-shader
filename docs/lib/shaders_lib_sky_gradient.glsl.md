# shaders\lib\sky_gradient.glsl

**Ruta original:** `shaders\lib\sky_gradient.glsl`

## Includes

(ninguno detectado)

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define ffstep(x,y) clamp((y - x) * 1e35,0.0,1.0)`
- `#ifdef SCREENSHOT_MODE`
- `#endif`

## Constantes detectadas

- `const float pi = 3.141592653589793238462643383279502884197169;`

## Funciones detectadas (heurística)

- `vec3 drawSun(float cosY, float sunInt,vec3 nsunlight,vec3 inColor)` — línea 3
- `vec3 drawMoon(vec3 PlayerPos, vec3 WorldSunVec, vec3 Color, inout vec3 occludeStars)` — línea 7
- `vec2 sphereToCarte(vec3 dir)` — línea 135
- `vec3 skyFromTex(vec3 pos,sampler2D sampler)` — línea 140
- `vec3 skyFromTexLOD(vec3 pos,sampler2D sampler, float LOD)` — línea 144
- `vec4 skyCloudsFromTex(vec3 pos,sampler2D sampler)` — línea 148
- `vec4 skyCloudsFromTexLOD(vec3 pos,sampler2D sampler, float LOD)` — línea 152
- `vec4 skyCloudsFromTexLOD2(vec3 pos,sampler2D sampler, float LOD)` — línea 157

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.
