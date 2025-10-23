# shaders\dimensions\deferred1.fsh

**Ruta original:** `shaders\dimensions\deferred1.fsh`

## Includes

- `/lib/settings.glsl`

## Uniforms / Variables detectadas

- `uniform sampler2D colortex4;`
- `uniform sampler2D colortex1;`
- `uniform sampler2D colortex12;`
- `uniform vec2 texelSize;`
- `uniform sampler2D depthtex0;`
- `uniform sampler2D depthtex1;`
- `uniform sampler2D dhDepthTex;`
- `uniform sampler2D dhDepthTex1;`
- `uniform float near;`
- `uniform float far;`
- `uniform float dhFarPlane;`
- `uniform float dhNearPlane;`

## Defines / Preprocesador

- `#ifdef DISTANT_HORIZONS`
- `#endif`
- `#ifdef DISTANT_HORIZONS`
- `#endif`

## Constantes detectadas

- `const vec2 constant1 = 65535. / vec2( 256., 65536.);`
- `const float constant2 = 256. / 255.;`

## Funciones detectadas (heurística)

- `float linZ(float depth)` — línea 20
- `float DH_linZ(float dist)` — línea 23
- `float DH_invLinZ(float lindepth)` — línea 26
- `void convertHandDepth(inout float depth)` — línea 29
- `vec2 decodeVec2(float a)` — línea 34
- `void main()` — línea 45

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.
