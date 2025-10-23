# shaders\dimensions\deferred2.vsh

**Ruta original:** `shaders\dimensions\deferred2.vsh`

## Includes

- `/lib/settings.glsl`
- `/lib/util.glsl`
- `/lib/res_params.glsl`
- `/lib/Shadow_Params.glsl`

## Uniforms / Variables detectadas

- `uniform mat4 gbufferModelViewInverse;`
- `uniform vec3 sunPosition;`
- `uniform float sunElevation;`
- `uniform sampler2D colortex4;`
- `uniform int frameCounter;`
- `uniform float frameTimeCounter;`

## Defines / Preprocesador

- `#if defined Daily_Weather`
- `#endif`
- `#if defined Daily_Weather`
- `#endif`
- `#ifdef TAA_UPSCALING`
- `#endif`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

- `void main()` — línea 29

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.
