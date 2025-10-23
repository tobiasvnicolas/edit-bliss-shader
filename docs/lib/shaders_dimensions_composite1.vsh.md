# shaders\dimensions\composite1.vsh

**Ruta original:** `shaders\dimensions\composite1.vsh`

## Includes

- `/lib/settings.glsl`
- `/lib/res_params.glsl`
- `/lib/TAA_jitter.glsl`
- `/lib/util.glsl`
- `/lib/Shadow_Params.glsl`

## Uniforms / Variables detectadas

- `uniform sampler2D colortex4;`
- `uniform float near;`
- `uniform mat4 gbufferModelViewInverse;`
- `uniform vec3 sunPosition;`
- `uniform float rainStrength;`
- `uniform float sunElevation;`
- `uniform int frameCounter;`
- `uniform float frameTimeCounter;`
- `uniform int framemod8;`

## Defines / Preprocesador

- `#ifdef END_SHADER`
- `#endif`
- `#if defined Daily_Weather`
- `#endif`
- `#ifdef END_SHADER`
- `#endif`
- `#if defined Daily_Weather`
- `#endif`
- `#ifdef TAA`
- `#else`
- `#endif`
- `#ifdef TAA_UPSCALING`
- `#endif`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

- `void main()` — línea 43

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.
