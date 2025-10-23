# shaders\world-1\gbuffers_skytextured.vsh

**Ruta original:** `shaders\world-1\gbuffers_skytextured.vsh`

## Includes

- `/lib/settings.glsl`
- `/lib/res_params.glsl`

## Uniforms / Variables detectadas

- `uniform vec2 texelSize;`
- `uniform int framemod8;`

## Defines / Preprocesador

- `#if RESOURCEPACK_SKY != 0`
- `#endif`
- `#if RESOURCEPACK_SKY != 0`
- `#ifdef TAA_UPSCALING`
- `#endif`
- `#ifdef TAA`
- `#endif`
- `#endif`

## Constantes detectadas

- `const vec2[8] offsets = vec2[8](vec2(1./8.,-3./8.),`

## Funciones detectadas (heurística)

- `void main()` — línea 27

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.
