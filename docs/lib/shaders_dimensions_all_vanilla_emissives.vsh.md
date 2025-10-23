# shaders\dimensions\all_vanilla_emissives.vsh

**Ruta original:** `shaders\dimensions\all_vanilla_emissives.vsh`

## Includes

- `/lib/settings.glsl`
- `/lib/res_params.glsl`
- `/lib/TAA_jitter.glsl`

## Uniforms / Variables detectadas

- `uniform vec2 texelSize;`
- `uniform int framemod8;`
- `uniform sampler2D colortex4;`

## Defines / Preprocesador

- `#define diagonal3(m) vec3((m)[0].x, (m)[1].y, m[2].z)`
- `#define  projMAD(m, v) (diagonal3(m) * (v) + (m)[3].xyz)`
- `#if defined ENCHANT_GLINT || defined SPIDER_EYES || defined BEACON_BEAM`
- `#else`
- `#endif`
- `#ifdef BEACON_BEAM`
- `#endif`
- `#ifdef ENCHANT_GLINT`
- `#endif`
- `#ifdef TAA_UPSCALING`
- `#endif`
- `#ifdef TAA`
- `#endif`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

- `vec4 toClipSpace3(vec3 viewSpacePosition)` — línea 26
- `void main()` — línea 39

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.
