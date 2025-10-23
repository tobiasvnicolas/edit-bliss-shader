# shaders\world0\dh_shadow.vsh

**Ruta original:** `shaders\world0\dh_shadow.vsh`

## Includes

- `/lib/settings.glsl`
- `/lib/Shadow_Params.glsl`
- `/lib/DistantHorizons_projections.glsl`

## Uniforms / Variables detectadas

- `uniform mat4 shadowProjectionInverse;`
- `uniform mat4 shadowProjection;`
- `uniform mat4 shadowModelViewInverse;`
- `uniform mat4 shadowModelView;`
- `uniform mat4 gbufferProjection;`
- `uniform mat4 gbufferProjectionInverse;`
- `uniform float dhFarPlane;`

## Defines / Preprocesador

- `#define SHADOW_MAP_BIAS 0.5`
- `#define diagonal3(m) vec3((m)[0].x, (m)[1].y, m[2].z)`
- `#define  projMAD(m, v) (diagonal3(m) * (v) + (m)[3].xyz)`
- `#ifdef DH_OVERDRAW_PREVENTION`
- `#else`
- `#endif`
- `#ifdef DISTORT_SHADOWMAP`
- `#else`
- `#endif`

## Constantes detectadas

- `const float PI = 3.1415927;`

## Funciones detectadas (heurística)

- `vec4 toClipSpace3(vec3 viewSpacePosition)` — línea 36
- `void main()` — línea 48

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.
