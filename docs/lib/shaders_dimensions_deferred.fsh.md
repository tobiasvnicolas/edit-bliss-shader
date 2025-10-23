# shaders\dimensions\deferred.fsh

**Ruta original:** `shaders\dimensions\deferred.fsh`

## Includes

- `/lib/settings.glsl`
- `/lib/util.glsl`
- `/lib/ROBOBO_sky.glsl`
- `/lib/sky_gradient.glsl`
- `/lib/Shadow_Params.glsl`
- `/lib/DistantHorizons_projections.glsl`
- `/lib/lightning_stuff.glsl`
- `/lib/volumetricClouds.glsl`
- `/lib/overworld_fog.glsl`
- `/lib/nether_fog.glsl`
- `/lib/end_fog.glsl`

## Uniforms / Variables detectadas

- `uniform sampler2D noisetex;`
- `uniform float frameTime;`
- `uniform int frameCounter;`
- `uniform float frameTimeCounter;`
- `uniform float rainStrength;`
- `uniform float eyeAltitude;`
- `uniform vec3 sunVec;`
- `uniform vec2 texelSize;`
- `uniform mat4 gbufferProjection;`
- `uniform mat4 gbufferProjectionInverse;`
- `uniform mat4 gbufferPreviousProjection;`
- `uniform mat4 gbufferModelViewInverse;`
- `uniform mat4 gbufferModelView;`
- `uniform mat4 shadowModelView;`
- `uniform mat4 shadowProjection;`
- `uniform float sunElevation;`
- `uniform vec3 sunPosition;`
- `uniform vec3 cameraPosition;`
- `uniform ivec2 eyeBrightnessSmooth;`
- `uniform float caveDetection;`
- `uniform float near;`
- `uniform float dhFarPlane;`
- `uniform float dhNearPlane;`
- `uniform sampler2DShadow shadow;`
- `uniform sampler2D shadowcolor0;`
- `uniform sampler2DShadow shadowtex0;`
- `uniform sampler2DShadow shadowtex1;`
- `uniform sampler2D colortex4;`
- `uniform sampler2D colortex4;`

## Defines / Preprocesador

- `#define ReflectedFog`
- `#define DHVLFOG`
- `#ifdef OVERWORLD_SHADER`
- `#ifdef TRANSLUCENT_COLORED_SHADOWS`
- `#endif`
- `#define TEST`
- `#define TIMEOFDAYFOG`
- `#endif`
- `#ifdef NETHER_SHADER`
- `#endif`
- `#ifdef END_SHADER`
- `#endif`
- `#ifdef OVERWORLD_SHADER`
- `#ifdef Daily_Weather`
- `#endif`
- `#ifdef ambientLight_only`
- `#else`
- `#endif`
- `#ifdef AEROCHROME_MODE`
- `#endif`
- `#ifdef ambientLight_only`
- `#endif`
- `#endif`
- `#if defined NETHER_SHADER || defined END_SHADER`
- `#endif`
- `#ifdef END_SHADER`
- `#endif`

## Constantes detectadas

- `float linearizeDepthFast(const in float depth, const in float near, const in float far) {`
- `// const bool shadowHardwareFiltering = true;`

## Funciones detectadas (heurística)

- `vec3 toShadowSpaceProjected(vec3 p3)` — línea 60
- `float interleaved_gradientNoise()` — línea 67
- `float blueNoise()` — línea 72
- `vec3 toScreenSpace(vec3 p)` — línea 80
- `vec3 DH_toScreenSpace(vec3 p)` — línea 93
- `vec3 DH_toClipSpace3(vec3 viewSpacePosition)` — línea 100
- `float DH_ld(float dist)` — línea 111
- `float DH_inv_ld(float lindepth)` — línea 114
- `float invLinZ(float lindepth)` — línea 121
- `vec2 R2_samples(float n)` — línea 163
- `void main()` — línea 168

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.
