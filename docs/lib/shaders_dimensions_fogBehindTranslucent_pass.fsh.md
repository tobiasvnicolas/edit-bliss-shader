# shaders\dimensions\fogBehindTranslucent_pass.fsh

**Ruta original:** `shaders\dimensions\fogBehindTranslucent_pass.fsh`

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
- `/lib/lightning_stuff.glsl`
- `/lib/volumetricClouds.glsl`
- `/lib/overworld_fog.glsl`
- `/lib/nether_fog.glsl`
- `/lib/end_fog.glsl`
- `/lib/diffuse_lighting.glsl`

## Uniforms / Variables detectadas

- `uniform float nightVision;`
- `uniform sampler2D noisetex;`
- `uniform sampler2D depthtex0;`
- `uniform sampler2D depthtex1;`
- `uniform sampler2D dhDepthTex;`
- `uniform sampler2D dhDepthTex1;`
- `uniform sampler2D colortex2;`
- `uniform sampler2D colortex3;`
- `uniform sampler2D colortex6;`
- `uniform sampler2D colortex7;`
- `uniform sampler2D colortex11;`
- `uniform sampler2D colortex14;`
- `uniform vec3 sunVec;`
- `uniform float sunElevation;`
- `uniform float dhFarPlane;`
- `uniform float dhNearPlane;`
- `uniform float near;`
- `uniform int frameCounter;`
- `uniform float frameTimeCounter;`
- `uniform vec2 texelSize;`
- `uniform int isEyeInWater;`
- `uniform float rainStrength;`
- `uniform ivec2 eyeBrightnessSmooth;`
- `uniform float eyeAltitude;`
- `uniform float caveDetection;`
- `uniform sampler2DShadow shadow;`
- `uniform sampler2D shadowcolor0;`
- `uniform sampler2DShadow shadowtex0;`
- `uniform sampler2DShadow shadowtex1;`
- `uniform sampler2D colortex4;`
- `uniform sampler2D colortex4;`

## Defines / Preprocesador

- `#ifndef OVERWORLD_SHADER`
- `#endif`
- `#ifdef DISTANT_HORIZONS`
- `#endif`
- `#define DHVLFOG`
- `#define diagonal3(m) vec3((m)[0].x, (m)[1].y, m[2].z)`
- `#define  projMAD(m, v) (diagonal3(m) * (v) + (m)[3].xyz)`
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
- `#endif`
- `#ifdef DISTANT_HORIZONS`
- `#else`
- `#endif`
- `#ifdef DISTANT_HORIZONS`
- `#else`
- `#endif`
- `#ifdef BIOME_TINT_WATER`
- `#endif`
- `#ifdef OVERWORLD_SHADER`
- `#ifdef DISTANT_HORIZONS`
- `#endif`
- `#else`
- `#endif`
- `#ifdef OVERWORLD_SHADER`
- `#if defined CLOUDS_INTERSECT_TERRAIN`
- `#endif`
- `#if defined CLOUDS_INTERSECT_TERRAIN`
- `#endif`
- `#endif`

## Constantes detectadas

- `float linearizeDepthFast(const in float depth, const in float near, const in float far) {`
- `const bool shadowHardwareFiltering = true;`
- `const vec2 constant1 = 65535. / vec2( 256., 65536.);`
- `const float constant2 = 256. / 255.;`

## Funciones detectadas (heurística)

- `float DH_ld(float dist)` — línea 67
- `float DH_inv_ld(float lindepth)` — línea 70
- `float interleaved_gradientNoise()` — línea 115
- `float blueNoise()` — línea 118
- `float R2_dither()` — línea 121
- `void waterVolumetrics_notoverworld(inout vec3 inColor, vec3 rayStart, vec3 rayEnd, float estEndDepth, float estSunDepth, float rayLength, float dither, vec3 waterCoefs, vec3 scatterCoef, vec3 ambient)` — línea 131
- `vec4 blueNoise(vec2 coord)` — línea 175
- `vec2 R2_samples(int n)` — línea 178
- `float fogPhase2(float lightPoint)` — línea 183
- `vec4 waterVolumetrics_test( vec3 rayStart, vec3 rayEnd, float estEndDepth, float estSunDepth, float rayLength, float dither, vec3 waterCoefs, vec3 scatterCoef, vec3 ambient, vec3 lightSource, float VdotL)` — línea 193
- `vec2 decodeVec2(float a)` — línea 276
- `void main()` — línea 289

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.
