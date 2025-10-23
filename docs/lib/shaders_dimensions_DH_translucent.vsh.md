# shaders\dimensions\DH_translucent.vsh

**Ruta original:** `shaders\dimensions\DH_translucent.vsh`

## Includes

- `/lib/settings.glsl`
- `/lib/res_params.glsl`
- `/lib/bokeh.glsl`
- `/lib/TAA_jitter.glsl`

## Uniforms / Variables detectadas

- `uniform sampler2D colortex4;`
- `uniform mat4 gbufferModelViewInverse;`
- `uniform mat4 gbufferModelView;`
- `uniform mat4 dhProjection;`
- `uniform vec3 sunPosition;`
- `uniform float sunElevation;`
- `uniform vec2 texelSize;`
- `uniform int framemod8;`
- `uniform int hideGUI;`
- `uniform int frameCounter;`
- `uniform float aspectRatio;`
- `uniform float screenBrightness;`
- `uniform float far;`
- `uniform vec3 cameraPosition;`

## Defines / Preprocesador

- `#ifdef OVERWORLD_SHADER`
- `#if defined Daily_Weather`
- `#endif`
- `#endif`
- `#if DOF_QUALITY == 5`
- `#endif`
- `#define diagonal3(m) vec3((m)[0].x, (m)[1].y, m[2].z)`
- `#define  projMAD(m, v) (diagonal3(m) * (v) + (m)[3].xyz)`
- `#ifdef OVERWORLD_SHADER`
- `#if defined Daily_Weather`
- `#endif`
- `#endif`
- `#ifdef TAA_UPSCALING`
- `#endif`
- `#ifdef TAA`
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

- `vec4 toClipSpace3_THING(vec3 viewSpacePosition)` — línea 57
- `void main()` — línea 61

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.
