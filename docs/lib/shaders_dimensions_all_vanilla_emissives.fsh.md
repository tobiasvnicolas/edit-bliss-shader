# shaders\dimensions\all_vanilla_emissives.fsh

**Ruta original:** `shaders\dimensions\all_vanilla_emissives.fsh`

## Includes

- `/lib/settings.glsl`

## Uniforms / Variables detectadas

- `uniform sampler2D texture;`
- `uniform sampler2D normals;`
- `uniform sampler2D noisetex;`
- `uniform float frameTimeCounter;`
- `uniform mat4 gbufferModelViewInverse;`

## Defines / Preprocesador

- `#if defined SPIDER_EYES || defined BEACON_BEAM || defined GLOWING`
- `#ifdef BEACON_BEAM`
- `#endif`
- `#ifdef DISABLE_VANILLA_EMISSIVES`
- `#else`
- `#endif`
- `#endif`
- `#ifdef ENCHANT_GLINT`
- `#ifdef DISABLE_ENCHANT_GLINT`
- `#else`
- `#endif`
- `#endif`

## Constantes detectadas

- `const vec2 constant1 = vec2( 1., 256.) / 65535.;`

## Funciones detectadas (heurística)

- `vec3 toLinear(vec3 sRGB)` — línea 17
- `vec4 encode(vec3 n, vec2 lightmaps)` — línea 21
- `float encodeVec2(vec2 a)` — línea 30
- `float encodeVec2(float x,float y)` — línea 35
- `vec3 viewToWorld(vec3 viewPos)` — línea 41
- `void main()` — línea 57

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.
