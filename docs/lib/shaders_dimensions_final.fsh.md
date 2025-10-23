# shaders\dimensions\final.fsh

**Ruta original:** `shaders\dimensions\final.fsh`

## Includes

- `/lib/settings.glsl`
- `/lib/color_transforms.glsl`
- `/lib/color_dither.glsl`
- `/lib/res_params.glsl`
- `/lib/gameplay_effects.glsl`
- `/lib/util.glsl`
- `/lib/projections.glsl`

## Uniforms / Variables detectadas

- `uniform sampler2D colortex7;`
- `uniform sampler2D colortex14;`
- `uniform sampler2D depthtex0;`
- `uniform sampler2D depthtex2;`
- `uniform sampler2D noisetex;`
- `uniform vec2 texelSize;`
- `uniform float frameTimeCounter;`
- `uniform float viewHeight;`
- `uniform float viewWidth;`
- `uniform float aspectRatio;`
- `uniform int hideGUI;`
- `uniform vec3 previousCameraPosition;`
- `uniform mat4 gbufferPreviousModelView;`
- `uniform sampler2D shadowcolor1;`

## Defines / Preprocesador

- `#ifdef MOTION_BLUR`
- `#else`
- `#endif`
- `#if defined LOW_HEALTH_EFFECT || defined DAMAGE_TAKEN_EFFECT || defined WATER_ON_CAMERA_EFFECT`
- `#endif`
- `#ifdef CAMERA_GRIDLINES`
- `#endif`
- `#if DEBUG_VIEW == debug_SHADOWMAP`
- `#endif`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

- `float interleaved_gradientNoise()` — línea 23
- `void doCameraGridLines(inout vec3 color, vec2 UV)` — línea 31
- `vec3 doMotionBlur(vec2 texcoord, float depth, float noise)` — línea 57
- `void main()` — línea 90

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.
