# shaders\lib\end_fog.glsl

**Ruta original:** `shaders\lib\end_fog.glsl`

## Includes

(ninguno detectado)

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#ifdef THE_ORB`
- `#else`
- `#endif`
- `#ifdef THE_ORB`
- `#else`
- `#endif`
- `#ifndef TOGGLE_VL_FOG`
- `#endif`
- `#if defined LPV_VL_FOG_ILLUMINATION && defined EXCLUDE_WRITE_TO_LUT`
- `#endif`
- `#ifdef END_LIGHTNING`
- `#else`
- `#endif`
- `#ifdef THE_ORB`
- `#endif`
- `#if defined LPV_VL_FOG_ILLUMINATION && defined EXCLUDE_WRITE_TO_LUT`
- `#endif`

## Constantes detectadas

- `const uint k = 1103515245u;`

## Funciones detectadas (heurística)

- `vec3 LightSourcePosition(vec3 worldPos, vec3 cameraPos, float vortexBounds)` — línea 69
- `float densityAtPosFog(in vec3 pos)` — línea 95
- `void SwirlAroundOrigin(inout vec3 alteredOrigin, vec3 origin)` — línea 110
- `void VolumeBounds(inout float Volume, vec3 Origin)` — línea 122
- `float fogShape(in vec3 pos)` — línea 144
- `float endFogPhase(vec3 LightPos)` — línea 169
- `vec3 LightSourceColors(float vortexBounds, float lightningflash)` — línea 179
- `vec3 LightSourceLighting(vec3 startPos, vec3 lightPos, float noise, float density, vec3 lightColor, float vortexBound)` — línea 194
- `float phaseEND(float x, float g)` — línea 211
- `float GetCloudShadow(vec3 WorldPos, vec3 LightPos)` — línea 345

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.
