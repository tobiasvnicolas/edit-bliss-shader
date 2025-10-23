# shaders\dimensions\composite12.fsh

**Ruta original:** `shaders\dimensions\composite12.fsh`

## Includes

- `/lib/settings.glsl`
- `/lib/color_transforms.glsl`
- `/lib/color_dither.glsl`
- `/lib/res_params.glsl`

## Uniforms / Variables detectadas

- `uniform vec2 texelSize;`
- `uniform sampler2D colortex7;`
- `uniform sampler2D colortex14;`
- `uniform sampler2D depthtex0;`
- `uniform sampler2D noisetex;`
- `uniform float viewHeight;`
- `uniform float viewWidth;`
- `uniform float aspectRatio;`
- `uniform float frameTimeCounter;`
- `uniform int hideGUI;`

## Defines / Preprocesador

- `#ifdef CONTRAST_ADAPTATIVE_SHARPENING`
- `#endif`
- `#ifdef LUMINANCE_CURVE`
- `#endif`
- `#ifdef COLOR_GRADING_ENABLED`
- `#endif`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

- `float lowerCurve(float x)` — línea 75
- `float upperCurve(float x)` — línea 80
- `vec3 luminanceCurve(vec3 color)` — línea 85
- `vec3 colorGrading(vec3 color)` — línea 92
- `vec3 contrastAdaptiveSharpening(vec3 color, vec2 texcoord)` — línea 105
- `vec3 saturationAndCrosstalk(vec3 color)` — línea 126
- `void main()` — línea 137

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.
