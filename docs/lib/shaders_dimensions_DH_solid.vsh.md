# shaders\dimensions\DH_solid.vsh

**Ruta original:** `shaders\dimensions\DH_solid.vsh`

## Includes

- `/lib/settings.glsl`
- `/lib/res_params.glsl`
- `/lib/bokeh.glsl`
- `/lib/TAA_jitter.glsl`
- `/lib/climate_settings.glsl`

## Uniforms / Variables detectadas

- `uniform vec2 texelSize;`
- `uniform int framemod8;`
- `uniform int hideGUI;`
- `uniform int frameCounter;`
- `uniform float aspectRatio;`
- `uniform float screenBrightness;`
- `uniform mat4 gbufferModelViewInverse;`
- `uniform mat4 gbufferModelView;`
- `uniform float far;`
- `uniform mat4 dhProjection;`
- `uniform vec3 cameraPosition;`

## Defines / Preprocesador

- `#if DOF_QUALITY == 5`
- `#endif`
- `#define diagonal3(m) vec3((m)[0].x, (m)[1].y, m[2].z)`
- `#define  projMAD(m, v) (diagonal3(m) * (v) + (m)[3].xyz)`
- `#define SEASONS_VSH`
- `#define DH_SEASONS`
- `#ifdef TAA_UPSCALING`
- `#endif`
- `#ifdef TAA`
- `#endif`
- `#if defined DH_SUBSURFACE_SCATTERING`
- `#endif`
- `#if defined Seasons && defined OVERWORLD_SHADER`
- `#endif`
- `#if DOF_QUALITY == 5`
- `#if MANUAL_FOCUS == -2`
- `#elif MANUAL_FOCUS == -1`
- `#else`
- `#endif`
- `#endif`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

- `vec4 toClipSpace3(vec3 viewSpacePosition)` — línea 38
- `void main()` — línea 47

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.
