# shaders\dimensions\composite3.fsh

**Ruta original:** `shaders\dimensions\composite3.fsh`

## Includes

- `/lib/settings.glsl`
- `/lib/waterBump.glsl`
- `/lib/res_params.glsl`
- `/lib/sky_gradient.glsl`
- `/lib/lightning_stuff.glsl`
- `/lib/climate_settings.glsl`
- `/lib/volumetricClouds.glsl`
- `/lib/DistantHorizons_projections.glsl`

## Uniforms / Variables detectadas

- `uniform sampler2D noisetex;`
- `uniform sampler2D depthtex0;`
- `uniform sampler2D depthtex1;`
- `uniform sampler2D dhDepthTex;`
- `uniform sampler2D dhDepthTex1;`
- `uniform sampler2D colortex0;`
- `uniform sampler2D colortex1;`
- `uniform sampler2D colortex2;`
- `uniform sampler2D colortex3;`
- `uniform sampler2D colortex5;`
- `uniform sampler2D colortex6;`
- `uniform sampler2D colortex7;`
- `uniform sampler2D colortex8;`
- `uniform sampler2D colortex9;`
- `uniform sampler2D colortex10;`
- `uniform sampler2D colortex11;`
- `uniform sampler2D colortex12;`
- `uniform sampler2D colortex13;`
- `uniform sampler2D colortex14;`
- `uniform sampler2D colortex15;`
- `uniform vec2 texelSize;`
- `uniform sampler2D colortex4;`
- `uniform vec3 sunVec;`
- `uniform float frameTimeCounter;`
- `uniform int frameCounter;`
- `uniform float far;`
- `uniform float near;`
- `uniform float farPlane;`
- `uniform float dhNearPlane;`
- `uniform float dhFarPlane;`
- `uniform mat4 gbufferModelViewInverse;`
- `uniform mat4 gbufferModelView;`
- `uniform mat4 gbufferPreviousModelView;`
- `uniform mat4 gbufferProjectionInverse;`
- `uniform mat4 gbufferProjection;`
- `uniform mat4 gbufferPreviousProjection;`
- `uniform vec3 cameraPosition;`
- `uniform vec3 previousCameraPosition;`
- `uniform int isEyeInWater;`
- `uniform ivec2 eyeBrightnessSmooth;`
- `uniform ivec2 eyeBrightness;`
- `uniform float rainStrength;`
- `uniform float blindness;`
- `uniform float darknessFactor;`
- `uniform float darknessLightFactor;`
- `uniform float caveDetection;`
- `uniform int dhRenderDistance;`
- `uniform float eyeAltitude;`

## Defines / Preprocesador

- `#ifdef OVERWORLD_SHADER`
- `#endif`
- `#ifdef DISTANT_HORIZONS`
- `#endif`
- `#ifdef OVERWORLD_SHADER`
- `#define CLOUDS_INTERSECT_TERRAIN`
- `#endif`
- `#define diagonal3(m) vec3((m)[0].x, (m)[1].y, m[2].z)`
- `#define  projMAD(m, v) (diagonal3(m) * (v) + (m)[3].xyz)`
- `#ifdef DISTANT_HORIZONS`
- `#else`
- `#endif`
- `#ifdef DISTANT_HORIZONS`
- `#else`
- `#endif`
- `#if defined OVERWORLD_SHADER && defined CLOUDS_INTERSECT_TERRAIN`
- `#endif`
- `#if defined OVERWORLD_SHADER && defined CLOUDS_INTERSECT_TERRAIN`
- `#endif`
- `#ifdef DISTANT_HORIZONS`
- `#else`
- `#endif`
- `#if defined OVERWORLD_SHADER && defined CLOUDS_INTERSECT_TERRAIN`
- `#else`
- `#endif`
- `#ifdef DISTANT_HORIZONS`
- `#else`
- `#endif`
- `#ifdef Refraction`
- `#endif`
- `#ifdef Glass_Tint`
- `#endif`
- `#ifdef BorderFog`
- `#endif`
- `#if defined OVERWORLD_SHADER && defined CAVE_FOG`
- `#ifdef PER_BIOME_ENVIRONMENT`
- `#endif`
- `#ifdef CAVE_FOG_DARKEN_SKY`
- `#else`
- `#endif`
- `#endif`
- `#ifdef END_SHADER`
- `#endif`
- `#ifdef OVERWORLD_SHADER`
- `#else`
- `#endif`
- `#ifdef OVERWORLD_SHADER`
- `#endif`
- `#ifdef display_LUT`
- `#endif`

## Constantes detectadas

- `float linearizeDepthFast(const in float depth, const in float near, const in float far) {`
- `const vec2 constant1 = 65535. / vec2( 256., 65536.);`
- `const float constant2 = 256. / 255.;`

## Funciones detectadas (heurística)

- `float ld(float depth)` — línea 85
- `float luma(vec3 color)` — línea 88
- `vec3 toLinear(vec3 sRGB)` — línea 91
- `vec3 toScreenSpace(vec3 p)` — línea 94
- `float blueNoise()` — línea 103
- `vec4 blueNoise(vec2 coord)` — línea 106
- `vec3 normVec(vec3 vec)` — línea 109
- `float interleaved_gradientNoise()` — línea 113
- `float DH_ld(float dist)` — línea 119
- `float DH_inv_ld(float lindepth)` — línea 122
- `vec2 decodeVec2(float a)` — línea 128
- `vec4 BilateralUpscale(sampler2D tex, sampler2D tex2, sampler2D depth, vec2 coord, float referenceDepth, inout float CLOUDALPHA)` — línea 133
- `vec3 decode(vec2 encn)` — línea 184
- `vec3 worldToView(vec3 worldPos)` — línea 194
- `vec3 viewToWorld(vec3 viewPosition)` — línea 199
- `void applyContrast(inout vec3 color, float contrast)` — línea 208
- `void ApplyDistortion(inout vec2 Texcoord, vec2 TangentNormals, float lineardistance, bool isTranslucentEntity)` — línea 212
- `void main()` — línea 231

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.
