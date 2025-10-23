# shaders\dimensions\all_translucent.vsh

**Ruta original:** `shaders\dimensions\all_translucent.vsh`

## Includes

- `/lib/settings.glsl`
- `/lib/res_params.glsl`
- `/lib/bokeh.glsl`
- `/lib/items.glsl`
- `/lib/Shadow_Params.glsl`
- `/lib/TAA_jitter.glsl`

## Uniforms / Variables detectadas

- `uniform float frameTimeCounter;`
- `uniform sampler2D colortex4;`
- `uniform sampler2D noisetex;`
- `uniform mat4 gbufferModelViewInverse;`
- `uniform mat4 gbufferModelView;`
- `uniform vec3 sunPosition;`
- `uniform vec3 cameraPosition;`
- `uniform float sunElevation;`
- `uniform int frameCounter;`
- `uniform float aspectRatio;`
- `uniform float viewHeight;`
- `uniform float viewWidth;`
- `uniform int hideGUI;`
- `uniform float screenBrightness;`
- `uniform int heldItemId;`
- `uniform int heldItemId2;`
- `uniform vec2 texelSize;`
- `uniform int framemod8;`

## Defines / Preprocesador

- `#ifdef OVERWORLD_SHADER`
- `#if defined Daily_Weather`
- `#endif`
- `#endif`
- `#ifdef LARGE_WAVE_DISPLACEMENT`
- `#endif`
- `#define diagonal3(m) vec3((m)[0].x, (m)[1].y, m[2].z)`
- `#define  projMAD(m, v) (diagonal3(m) * (v) + (m)[3].xyz)`
- `#ifdef LARGE_WAVE_DISPLACEMENT`
- `#ifdef DISTANT_HORIZONS`
- `#else`
- `#endif`
- `#endif`
- `#ifdef Hand_Held_lights`
- `#endif`
- `#if defined ENTITIES || defined BLOCKENTITIES`
- `#endif`
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

- `vec4 toClipSpace3(vec3 viewSpacePosition)` — línea 81
- `float getWave(vec3 pos, float range)` — línea 86
- `vec3 getWaveNormal(vec3 posxz, float range)` — línea 89
- `void main()` — línea 113

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.
