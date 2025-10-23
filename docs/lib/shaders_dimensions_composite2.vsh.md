# shaders\dimensions\composite2.vsh

**Ruta original:** `shaders\dimensions\composite2.vsh`

## Includes

- `/lib/settings.glsl`
- `/lib/util.glsl`
- `/lib/res_params.glsl`
- `/lib/TAA_jitter.glsl`
- `/lib/Shadow_Params.glsl`
- `/lib/sky_gradient.glsl`

## Uniforms / Variables detectadas

- `uniform vec2 texelSize;`
- `uniform sampler2D colortex4;`
- `uniform float sunElevation;`
- `uniform vec3 sunPosition;`
- `uniform mat4 gbufferModelViewInverse;`
- `uniform int frameCounter;`
- `uniform int framemod8;`
- `uniform float frameTimeCounter;`

## Defines / Preprocesador

- `#if defined LPV_VL_FOG_ILLUMINATION && defined IS_LPV_ENABLED`
- `#endif`
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
- `#if defined LPV_VL_FOG_ILLUMINATION && defined IS_LPV_ENABLED`
- `#endif`
- `#ifdef TAA`
- `#else`
- `#endif`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

- `void main()` — línea 48

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.
