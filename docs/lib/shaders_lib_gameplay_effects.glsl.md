# shaders\lib\gameplay_effects.glsl

**Ruta original:** `shaders\lib\gameplay_effects.glsl`

## Includes

(ninguno detectado)

## Uniforms / Variables detectadas

- `uniform float currentPlayerHealth;`
- `uniform float maxPlayerHealth;`
- `uniform float oneHeart;`
- `uniform float threeHeart;`
- `uniform float CriticalDamageTaken;`
- `uniform float MinorDamageTaken;`
- `uniform bool isDead;`
- `uniform float exitWater;`
- `uniform int isEyeInWater;`

## Defines / Preprocesador

- `#ifdef IS_IRIS`
- `#else`
- `#endif`
- `#ifdef IS_IRIS`
- `#else`
- `#endif`
- `#if defined LOW_HEALTH_EFFECT || defined DAMAGE_TAKEN_EFFECT`
- `#endif`
- `#if defined WATER_ON_CAMERA_EFFECT`
- `#endif`
- `#ifdef WATER_ON_CAMERA_EFFECT`
- `#endif`
- `#if defined LOW_HEALTH_EFFECT || defined DAMAGE_TAKEN_EFFECT`
- `#ifdef LOW_HEALTH_EFFECT`
- `#endif`
- `#ifdef DAMAGE_TAKEN_EFFECT`
- `#endif`
- `#endif`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

- `void applyGameplayEffects(inout vec3 color, in vec2 texcoord, float noise)` — línea 36

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.
