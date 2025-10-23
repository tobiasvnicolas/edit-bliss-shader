# shaders\world-1\gbuffers_skytextured.fsh

**Ruta original:** `shaders\world-1\gbuffers_skytextured.fsh`

## Includes

- `/lib/settings.glsl`

## Uniforms / Variables detectadas

- `uniform sampler2D texture;`
- `uniform int renderStage;`

## Defines / Preprocesador

- `#if RESOURCEPACK_SKY != 0`
- `#endif`
- `#if RESOURCEPACK_SKY != 0`
- `#if RESOURCEPACK_SKY == 3`
- `#endif`
- `#if RESOURCEPACK_SKY == 1`
- `#else`
- `#endif`
- `#else`
- `#endif`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

- `float interleaved_gradientNoise()` — línea 11
- `void main()` — línea 20

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.
