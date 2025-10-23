# shaders\lib\indirect_lighting_effects.glsl

**Ruta original:** `shaders\lib\indirect_lighting_effects.glsl`

## Includes

(ninguno detectado)

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#ifdef DISTANT_HORIZONS`
- `#else`
- `#endif`
- `#ifdef DISTANT_HORIZONS`
- `#else`
- `#endif`
- `#ifdef Ambient_SSS`
- `#endif`
- `#ifdef DISTANT_HORIZONS`
- `#else`
- `#endif`
- `#ifdef Ambient_SSS`
- `#endif`
- `#ifdef UseQuarterResDepth`
- `#else`
- `#endif`
- `#ifdef UseQuarterResDepth`
- `#else`
- `#endif`
- `#ifdef UseQuarterResDepth`
- `#else`
- `#endif`
- `#ifdef HQ_SSGI`
- `#else`
- `#endif`
- `#ifdef SKY_CONTRIBUTION_IN_SSRT`
- `#ifdef OVERWORLD_SHADER`
- `#else`
- `#endif`
- `#else`
- `#ifdef OVERWORLD_SHADER`
- `#endif`
- `#endif`
- `#if indirect_effect == 4`
- `#endif`
- `#ifdef SKY_CONTRIBUTION_IN_SSRT`
- `#else`
- `#endif`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

- `vec2 R2_samples(int n)` — línea 1
- `vec3 cosineHemisphereSample(vec2 Xi)` — línea 6
- `vec3 TangentToWorld(vec3 N, vec3 H, float roughness)` — línea 16
- `vec4 BilateralUpscale_SSAO(sampler2D tex, sampler2D depth, vec2 coord, float referenceDepth)` — línea 43
- `vec3 rayTrace_GI(vec3 dir,vec3 position,float dither, float quality)` — línea 204
- `float convertHandDepth_3(in float depth, bool hand)` — línea 247
- `vec3 RT(vec3 dir, vec3 position, float noise, float stepsizes, bool hand)` — línea 254
- `vec3 RT_alternate(vec3 dir, vec3 position, float noise, float stepsizes, bool hand)` — línea 304

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.
