# shaders\dimensions\DH_translucent.fsh

**Ruta original:** `shaders\dimensions\DH_translucent.fsh`

## Includes

- `/lib/settings.glsl`
- `/lib/util.glsl`
- `/lib/res_params.glsl`
- `/lib/color_transforms.glsl`
- `/lib/projections.glsl`
- `/lib/sky_gradient.glsl`
- `/lib/waterBump.glsl`
- `/lib/Shadow_Params.glsl`
- `/lib/DistantHorizons_projections.glsl`
- `/lib/volumetricClouds.glsl`
- `/lib/TAA_jitter.glsl`

## Uniforms / Variables detectadas

- `uniform vec2 texelSize;`
- `uniform float frameTimeCounter;`
- `uniform sampler2D noisetex;`
- `uniform sampler2DShadow shadow;`
- `uniform sampler2D dhDepthTex;`
- `uniform sampler2D dhDepthTex1;`
- `uniform sampler2D depthtex0;`
- `uniform sampler2D depthtex1;`
- `uniform sampler2D colortex12;`
- `uniform sampler2D colortex4;`
- `uniform sampler2D colortex5;`
- `uniform float dhFarPlane;`
- `uniform float dhNearPlane;`
- `uniform vec3 previousCameraPosition;`
- `uniform mat4 gbufferPreviousModelView;`
- `uniform int frameCounter;`
- `uniform int isEyeInWater;`
- `uniform float rainStrength;`
- `uniform int framemod8;`

## Defines / Preprocesador

- `#ifdef DISTANT_HORIZONS`
- `#endif`
- `#ifdef OVERWORLD_SHADER`
- `#define CLOUDSHADOWSONLY`
- `#endif`
- `#ifdef DH_OVERDRAW_PREVENTION`
- `#if OVERDRAW_MAX_DISTANCE == 0`
- `#else`
- `#endif`
- `#endif`
- `#ifdef WhiteWorld`
- `#endif`
- `#ifndef WhiteWorld`
- `#ifndef Vanilla_like_water`
- `#endif`
- `#endif`
- `#ifdef OVERWORLD_SHADER`
- `#ifdef DISTANT_HORIZONS_SHADOWMAP`
- `#ifdef DISTORT_SHADOWMAP`
- `#else`
- `#endif`
- `#endif`
- `#ifdef CLOUDS_SHADOWS`
- `#endif`
- `#endif`
- `#ifndef OVERWORLD_SHADER`
- `#endif`
- `#if defined BorderFog && defined OVERWORLD_SHADER`
- `#ifdef DISTANT_HORIZONS`
- `#else`
- `#endif`
- `#ifdef SKY_GROUND`
- `#else`
- `#endif`
- `#endif`
- `#ifdef WATER_REFLECTIONS`
- `#ifdef SNELLS_WINDOW`
- `#endif`
- `#if defined SCREENSPACE_REFLECTIONS && defined DH_SCREENSPACE_REFLECTIONS`
- `#endif`
- `#ifdef WATER_BACKGROUND_SPECULAR`
- `#endif`
- `#ifdef WATER_SUN_SPECULAR`
- `#endif`
- `#if defined BorderFog && defined OVERWORLD_SHADER`
- `#endif`
- `#else`
- `#endif`
- `#if defined BorderFog && defined OVERWORLD_SHADER`
- `#endif`
- `#ifdef DH_OVERDRAW_PREVENTION`
- `#endif`
- `#if DEBUG_VIEW == debug_DH_WATER_BLENDING`
- `#endif`

## Constantes detectadas

- `const bool shadowHardwareFiltering = true;`
- `float linearizeDepthFast(const in float depth, const in float dhNearPlane, const in float far) {`
- `// float linearizeDepthFast(const in float depth, const in float near, const in float far) {`
- `const vec2 constant1 = vec2( 1., 256.) / 65535.;`

## Funciones detectadas (heurística)

- `vec3 DH_toScreenSpace(vec3 p)` — línea 78
- `vec3 DH_toClipSpace3(vec3 viewSpacePosition)` — línea 85
- `float invLinZ(float lindepth)` — línea 89
- `float ld(float dist)` — línea 92
- `float DH_ld(float dist)` — línea 95
- `float DH_inv_ld(float lindepth)` — línea 98
- `float GGX(vec3 n, vec3 v, vec3 l, float r, float f0)` — línea 117
- `vec3 doScreenSpaceReflectiom(vec3 dir, vec3 position, float dither, float quality)` — línea 197
- `float R2_dither()` — línea 237
- `float interleaved_gradientNoise()` — línea 242
- `vec3 viewToWorld(vec3 viewPos)` — línea 247
- `vec3 worldToView(vec3 worldPos)` — línea 254
- `vec4 encode(vec3 n, vec2 lightmaps)` — línea 259
- `float encodeVec2(vec2 a)` — línea 268
- `float encodeVec2(float x,float y)` — línea 273
- `vec3 applyBump(mat3 tbnMatrix, vec3 bump, float puddle_values)` — línea 276
- `void main()` — línea 285

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.
