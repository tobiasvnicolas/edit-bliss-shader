# shaders\lib\projections.glsl

**Ruta original:** `shaders\lib\projections.glsl`

## Includes

(ninguno detectado)

## Uniforms / Variables detectadas

- `uniform mat4 gbufferProjection;`
- `uniform mat4 gbufferProjectionInverse;`
- `uniform mat4 gbufferPreviousProjection;`
- `uniform mat4 gbufferModelViewInverse;`
- `uniform mat4 gbufferModelView;`
- `uniform mat4 shadowModelView;`
- `uniform mat4 shadowProjection;`
- `uniform vec3 cameraPosition;`

## Defines / Preprocesador

(ninguno detectado)

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

- `vec3 toClipSpace3(vec3 viewSpacePosition)` — línea 14
- `vec3 toScreenSpace(vec3 p)` — línea 18
- `vec3 toScreenSpaceVector(vec3 p)` — línea 25
- `vec3 toWorldSpace(vec3 p3)` — línea 32
- `vec3 toWorldSpaceCamera(vec3 p3)` — línea 37
- `vec3 toShadowSpace(vec3 p3)` — línea 42
- `vec3 toShadowSpaceProjected(vec3 p3)` — línea 48

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.
