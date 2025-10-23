# shaders\dimensions\fogBehindTranslucent_pass.vsh

**Ruta original:** `shaders\dimensions\fogBehindTranslucent_pass.vsh`

## Includes

- `/lib/settings.glsl`
- `/lib/util.glsl`
- `/lib/res_params.glsl`
- `/lib/Shadow_Params.glsl`
- `/lib/sky_gradient.glsl`

## Uniforms / Variables detectadas

- `uniform sampler2D colortex4;`
- `uniform float sunElevation;`
- `uniform vec2 texelSize;`
- `uniform vec3 sunPosition;`
- `uniform mat4 gbufferModelViewInverse;`
- `uniform int frameCounter;`
- `uniform float frameTimeCounter;`

## Defines / Preprocesador

- `#if defined Daily_Weather`
- `#endif`
- `#ifdef OVERWORLD_SHADER`
- `#if defined Daily_Weather`
- `#endif`
- `#endif`
- `#ifdef NETHER_SHADER`
- `#endif`
- `#ifdef END_SHADER`
- `#endif`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

- `void main()` — línea 41

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.
