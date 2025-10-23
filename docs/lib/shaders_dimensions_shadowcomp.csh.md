# shaders\dimensions\shadowcomp.csh

**Ruta original:** `shaders\dimensions\shadowcomp.csh`

## Includes

- `/lib/hsv.glsl`
- `/lib/util.glsl`
- `/lib/blocks.glsl`
- `/lib/lpv_common.glsl`
- `/lib/lpv_blocks.glsl`
- `/lib/lpv_buffer.glsl`
- `/lib/voxel_common.glsl`

## Uniforms / Variables detectadas

- `uniform int frameCounter;`
- `uniform vec3 cameraPosition;`
- `uniform vec3 previousCameraPosition;`

## Defines / Preprocesador

- `#define RENDER_SHADOWCOMP`
- `#if   LPV_SIZE == 8`
- `#elif LPV_SIZE == 7`
- `#elif LPV_SIZE == 6`
- `#endif`
- `#ifdef IS_LPV_ENABLED`
- `#endif`
- `#ifdef IS_LPV_ENABLED`
- `#endif`

## Constantes detectadas

- `const ivec3 workGroups = ivec3(32, 32, 32);`
- `const ivec3 workGroups = ivec3(16, 16, 16);`
- `const ivec3 workGroups = ivec3(8, 8, 8);`
- `const vec2 LpvBlockSkyFalloff = vec2(0.96, 0.96);`
- `const ivec3 lpvFlatten = ivec3(1, 10, 100);`
- `uint GetVoxelBlock(const in ivec3 voxelPos) {`
- `void PopulateSharedIndex(const in ivec3 imgCoordOffset, const in ivec3 workGroupOffset, const in uint i) {`
- `vec4 mixNeighbours(const in ivec3 fragCoord, const in uint mask) {`
- `const vec4 avgFalloff = (1.0/6.0) * LpvBlockSkyFalloff.xxxy;`

## Funciones detectadas (heurística)

- `int sumOf(ivec3 vec)` — línea 32
- `int getSharedIndex(ivec3 pos)` — línea 34
- `vec4 GetLpvValue(in ivec3 texCoord)` — línea 38
- `vec4 sampleShared(ivec3 pos, int mask_index)` — línea 66
- `void main()` — línea 100

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.
