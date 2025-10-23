# shaders\world0\shadow.vsh

**Ruta original:** `shaders\world0\shadow.vsh`

## Includes

- `/lib/settings.glsl`
- `/lib/Shadow_Params.glsl`
- `/lib/bokeh.glsl`
- `/lib/blocks.glsl`
- `/lib/entities.glsl`
- `/lib/voxel_common.glsl`
- `/lib/voxel_write.glsl`
- `/lib/DistantHorizons_projections.glsl`

## Uniforms / Variables detectadas

- `uniform mat4 shadowProjectionInverse;`
- `uniform mat4 shadowProjection;`
- `uniform mat4 shadowModelViewInverse;`
- `uniform mat4 shadowModelView;`
- `uniform mat4 gbufferModelView;`
- `uniform mat4 gbufferModelViewInverse;`
- `uniform mat4 gbufferProjection;`
- `uniform mat4 gbufferProjectionInverse;`
- `uniform int hideGUI;`
- `uniform vec3 cameraPosition;`
- `uniform float frameTimeCounter;`
- `uniform int frameCounter;`
- `uniform float screenBrightness;`
- `uniform vec3 sunVec;`
- `uniform float aspectRatio;`
- `uniform float sunElevation;`
- `uniform vec3 sunPosition;`
- `uniform float lightSign;`
- `uniform float cosFov;`
- `uniform vec3 shadowViewDir;`
- `uniform vec3 shadowCamera;`
- `uniform vec3 shadowLightVec;`
- `uniform float shadowMaxProj;`
- `uniform int blockEntityId;`
- `uniform int entityId;`
- `uniform usampler1D texBlockData;`
- `uniform int currentRenderedItemId;`
- `uniform int renderStage;`
- `uniform float dhFarPlane;`

## Defines / Preprocesador

- `#ifdef IS_LPV_ENABLED`
- `#endif`
- `#define RENDER_SHADOW`
- `#define SHADOW_MAP_BIAS 0.5`
- `#ifdef IS_LPV_ENABLED`
- `#ifdef IRIS_FEATURE_BLOCK_EMISSION_ATTRIBUTE`
- `#else`
- `#endif`
- `#ifdef LPV_ENTITY_LIGHTS`
- `#endif`
- `#endif`
- `#define diagonal3(m) vec3((m)[0].x, (m)[1].y, m[2].z)`
- `#define  projMAD(m, v) (diagonal3(m) * (v) + (m)[3].xyz)`
- `#if defined IS_LPV_ENABLED || defined WAVY_PLANTS`
- `#endif`
- `#if defined IS_LPV_ENABLED && defined MC_GL_EXT_shader_image_load_store`
- `#endif`
- `#ifdef WAVY_PLANTS`
- `#endif`
- `#ifdef DISTORT_SHADOWMAP`
- `#else`
- `#endif`

## Constantes detectadas

- `const float PI = 3.1415927;`
- `const float PI48 = 150.796447372*WAVY_SPEED;`

## Funciones detectadas (heurística)

- `vec2 calcWave(in vec3 pos)` — línea 78
- `vec3 calcMovePlants(in vec3 pos)` — línea 86
- `vec3 calcWaveLeaves(in vec3 pos, in float fm, in float mm, in float ma, in float f0, in float f1, in float f2, in float f3, in float f4, in float f5)` — línea 92
- `vec3 calcMoveLeaves(in vec3 pos, in float f0, in float f1, in float f2, in float f3, in float f4, in float f5, in vec3 amp1, in vec3 amp2)` — línea 100
- `vec4 toClipSpace3(vec3 viewSpacePosition)` — línea 133
- `vec3 viewToWorld(vec3 viewPos)` — línea 139
- `void main()` — línea 150

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.
