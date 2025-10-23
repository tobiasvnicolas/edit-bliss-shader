# shaders\dimensions\composite.fsh

**Ruta original:** `shaders\dimensions\composite.fsh`

## Includes

- `/lib/settings.glsl`
- `/lib/res_params.glsl`
- `/lib/Shadow_Params.glsl`
- `/lib/DistantHorizons_projections.glsl`
- `/lib/indirect_lighting_effects.glsl`

## Uniforms / Variables detectadas

- `uniform sampler2D depthtex0;`
- `uniform sampler2D depthtex1;`
- `uniform sampler2D dhDepthTex;`
- `uniform sampler2D dhDepthTex1;`
- `uniform sampler2D colortex1;`
- `uniform sampler2D colortex3; // Noise`
- `uniform sampler2D colortex6; // Noise`
- `uniform sampler2D colortex8; // Noise`
- `uniform sampler2D colortex14; // Noise`
- `uniform sampler2D colortex12; // Noise`
- `uniform sampler2D colortex15; // Noise`
- `uniform sampler2D shadow;`
- `uniform sampler2D shadowcolor0;`
- `uniform sampler2D shadowtex0;`
- `uniform sampler2D shadowtex1;`
- `uniform sampler2D noisetex;`
- `uniform vec3 sunVec;`
- `uniform vec2 texelSize;`
- `uniform float frameTimeCounter;`
- `uniform float rainStrength;`
- `uniform int frameCounter;`
- `uniform mat4 gbufferModelViewInverse;`
- `uniform mat4 gbufferModelView;`
- `uniform vec3 cameraPosition;`
- `uniform mat4 gbufferProjection;`
- `uniform mat4 gbufferProjectionInverse;`
- `uniform vec3 previousCameraPosition;`
- `uniform mat4 gbufferPreviousProjection;`
- `uniform mat4 gbufferPreviousModelView;`
- `uniform mat4 shadowModelView;`
- `uniform mat4 shadowProjection;`
- `uniform float viewWidth;`
- `uniform float aspectRatio;`
- `uniform float viewHeight;`
- `uniform float near;`
- `uniform float dhFarPlane;`
- `uniform float dhNearPlane;`

## Defines / Preprocesador

- `#ifndef DH_AMBIENT_OCCLUSION`
- `#endif`
- `#ifdef DISTANT_HORIZONS`
- `#endif`
- `#ifdef TRANSLUCENT_COLORED_SHADOWS`
- `#endif`
- `#define ffstep(x,y) clamp((y - x) * 1e35,0.0,1.0)`
- `#define diagonal3(m) vec3((m)[0].x, (m)[1].y, m[2].z)`
- `#define  projMAD(m, v) (diagonal3(m) * (v) + (m)[3].xyz)`
- `#ifdef TAA`
- `#else`
- `#endif`
- `#ifdef Ambient_SSS`
- `#endif`
- `#ifdef DISTANT_HORIZONS`
- `#else`
- `#endif`
- `#ifdef Ambient_SSS`
- `#endif`
- `#ifdef TAA_UPSCALING`
- `#endif`
- `#ifdef DISTANT_HORIZONS`
- `#else`
- `#endif`
- `#if defined DENOISE_SSS_AND_SSAO && indirect_effect == 1`
- `#ifdef DISTANT_HORIZONS`
- `#endif`
- `#else`
- `#endif`
- `#ifdef OVERWORLD_SHADER`
- `#ifdef BASIC_SHADOW_FILTER`
- `#endif`
- `#ifdef Variable_Penumbra_Shadows`
- `#ifdef DISTORT_SHADOWMAP`
- `#else`
- `#endif`
- `#ifdef DISTANT_HORIZONS_SHADOWMAP`
- `#else`
- `#endif`
- `#endif`
- `#endif`

## Constantes detectadas

- `const vec2 constant1 = 65535. / vec2( 256., 65536.);`
- `const float constant2 = 256. / 255.;`
- `const float PI = 3.141592653589793238462643383279502884197169;`
- `float linearizeDepthFast(const in float depth, const in float near, const in float far) {`
- `const vec2 constant1 = vec2( 1., 256.) / 65535.;`
- `const float threshMul = max(2048.0/shadowMapResolution*shadowDistance/128.0,0.95);`

## Funciones detectadas (heurística)

- `vec3 toScreenSpace(vec3 p)` — línea 72
- `vec3 worldToView(vec3 worldPos)` — línea 80
- `vec2 tapLocation2(int sampleNumber, int nb, float jitter)` — línea 97
- `vec3 decode(vec2 encn)` — línea 109
- `vec2 decodeVec2(float a)` — línea 117
- `float interleaved_gradientNoise_temporal()` — línea 125
- `float interleaved_gradientNoise()` — línea 128
- `float R2_dither()` — línea 134
- `float blueNoise()` — línea 143
- `vec4 blueNoise(vec2 coord)` — línea 146
- `vec2 R2_samples(int n)` — línea 149
- `vec3 viewToWorld(vec3 viewPos)` — línea 161
- `float DH_ld(float dist)` — línea 215
- `float DH_inv_ld(float lindepth)` — línea 218
- `void convertHandDepth(inout float depth)` — línea 226
- `float convertHandDepth_2(in float depth, bool hand)` — línea 232
- `vec4 encode(vec3 n, vec2 lightmaps)` — línea 305
- `float encodeVec2(vec2 a)` — línea 314
- `float encodeVec2(float x,float y)` — línea 319
- `vec3 toClipSpace3Prev(vec3 viewSpacePosition)` — línea 325
- `float ld(float dist)` — línea 361
- `float sampleDepth(sampler2D depthTex, vec2 texcoord, bool hand)` — línea 364
- `void main()` — línea 373

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.
