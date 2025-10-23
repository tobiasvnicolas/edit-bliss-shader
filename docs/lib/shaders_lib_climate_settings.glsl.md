# shaders\lib\climate_settings.glsl

**Ruta original:** `shaders\lib\climate_settings.glsl`

## Includes

(ninguno detectado)

## Uniforms / Variables detectadas

- `uniform int worldDay;`
- `uniform float noPuddleAreas;`
- `uniform float nightVision;`
- `uniform float isJungles;`
- `uniform float isSwamps;`
- `uniform float isDarkForests;`
- `uniform float sandStorm;`
- `uniform float snowStorm;`

## Defines / Preprocesador

- `#ifdef Seasons`
- `#ifdef SEASONS_VSH`
- `#ifdef DH_SEASONS`
- `#else`
- `#endif`
- `#endif`
- `#endif`
- `#ifdef PER_BIOME_ENVIRONMENT`
- `#endif`
- `#ifdef TIMEOFDAYFOG`
- `#ifdef Daily_Weather`
- `#endif`
- `#ifdef PER_BIOME_ENVIRONMENT`
- `#endif`
- `#endif`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

- `vec3 getSeasonColor( int worldDay )` — línea 91
- `float BiomeVLFogColors(inout vec3 DirectLightCol, inout vec3 IndirectLightCol)` — línea 175

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.
