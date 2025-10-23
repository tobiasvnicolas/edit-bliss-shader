# shaders\world1\gbuffers_weather.fsh

**Ruta original:** `shaders\world1\gbuffers_weather.fsh`

## Includes

(ninguno detectado)

## Uniforms / Variables detectadas

- `uniform sampler2D texture;`
- `uniform sampler2D gaux1;`
- `uniform vec4 lightCol;`
- `uniform vec3 sunVec;`
- `uniform vec2 texelSize;`
- `uniform float skyIntensityNight;`
- `uniform float skyIntensity;`
- `uniform float rainStrength;`
- `uniform mat4 gbufferProjectionInverse;`

## Defines / Preprocesador

- `#define diagonal3(m) vec3((m)[0].x, (m)[1].y, m[2].z)`
- `#define  projMAD(m, v) (diagonal3(m) * (v) + (m)[3].xyz)`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

- `vec3 toLinear(vec3 sRGB)` — línea 21
- `vec3 toScreenSpaceVector(vec3 p)` — línea 26
- `void main()` — línea 38

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.
