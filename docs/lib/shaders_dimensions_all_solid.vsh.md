# shaders\dimensions\all_solid.vsh

**Ruta original:** `shaders\dimensions\all_solid.vsh`

## Includes

- `/lib/settings.glsl`
- `/lib/res_params.glsl`
- `/lib/bokeh.glsl`
- `/lib/blocks.glsl`
- `/lib/entities.glsl`
- `/lib/items.glsl`
- `/lib/TAA_jitter.glsl`
- `/lib/climate_settings.glsl`

## Uniforms / Variables detectadas

- `uniform float frameTimeCounter;`
- `uniform int blockEntityId;`
- `uniform int entityId;`
- `uniform int heldItemId;`
- `uniform int heldItemId2;`
- `uniform int frameCounter;`
- `uniform float far;`
- `uniform float aspectRatio;`
- `uniform float viewHeight;`
- `uniform float viewWidth;`
- `uniform int hideGUI;`
- `uniform float screenBrightness;`
- `uniform int isEyeInWater;`
- `uniform mat4 gbufferModelView;`
- `uniform mat4 gbufferModelViewInverse;`
- `uniform vec3 cameraPosition;`
- `uniform vec2 texelSize;`
- `uniform int framemod8;`
- `uniform sampler2D noisetex;//depth`

## Defines / Preprocesador

- `#ifdef HAND`
- `#endif`
- `#ifndef USE_LUMINANCE_AS_HEIGHTMAP`
- `#ifndef MC_NORMAL_MAP`
- `#endif`
- `#endif`
- `#ifdef POM`
- `#define MC_NORMAL_MAP`
- `#endif`
- `#ifdef MC_NORMAL_MAP`
- `#endif`
- `#define diagonal3(m) vec3((m)[0].x, (m)[1].y, m[2].z)`
- `#define  projMAD(m, v) (diagonal3(m) * (v) + (m)[3].xyz)`
- `#define SEASONS_VSH`
- `#ifdef MC_NORMAL_MAP`
- `#endif`
- `#ifdef WORLD`
- `#endif`
- `#ifdef ENTITIES`
- `#endif`
- `#ifdef Hand_Held_lights`
- `#endif`
- `#ifdef ENTITIES`
- `#endif`
- `#ifdef WORLD`
- `#ifdef MISC_BLOCK_SSS`
- `#endif`
- `#ifdef ENTITIES`
- `#ifdef MOB_SSS`
- `#endif`
- `#endif`
- `#ifdef BLOCKENTITIES`
- `#endif`
- `#ifdef WAVY_PLANTS`
- `#endif`
- `#endif`
- `#if defined Seasons && defined WORLD && !defined ENTITIES && !defined BLOCKENTITIES && !defined HAND`
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

- `const float PI48 = 150.796447372*WAVY_SPEED;`

## Funciones detectadas (heurística)

- `vec4 toClipSpace3(vec3 viewSpacePosition)` — línea 100
- `vec2 calcWave(in vec3 pos)` — línea 104
- `vec3 calcMovePlants(in vec3 pos)` — línea 112
- `vec3 calcWaveLeaves(in vec3 pos, in float fm, in float mm, in float ma, in float f0, in float f1, in float f2, in float f3, in float f4, in float f5)` — línea 118
- `vec3 calcMoveLeaves(in vec3 pos, in float f0, in float f1, in float f2, in float f3, in float f4, in float f5, in vec3 amp1, in vec3 amp2)` — línea 126
- `vec3 srgbToLinear2(vec3 srgb)` — línea 130
- `float densityAtPos(in vec3 pos)` — línea 161
- `float luma(vec3 color)` — línea 174
- `vec3 viewToWorld(vec3 viewPos)` — línea 177
- `void main()` — línea 190

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.
