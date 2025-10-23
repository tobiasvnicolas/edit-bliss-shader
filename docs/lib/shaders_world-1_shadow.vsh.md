# shaders\world-1\shadow.vsh

**Ruta original:** `shaders\world-1\shadow.vsh`

## Includes

- `/lib/settings.glsl`
- `/lib/blocks.glsl`
- `/lib/entities.glsl`
- `/lib/voxel_common.glsl`
- `/lib/voxel_write.glsl`

## Uniforms / Variables detectadas

- `uniform usampler1D texBlockData;`
- `uniform mat4 shadowModelViewInverse;`
- `uniform int renderStage;`
- `uniform vec3 chunkOffset;`
- `uniform vec3 cameraPosition;`
- `uniform int currentRenderedItemId;`
- `uniform int blockEntityId;`
- `uniform int entityId;`

## Defines / Preprocesador

- `#ifdef IS_LPV_ENABLED`
- `#endif`
- `#define RENDER_SHADOW`
- `#ifdef IS_LPV_ENABLED`
- `#ifdef IRIS_FEATURE_BLOCK_EMISSION_ATTRIBUTE`
- `#else`
- `#endif`
- `#ifdef LPV_ENTITY_LIGHTS`
- `#endif`
- `#endif`
- `#if defined IS_LPV_ENABLED && defined MC_GL_EXT_shader_image_load_store`
- `#ifdef LPV_NOSHADOW_HACK`
- `#else`
- `#endif`
- `#endif`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

- `void main()` — línea 48

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.
