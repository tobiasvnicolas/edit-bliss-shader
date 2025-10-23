# shaders\lib\overworld_fog.glsl

**Ruta original:** `shaders\lib\overworld_fog.glsl`

## Includes

(ninguno detectado)

## Uniforms / Variables detectadas

- `uniform float noPuddleAreas;`
- `uniform ivec2 eyeBrightness;`

## Defines / Preprocesador

- `#ifndef TOGGLE_VL_FOG`
- `#endif`
- `#ifdef DISTANT_HORIZONS`
- `#else`
- `#endif`
- `#ifdef ambientLight_only`
- `#endif`
- `#ifdef PER_BIOME_ENVIRONMENT`
- `#endif`
- `#ifdef DISTANT_HORIZONS`
- `#else`
- `#endif`
- `#ifdef RAYMARCH_CLOUDS_WITH_FOG`
- `#ifdef ambientLight_only`
- `#endif`
- `#endif`
- `#if defined LPV_VL_FOG_ILLUMINATION && defined EXCLUDE_WRITE_TO_LUT`
- `#endif`
- `#ifdef DISTORT_SHADOWMAP`
- `#else`
- `#endif`
- `#ifdef TRANSLUCENT_COLORED_SHADOWS`
- `#else`
- `#endif`
- `#ifdef RAYMARCH_CLOUDS_WITH_FOG`
- `#endif`
- `#ifdef VL_CLOUDS_SHADOWS`
- `#endif`
- `#ifdef PER_BIOME_ENVIRONMENT`
- `#else`
- `#endif`
- `#ifdef PER_BIOME_ENVIRONMENT`
- `#else`
- `#endif`
- `#if defined CloudLayer0 && defined VOLUMETRIC_CLOUDS`
- `#else`
- `#endif`
- `#if defined LPV_VL_FOG_ILLUMINATION && defined EXCLUDE_WRITE_TO_LUT`
- `#endif`
- `#ifdef RAYMARCH_CLOUDS_WITH_FOG`
- `#if defined CloudLayer1 && defined CloudLayer0`
- `#else`
- `#endif`
- `#if defined CloudLayer1 && defined CloudLayer0`
- `#endif`
- `#ifdef CloudLayer2`
- `#endif`
- `#else`
- `#endif`

## Constantes detectadas

- `const vec2 mul_add = vec2(0.1, 0.28) / acos(-1.0);`

## Funciones detectadas (heurística)

- `float densityAtPosFog(in vec3 pos)` — línea 3
- `float cloudVol(in vec3 pos, float maxDistance )` — línea 16
- `float phaseRayleigh(float cosTheta)` — línea 50
- `float fogPhase(float lightPoint)` — línea 54

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.
