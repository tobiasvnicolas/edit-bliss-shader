# shaders\dimensions\composite2.fsh

**Ruta original:** `shaders\dimensions\composite2.fsh`

## Includes

- `/lib/settings.glsl`
- `/lib/color_transforms.glsl`
- `/lib/color_dither.glsl`
- `/lib/projections.glsl`
- `/lib/res_params.glsl`
- `/lib/sky_gradient.glsl`
- `/lib/Shadow_Params.glsl`
- `/lib/waterBump.glsl`
- `/lib/DistantHorizons_projections.glsl`
- `/lib/hsv.glsl`
- `/lib/lpv_common.glsl`
- `/lib/lpv_render.glsl`
- `/lib/lightning_stuff.glsl`
- `/lib/volumetricClouds.glsl`
- `/lib/overworld_fog.glsl`
- `/lib/nether_fog.glsl`
- `/lib/end_fog.glsl`
- `/lib/TAA_jitter.glsl`

## Uniforms / Variables detectadas

- `uniform sampler2D noisetex;`
- `uniform sampler2D depthtex0;`
- `uniform sampler2D depthtex1;`
- `uniform sampler2D dhDepthTex;`
- `uniform sampler2D dhDepthTex1;`
- `uniform sampler2D colortex0;`
- `uniform sampler2D colortex2;`
- `uniform sampler2D colortex3;`
- `uniform sampler2D colortex6;`
- `uniform sampler2D colortex7;`
- `uniform vec3 sunVec;`
- `uniform float sunElevation;`
- `uniform float near;`
- `uniform float dhFarPlane;`
- `uniform float dhNearPlane;`
- `uniform int frameCounter;`
- `uniform float frameTimeCounter;`
- `uniform vec2 texelSize;`
- `uniform int isEyeInWater;`
- `uniform float rainStrength;`
- `uniform ivec2 eyeBrightnessSmooth;`
- `uniform float eyeAltitude;`
- `uniform float caveDetection;`
- `uniform usampler1D texBlockData;`
- `uniform sampler3D texLpv1;`
- `uniform sampler3D texLpv2;`
- `uniform sampler2DShadow shadow;`
- `uniform sampler2D shadowcolor0;`
- `uniform sampler2DShadow shadowtex0;`
- `uniform sampler2DShadow shadowtex1;`
- `uniform sampler2D colortex4;`
- `uniform sampler2D colortex4;`

## Defines / Preprocesador

- `#define EXCLUDE_WRITE_TO_LUT`
- `#ifdef DISTANT_HORIZONS`
- `#endif`
- `#define DHVLFOG`
- `#define diagonal3(m) vec3((m)[0].x, (m)[1].y, m[2].z)`
- `#define  projMAD(m, v) (diagonal3(m) * (v) + (m)[3].xyz)`
- `#define IS_LPV_ENABLED`
- `#if defined LPV_VL_FOG_ILLUMINATION && defined IS_LPV_ENABLED`
- `#ifdef IS_LPV_ENABLED`
- `#endif`
- `#ifdef IS_LPV_ENABLED`
- `#endif`
- `#ifdef IS_LPV_ENABLED`
- `#endif`
- `#endif`
- `#ifdef OVERWORLD_SHADER`
- `#ifdef TRANSLUCENT_COLORED_SHADOWS`
- `#endif`
- `#define TIMEOFDAYFOG`
- `#define CLOUDS_INTERSECT_TERRAIN`
- `#endif`
- `#ifdef NETHER_SHADER`
- `#endif`
- `#ifdef END_SHADER`
- `#endif`
- `#define fsign(a)  (clamp((a)*1e35,0.,1.)*2.-1.)`
- `#ifdef TAA`
- `#else`
- `#endif`
- `#ifdef OVERWORLD_SHADER`
- `#endif`
- `#ifdef OVERWORLD_SHADER`
- `#else`
- `#endif`
- `#ifdef OVERWORLD_SHADER`
- `#ifdef DISTORT_SHADOWMAP`
- `#else`
- `#endif`
- `#ifdef TRANSLUCENT_COLORED_SHADOWS`
- `#else`
- `#endif`
- `#ifdef VL_CLOUDS_SHADOWS`
- `#endif`
- `#else`
- `#endif`
- `#if defined LPV_VL_FOG_ILLUMINATION && defined EXCLUDE_WRITE_TO_LUT`
- `#endif`
- `#if defined OVERWORLD_SHADER && defined CLOUDS_INTERSECT_TERRAIN`
- `#else`
- `#endif`
- `#ifdef DISTANT_HORIZONS`
- `#else`
- `#endif`
- `#if defined OVERWORLD_SHADER && defined CLOUDS_INTERSECT_TERRAIN`
- `#if defined CAVE_FOG && defined CAVE_FOG_DARKEN_SKY`
- `#endif`
- `#endif`
- `#ifdef OVERWORLD_SHADER`
- `#endif`
- `#if defined NETHER_SHADER || defined END_SHADER`
- `#endif`
- `#if defined OVERWORLD_SHADER && defined CLOUDS_INTERSECT_TERRAIN`
- `#endif`
- `#if defined OVERWORLD_SHADER && defined CLOUDS_INTERSECT_TERRAIN`
- `#endif`

## Constantes detectadas

- `float linearizeDepthFast(const in float depth, const in float near, const in float far) {`
- `const bool shadowHardwareFiltering = true;`
- `const vec2 constant1 = vec2( 1., 256.) / 65535.;`

## Funciones detectadas (heurística)

- `float DH_ld(float dist)` — línea 63
- `float DH_inv_ld(float lindepth)` — línea 66
- `vec3 LPV_FOG_ILLUMINATION(in vec3 playerPos, float dd, float dL)` — línea 103
- `float invLinZ(float lindepth)` — línea 130
- `float interleaved_gradientNoise_temporal()` — línea 161
- `float interleaved_gradientNoise()` — línea 164
- `float blueNoise()` — línea 170
- `float R2_dither()` — línea 174
- `void waterVolumetrics_notoverworld(inout vec3 inColor, vec3 rayStart, vec3 rayEnd, float estEndDepth, float estSunDepth, float rayLength, float dither, vec3 waterCoefs, vec3 scatterCoef, vec3 ambient)` — línea 184
- `void waterVolumetrics(inout vec3 inColor, vec3 rayStart, vec3 rayEnd, float estEyeDepth, float estSunDepth, float rayLength, float dither, vec3 waterCoefs, vec3 scatterCoef, vec3 ambient, vec3 lightSource, float VdotL)` — línea 229
- `vec4 blueNoise(vec2 coord)` — línea 328
- `vec2 R2_samples(int n)` — línea 331
- `float fogPhase2(float lightPoint)` — línea 336
- `float encodeVec2(vec2 a)` — línea 346
- `void main()` — línea 364

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.
