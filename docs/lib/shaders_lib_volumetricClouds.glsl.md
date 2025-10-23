# shaders\lib\volumetricClouds.glsl

**Ruta original:** `shaders\lib\volumetricClouds.glsl`

## Includes

- `/lib/climate_settings.glsl`

## Uniforms / Variables detectadas

- `uniform int worldTime;`
- `uniform int worldDay;`
- `uniform sampler2D colortex4; //Skybox`

## Defines / Preprocesador

- `#ifdef HQ_CLOUDS`
- `#else`
- `#endif`
- `#define WEATHERCLOUDS`
- `#if defined Daily_Weather`
- `#else`
- `#endif`
- `#ifdef CloudLayer0`
- `#endif`
- `#ifdef CloudLayer1`
- `#endif`
- `#ifndef CLOUDSHADOWSONLY`
- `#ifdef CLOUDS_INTERSECT_TERRAIN`
- `#if defined DISTANT_HORIZONS`
- `#else`
- `#endif`
- `#endif`
- `#ifdef CLOUDS_INTERSECT_TERRAIN`
- `#endif`
- `#if defined CloudLayer1 && defined CloudLayer0`
- `#else`
- `#endif`
- `#ifdef CLOUDS_INTERSECT_TERRAIN`
- `#endif`
- `#if defined CloudLayer1 && defined CloudLayer0`
- `#endif`
- `#ifdef CloudLayer2`
- `#endif`
- `#ifndef VOLUMETRIC_CLOUDS`
- `#endif`
- `#ifdef EXCLUDE_WRITE_TO_LUT`
- `#endif`
- `#ifdef SKY_GROUND`
- `#else`
- `#endif`
- `#ifdef CloudLayer0`
- `#endif`
- `#ifdef CloudLayer1`
- `#endif`
- `#ifdef CloudLayer2`
- `#endif`
- `#ifdef CloudLayer0`
- `#else`
- `#endif`
- `#ifdef CloudLayer1`
- `#endif`
- `#ifdef CloudLayer2`
- `#endif`
- `#if !defined CloudLayer1 && defined CloudLayer2`
- `#endif`
- `#if defined CloudLayer1 && defined CloudLayer2`
- `#endif`
- `#if defined CloudLayer0 && defined CloudLayer1`
- `#endif`
- `#if defined CloudLayer0 && !defined CloudLayer1`
- `#endif`
- `#if !defined CloudLayer0 && defined CloudLayer1`
- `#endif`
- `#ifdef CloudLayer2`
- `#endif`
- `#ifndef SKY_GROUND`
- `#else`
- `#endif`
- `#endif`
- `#ifdef CLOUDS_SHADOWS`
- `#ifdef CloudLayer0`
- `#endif`
- `#ifdef CloudLayer1`
- `#endif`
- `#ifdef CloudLayer2`
- `#endif`
- `#else`
- `#endif`
- `#ifdef CLOUDS_SHADOWS`
- `#ifdef CloudLayer0`
- `#endif`
- `#ifdef CloudLayer1`
- `#endif`
- `#ifdef CloudLayer2`
- `#endif`
- `#else`
- `#endif`

## Constantes detectadas

- `const int cloudLoD = cloud_LevelOfDetail;`
- `const int cloudShadowLoD = cloud_ShadowLevelOfDetail;`
- `const int cloudLoD = cloud_LevelOfDetailLQ;`
- `const int cloudShadowLoD = cloud_ShadowLevelOfDetailLQ;`

## Funciones detectadas (heurística)

- `float densityAtPos(in vec3 pos)` — línea 54
- `float GetAltostratusDensity(vec3 pos)` — línea 69
- `float cloudCov(int layer, in vec3 pos, vec3 samplePos, float minHeight, float maxHeight)` — línea 81
- `float cloudVol(int layer, in vec3 pos, in vec3 samplePos, in float cov, in int LoD, float minHeight, float maxHeight)` — línea 183
- `float GetCumulusDensity(int layer, in vec3 pos, in int LoD, float minHeight, float maxHeight)` — línea 212
- `float phaseg(float x, float g)` — línea 230
- `float invLinZ_cloud(float lindepth)` — línea 417
- `float GetCloudShadow(vec3 feetPlayerPos)` — línea 610
- `float GetCloudShadow_VLFOG(vec3 WorldPos, vec3 WorldSpace_sunVec)` — línea 642

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.
