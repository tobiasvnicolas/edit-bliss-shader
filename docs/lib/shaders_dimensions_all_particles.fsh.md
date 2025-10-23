# shaders\dimensions\all_particles.fsh

**Ruta original:** `shaders\dimensions\all_particles.fsh`

## Includes

- `/lib/settings.glsl`
- `/lib/res_params.glsl`
- `/lib/Shadow_Params.glsl`
- `/lib/util.glsl`
- `/lib/volumetricClouds.glsl`
- `/lib/hsv.glsl`
- `/lib/lpv_common.glsl`
- `/lib/lpv_render.glsl`
- `/lib/diffuse_lighting.glsl`
- `/lib/sky_gradient.glsl`
- `/lib/TAA_jitter.glsl`

## Uniforms / Variables detectadas

- `uniform sampler2DShadow shadow;`
- `uniform sampler2D shadowcolor0;`
- `uniform sampler2DShadow shadowtex0;`
- `uniform sampler2DShadow shadowtex1;`
- `uniform int isEyeInWater;`
- `uniform sampler2D texture;`
- `uniform sampler2D noisetex;`
- `uniform sampler2D colortex4;`
- `uniform usampler1D texBlockData;`
- `uniform sampler3D texLpv1;`
- `uniform sampler3D texLpv2;`
- `uniform mat4 gbufferProjectionInverse;`
- `uniform mat4 gbufferModelViewInverse;`
- `uniform mat4 gbufferModelView;`
- `uniform mat4 shadowModelView;`
- `uniform mat4 shadowProjection;`
- `uniform vec3 cameraPosition;`
- `uniform float frameTimeCounter;`
- `uniform vec2 texelSize;`
- `uniform ivec2 eyeBrightnessSmooth;`
- `uniform float rainStrength;`
- `uniform float nightVision;`
- `uniform int heldItemId;`
- `uniform int heldItemId2;`
- `uniform int frameCounter;`
- `uniform int framemod8;`
- `uniform mat4 gbufferProjection;`
- `uniform sampler2D normals;`
- `uniform float near;`
- `uniform vec3 eyePosition;`

## Defines / Preprocesador

- `#ifdef IS_LPV_ENABLED`
- `#endif`
- `#ifdef LINES`
- `#endif`
- `#ifdef OVERWORLD_SHADER`
- `#ifdef TRANSLUCENT_COLORED_SHADOWS`
- `#endif`
- `#endif`
- `#ifdef IS_LPV_ENABLED`
- `#endif`
- `#ifndef OVERWORLD_SHADER`
- `#endif`
- `#ifdef OVERWORLD_SHADER`
- `#define CLOUDSHADOWSONLY`
- `#endif`
- `#ifdef IS_LPV_ENABLED`
- `#endif`
- `#ifdef OVERWORLD_SHADER`
- `#ifdef DISTORT_SHADOWMAP`
- `#else`
- `#endif`
- `#ifdef TRANSLUCENT_COLORED_SHADOWS`
- `#else`
- `#endif`
- `#ifdef TRANSLUCENT_COLORED_SHADOWS`
- `#endif`
- `#endif`
- `#if defined DAMAGE_BLOCK_EFFECT && defined POM`
- `#define diagonal3(m) vec3((m)[0].x, (m)[1].y, m[2].z)`
- `#define  projMAD(m, v) (diagonal3(m) * (v) + (m)[3].xyz)`
- `#endif`
- `#ifdef DAMAGE_BLOCK_EFFECT`
- `#else`
- `#endif`
- `#ifdef DAMAGE_BLOCK_EFFECT`
- `#ifdef POM`
- `#ifdef Adaptive_Step_length`
- `#else`
- `#endif`
- `#else`
- `#endif`
- `#endif`
- `#if !defined DAMAGE_BLOCK_EFFECT`
- `#ifdef LINES`
- `#ifndef SELECT_BOX`
- `#endif`
- `#endif`
- `#ifdef WhiteWorld`
- `#endif`
- `#ifndef OVERWORLD_SHADER`
- `#endif`
- `#if defined Hand_Held_lights && !defined LPV_ENABLED`
- `#ifdef IS_IRIS`
- `#else`
- `#endif`
- `#endif`
- `#ifdef WEATHER`
- `#endif`
- `#ifndef WEATHER`
- `#ifndef LINES`
- `#else`
- `#endif`
- `#ifndef BLOOMY_PARTICLES`
- `#endif`
- `#ifdef OVERWORLD_SHADER`
- `#ifdef CLOUDS_SHADOWS`
- `#endif`
- `#ifndef LINES`
- `#endif`
- `#ifdef IS_IRIS`
- `#else`
- `#endif`
- `#endif`
- `#ifdef NETHER_SHADER`
- `#endif`
- `#ifdef END_SHADER`
- `#endif`
- `#ifdef IS_LPV_ENABLED`
- `#else`
- `#endif`
- `#ifdef LINES`
- `#else`
- `#endif`
- `#endif`
- `#endif`

## Constantes detectadas

- `const bool shadowHardwareFiltering = true;`
- `const vec2 constant1 = vec2( 1., 256.) / 65535.;`
- `const float MAX_OCCLUSION_DISTANCE = MAX_DIST;`
- `const float MIX_OCCLUSION_DISTANCE = MAX_DIST*0.9;`
- `const int   MAX_OCCLUSION_POINTS   = MAX_ITERATIONS;`
- `const float mincoord = 1.0/4096.0;`
- `const float maxcoord = 1.0-mincoord;`
- `const vec3 lpvPos = vec3(0.0);`

## Funciones detectadas (heurística)

- `vec3 toLinear(vec3 sRGB)` — línea 92
- `vec3 toScreenSpace(vec3 p)` — línea 98
- `float phaseg(float x, float g)` — línea 111
- `float encodeVec2(vec2 a)` — línea 117
- `float encodeVec2(float x,float y)` — línea 122
- `float ComputeShadowMap(inout vec3 directLightColor, vec3 playerPos, float maxDistFade)` — línea 130
- `mat3 inverseMatrix(mat3 m)` — línea 190
- `vec3 toClipSpace3(vec3 viewSpacePosition)` — línea 221
- `float ld(float dist)` — línea 245
- `void main()` — línea 271

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.
