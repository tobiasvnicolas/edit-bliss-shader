# shaders\dimensions\composite11.fsh

**Ruta original:** `shaders\dimensions\composite11.fsh`

## Includes

- `/lib/settings.glsl`
- `/lib/res_params.glsl`
- `/lib/TAA_jitter.glsl`
- `/lib/color_transforms.glsl`
- `/lib/color_dither.glsl`
- `/lib/biome_specifics.glsl`
- `/lib/bokeh.glsl`

## Uniforms / Variables detectadas

- `uniform sampler2D colortex5;`
- `uniform sampler2D colortex3;`
- `uniform sampler2D colortex7;`
- `uniform sampler2D depthtex0;`
- `uniform sampler2D depthtex1;`
- `uniform sampler2D noisetex;`
- `uniform vec2 texelSize;`
- `uniform ivec2 eyeBrightnessSmooth;`
- `uniform float viewWidth;`
- `uniform float viewHeight;`
- `uniform float frameTimeCounter;`
- `uniform int frameCounter;`
- `uniform int isEyeInWater;`
- `uniform float near;`
- `uniform float aspectRatio;`
- `uniform float far;`
- `uniform float rainStrength;`
- `uniform float screenBrightness;`
- `uniform vec4 Moon_Weather_properties; // R = cloud coverage 		G = fog density`
- `uniform int hideGUI;`
- `uniform int framemod8;`
- `uniform mat4 gbufferModelViewInverse;`
- `uniform mat4 gbufferProjectionInverse;`
- `uniform sampler2D dhDepthTex;`
- `uniform float dhNearPlane;`
- `uniform float dhFarPlane;`

## Defines / Preprocesador

- `#ifdef DISTANT_HORIZONS`
- `#endif`
- `#define linear_to_srgb(x) (pow(x, vec3(1.0/2.2)))`
- `#if DOF_QUALITY >= 0`
- `#if MANUAL_FOCUS == -2`
- `#elif MANUAL_FOCUS == -1`
- `#elif MANUAL_FOCUS > 0`
- `#endif`
- `#if DOF_QUALITY < 5`
- `#ifdef FAR_BLUR_ONLY`
- `#endif`
- `#endif`
- `#endif`
- `#ifdef OLD_BLOOM`
- `#else`
- `#endif`
- `#ifdef AUTO_EXPOSURE`
- `#else`
- `#endif`
- `#ifndef USE_ACES_COLORSPACE_APPROXIMATION`
- `#else`
- `#endif`
- `#if DOF_QUALITY == 5`
- `#if FOCUS_LASER_COLOR == 0 // Red`
- `#elif FOCUS_LASER_COLOR == 1 // Green`
- `#elif FOCUS_LASER_COLOR == 2 // Blue`
- `#elif FOCUS_LASER_COLOR == 3 // Pink`
- `#elif FOCUS_LASER_COLOR == 4 // Yellow`
- `#elif FOCUS_LASER_COLOR == 5 // White`
- `#endif`
- `#ifdef DISTANT_HORIZONS`
- `#else`
- `#endif`
- `#endif`

## Constantes detectadas

- `const bool colortex5MipmapEnabled = true;`
- `float linearizeDepthFast(const in float depth, const in float near, const in float far) {`

## Funciones detectadas (heurística)

- `float cdist(vec2 coord)` — línea 50
- `float blueNoise()` — línea 53
- `float ld(float depth)` — línea 56
- `float bloomWeight()` — línea 81
- `void main()` — línea 97

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.
