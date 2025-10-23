# shaders\dimensions\composite.vsh

**Ruta original:** `shaders\dimensions\composite.vsh`

## Includes

- `/lib/settings.glsl`
- `/lib/util.glsl`
- `/lib/res_params.glsl`
- `/lib/TAA_jitter.glsl`

## Uniforms / Variables detectadas

- `uniform sampler2D colortex4;`
- `uniform int frameCounter;`
- `uniform float sunElevation;`
- `uniform vec3 sunPosition;`
- `uniform mat4 gbufferModelViewInverse;`
- `uniform int framemod8;`

## Defines / Preprocesador

- `#ifdef TAA`
- `#else`
- `#endif`
- `#ifdef TAA_UPSCALING`
- `#endif`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

- `void main()` — línea 23

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.
