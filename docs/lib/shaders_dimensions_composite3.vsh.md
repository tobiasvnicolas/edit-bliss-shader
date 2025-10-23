# shaders\dimensions\composite3.vsh

**Ruta original:** `shaders\dimensions\composite3.vsh`

## Includes

- `/lib/settings.glsl`
- `/lib/TAA_jitter.glsl`

## Uniforms / Variables detectadas

- `uniform sampler2D colortex4;`
- `uniform float far;`
- `uniform float near;`
- `uniform float dhFarPlane;`
- `uniform float dhNearPlane;`
- `uniform mat4 gbufferModelViewInverse;`
- `uniform vec3 sunPosition;`
- `uniform float sunElevation;`
- `uniform int framemod8;`

## Defines / Preprocesador

- `#ifdef BorderFog`
- `#endif`
- `#ifdef OVERWORLD_SHADER`
- `#endif`
- `#ifdef OVERWORLD_SHADER`
- `#ifdef BorderFog`
- `#endif`
- `#endif`
- `#ifdef TAA`
- `#else`
- `#endif`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

- `void main()` — línea 36

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.
