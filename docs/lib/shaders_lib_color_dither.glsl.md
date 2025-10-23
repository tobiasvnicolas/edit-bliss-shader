# shaders\lib\color_dither.glsl

**Ruta original:** `shaders\lib\color_dither.glsl`

## Includes

(ninguno detectado)

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

(ninguno detectado)

## Constantes detectadas

- `const vec3 mantissaBits = vec3(6.,6.,5.);`
- `const vec3 mantissaBits = vec3(10.);`

## Funciones detectadas (heurística)

- `vec3 fp10Dither(vec3 color,vec2 tc01)` — línea 19
- `vec3 fp16Dither(vec3 color,vec2 tc01)` — línea 26
- `vec3 int8Dither(vec3 color,vec2 tc01)` — línea 33
- `vec3 int10Dither(vec3 color,vec2 tc01)` — línea 38
- `vec3 int16Dither(vec3 color,vec2 tc01)` — línea 43

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.
