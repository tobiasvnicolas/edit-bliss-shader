# shaders\dimensions\all_solid.fsh

**Ruta original:** `shaders\dimensions\all_solid.fsh`

## Includes

- `/lib/settings.glsl`
- `/lib/blocks.glsl`
- `/lib/entities.glsl`
- `/lib/items.glsl`
- `/lib/res_params.glsl`

## Uniforms / Variables detectadas

- `uniform vec2 texelSize;`
- `uniform int framemod8;`
- `uniform float far;`
- `uniform float wetness;`
- `uniform sampler2D normals;`
- `uniform sampler2D specular;`
- `uniform sampler2D texture;`
- `uniform sampler2D colortex1;//albedo(rgb),material(alpha) RGBA16`
- `uniform float frameTimeCounter;`
- `uniform int frameCounter;`
- `uniform mat4 gbufferProjectionInverse;`
- `uniform mat4 gbufferModelView;`
- `uniform mat4 gbufferProjection;`
- `uniform mat4 gbufferModelViewInverse;`
- `uniform vec3 cameraPosition;`
- `uniform float rainStrength;`
- `uniform sampler2D noisetex;//depth`
- `uniform sampler2D depthtex0;`
- `uniform vec4 entityColor;`
- `uniform float noPuddleAreas;`
- `uniform float near;`
- `uniform vec3 eyePosition;`

## Defines / Preprocesador

- `#ifdef HAND`
- `#endif`
- `#ifndef USE_LUMINANCE_AS_HEIGHTMAP`
- `#ifndef MC_NORMAL_MAP`
- `#endif`
- `#endif`
- `#ifdef POM`
- `#define MC_NORMAL_MAP`
- `#endif`
- `#ifdef MC_NORMAL_MAP`
- `#endif`
- `#ifdef MC_NORMAL_MAP`
- `#endif`
- `#define diagonal3(m) vec3((m)[0].x, (m)[1].y, m[2].z)`
- `#define  projMAD(m, v) (diagonal3(m) * (v) + (m)[3].xyz)`
- `#ifdef POM`
- `#endif`
- `#if defined HAND || defined ENTITIES || defined BLOCKENTITIES`
- `#else`
- `#endif`
- `#ifdef POM`
- `#endif`
- `#ifdef MC_NORMAL_MAP`
- `#endif`
- `#if defined Hand_Held_lights && !defined LPV_ENABLED`
- `#ifdef IS_IRIS`
- `#else`
- `#endif`
- `#ifdef HAND`
- `#endif`
- `#endif`
- `#if defined Puddles && defined WORLD && !defined ENTITIES && !defined HAND`
- `#endif`
- `#if defined POM && defined WORLD && !defined ENTITIES && !defined HAND`
- `#ifdef Adaptive_Step_length`
- `#else`
- `#endif`
- `#endif`
- `#if defined HAND`
- `#endif`
- `#ifdef WhiteWorld`
- `#endif`
- `#ifdef AEROCHROME_MODE`
- `#ifdef AEROCHROME_WOOL_ENABLED`
- `#endif`
- `#endif`
- `#ifdef WORLD`
- `#endif`
- `#ifdef HAND`
- `#endif`
- `#if defined PARTICLE_RENDERING_FIX && (defined ENTITIES || defined BLOCKENTITIES)`
- `#endif`
- `#if defined WORLD && defined MC_NORMAL_MAP`
- `#ifdef MATERIAL_AO`
- `#endif`
- `#endif`
- `#ifdef WORLD`
- `#if EMISSIVE_TYPE == 0`
- `#endif`
- `#if EMISSIVE_TYPE == 1`
- `#endif`
- `#if EMISSIVE_TYPE == 2`
- `#endif`
- `#if EMISSIVE_TYPE == 3`
- `#endif`
- `#if SSS_TYPE == 0`
- `#endif`
- `#if SSS_TYPE == 1`
- `#endif`
- `#if SSS_TYPE == 2`
- `#endif`
- `#if SSS_TYPE == 3`
- `#endif`
- `#endif`
- `#ifdef ENTITIES`
- `#endif`
- `#ifdef WORLD`
- `#ifdef Puddles`
- `#ifdef Porosity`
- `#endif`
- `#endif`
- `#endif`

## Constantes detectadas

- `const float mincoord = 1.0/4096.0;`
- `const float maxcoord = 1.0-mincoord;`
- `const float MAX_OCCLUSION_DISTANCE = MAX_DIST;`
- `const float MIX_OCCLUSION_DISTANCE = MAX_DIST*0.9;`
- `const int   MAX_OCCLUSION_POINTS   = MAX_ITERATIONS;`
- `const vec2 constant1 = vec2( 1., 256.) / 65535.;`
- `const vec2[8] offsets = vec2[8](vec2(1./8.,-3./8.),`

## Funciones detectadas (heurística)

- `float interleaved_gradientNoise_temporal()` — línea 102
- `float interleaved_gradientNoise()` — línea 105
- `float blueNoise()` — línea 110
- `float R2_dither()` — línea 113
- `mat3 inverseMatrix(mat3 m)` — línea 118
- `vec3 viewToWorld(vec3 viewPosition)` — línea 134
- `vec3 worldToView(vec3 worldPos)` — línea 141
- `vec4 encode(vec3 n, vec2 lightmaps)` — línea 146
- `float encodeVec2(vec2 a)` — línea 155
- `float encodeVec2(float x,float y)` — línea 160
- `vec3 applyBump(mat3 tbnMatrix, vec3 bump, float puddle_values)` — línea 165
- `vec3 toScreenSpace(vec3 p)` — línea 176
- `vec3 toClipSpace3(vec3 viewSpacePosition)` — línea 182
- `float luma(vec3 color)` — línea 198
- `vec3 toLinear(vec3 sRGB)` — línea 203
- `float ld(float dist)` — línea 221
- `vec4 readNoise(in vec2 coord)` — línea 226
- `float bias()` — línea 260
- `void main()` — línea 292
- `else if(blockID == BLOCK_GRASS)` — línea 434
- `else if(blockID == BLOCK_SSS_WEAK_2 || blockID == BLOCK_CARPET)` — línea 440

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.
