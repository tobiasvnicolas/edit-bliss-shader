# shaders\dimensions\composite6.fsh

**Ruta original:** `shaders\dimensions\composite6.fsh`

## Includes

- `/lib/settings.glsl`
- `/lib/res_params.glsl`

## Uniforms / Variables detectadas

- `uniform sampler2D depthtex0;`
- `uniform sampler2D colortex1;`
- `uniform sampler2D colortex5;`
- `uniform vec2 texelSize;`
- `uniform float viewWidth;`
- `uniform float viewHeight;`

## Defines / Preprocesador

(ninguno detectado)

## Constantes detectadas

- `const vec2 constant1 = 65535. / vec2( 256., 65536.);`
- `const float constant2 = 256. / 255.;`

## Funciones detectadas (heurística)

- `vec2 decodeVec2(float a)` — línea 11
- `void main()` — línea 23

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.
