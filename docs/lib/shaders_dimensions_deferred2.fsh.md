# shaders\dimensions\deferred2.fsh

**Ruta original:** `shaders\dimensions\deferred2.fsh`

## Includes

- `/lib/settings.glsl`
- `/lib/DistantHorizons_projections.glsl`
- `/lib/TAA_jitter.glsl`
- `/lib/lightning_stuff.glsl`
- `/lib/sky_gradient.glsl`
- `/lib/res_params.glsl`
- `/lib/volumetricClouds.glsl`

## Uniforms / Variables detectadas

- `uniform float near;`
- `uniform sampler2D depthtex0;`
- `uniform sampler2D dhDepthTex;`
- `uniform sampler2D dhDepthTex1;`
- `uniform sampler2D noisetex;`
- `uniform sampler2D colortex12;`
- `uniform float sunElevation;`
- `uniform vec3 sunVec;`
- `uniform vec2 texelSize;`
- `uniform float frameTimeCounter;`
- `uniform float rainStrength;`
- `uniform int frameCounter;`
- `uniform int framemod8;`
- `uniform mat4 gbufferProjectionInverse;`
- `uniform mat4 gbufferModelViewInverse;`
- `uniform vec3 cameraPosition;`
- `uniform mat4 gbufferModelView;`
- `uniform mat4 gbufferProjection;`
- `uniform float far;`
- `uniform int dhRenderDistance;`
- `uniform float eyeAltitude;`

## Defines / Preprocesador

- `#ifdef DISTANT_HORIZONS`
- `#endif`
- `#define diagonal3(m) vec3((m)[0].x, (m)[1].y, m[2].z)`
- `#define  projMAD(m, v) (diagonal3(m) * (v) + (m)[3].xyz)`
- `#ifdef TAA`
- `#else`
- `#endif`
- `#ifdef TAA`
- `#else`
- `#endif`
- `#define CLOUDS_INTERSECT_TERRAIN`
- `#if defined OVERWORLD_SHADER && defined VOLUMETRIC_CLOUDS && !defined  CLOUDS_INTERSECT_TERRAIN`
- `#ifdef CLOUDS_INTERSECT_TERRAIN`
- `#ifdef DISTANT_HORIZONS`
- `#else`
- `#endif`
- `#else`
- `#endif`
- `#else`
- `#endif`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

- `vec3 toScreenSpace(vec3 p)` — línea 45
- `float R2_dither()` — línea 55
- `float interleaved_gradientNoise()` — línea 65
- `float blueNoise()` — línea 76
- `vec3 normVec(vec3 vec)` — línea 85
- `float ld(float dist)` — línea 91
- `void main()` — línea 118

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.
