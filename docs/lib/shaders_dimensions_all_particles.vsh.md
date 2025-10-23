# shaders\dimensions\all_particles.vsh

**Ruta original:** `shaders\dimensions\all_particles.vsh`

## Includes

- `/lib/settings.glsl`
- `/lib/res_params.glsl`
- `/lib/items.glsl`
- `/lib/TAA_jitter.glsl`

## Uniforms / Variables detectadas

- `uniform sampler2D colortex4;`
- `uniform vec3 sunPosition;`
- `uniform float sunElevation;`
- `uniform vec2 texelSize;`
- `uniform int framemod8;`
- `uniform float frameTimeCounter;`
- `uniform vec3 cameraPosition;`
- `uniform mat4 gbufferModelViewInverse;`
- `uniform mat4 gbufferModelView;`
- `uniform ivec2 eyeBrightnessSmooth;`
- `uniform int heldItemId;`
- `uniform int heldItemId2;`

## Defines / Preprocesador

- `#ifdef LINES`
- `#endif`
- `#ifdef OVERWORLD_SHADER`
- `#if defined Daily_Weather`
- `#endif`
- `#endif`
- `#define diagonal3(m) vec3((m)[0].x, (m)[1].y, m[2].z)`
- `#define  projMAD(m, v) (diagonal3(m) * (v) + (m)[3].xyz)`
- `#ifdef DAMAGE_BLOCK_EFFECT`
- `#endif`
- `#ifdef DAMAGE_BLOCK_EFFECT`
- `#endif`
- `#ifdef DAMAGE_BLOCK_EFFECT`
- `#endif`
- `#ifdef Hand_Held_lights`
- `#endif`
- `#ifdef WEATHER`
- `#else`
- `#endif`
- `#ifdef LINES`
- `#endif`
- `#ifdef OVERWORLD_SHADER`
- `#if defined Daily_Weather`
- `#endif`
- `#endif`
- `#ifndef WEATHER`
- `#ifdef TAA_UPSCALING`
- `#endif`
- `#ifdef TAA`
- `#endif`
- `#endif`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

- `vec4 toClipSpace3(vec3 viewSpacePosition)` — línea 52
- `void main()` — línea 76

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.
