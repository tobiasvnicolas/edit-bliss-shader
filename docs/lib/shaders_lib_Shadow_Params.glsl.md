# shaders\lib\Shadow_Params.glsl

**Ruta original:** `shaders\lib\Shadow_Params.glsl`

## Includes

(ninguno detectado)

## Uniforms / Variables detectadas

- `uniform float far;`
- `uniform int dhRenderDistance;`

## Defines / Preprocesador

(ninguno detectado)

## Constantes detectadas

- `const float k = 1.8;`
- `const float d0 = 0.04  + max(64.0 - shadowDistance, 0.0)/64.0  * 0.26;`
- `const float d1 = 0.61;`

## Funciones detectadas (heurística)

- `vec4 BiasShadowProjection(in vec4 projectedShadowSpacePosition)` — línea 17
- `float calcDistort(vec2 worldpos)` — línea 24

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.
