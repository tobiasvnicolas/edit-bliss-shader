# shaders\lib\specular.glsl

**Ruta original:** `shaders\lib\specular.glsl`

## Includes

(ninguno detectado)

## Uniforms / Variables detectadas

- `uniform int framemod8;`

## Defines / Preprocesador

- `#ifdef Rough_reflections`
- `#else`
- `#endif`
- `#ifdef Rough_reflections`
- `#else`
- `#endif`
- `#ifdef Sky_reflection`
- `#ifdef OVERWORLD_SHADER`
- `#else`
- `#endif`
- `#endif`
- `#ifdef Screen_Space_Reflections`
- `#ifdef Dynamic_SSR_quality`
- `#else`
- `#endif`
- `#endif`
- `#ifdef LIGHTSOURCE_REFLECTION`
- `#endif`

## Constantes detectadas

- `const vec2[8] offsets = vec2[8](vec2(1./8.,-3./8.),`
- `const float tau = 6.2831853; // 2 * pi`

## Funciones detectadas (heurística)

- `vec3 lerp(vec3 X, vec3 Y, float A)` — línea 12
- `float lerp(float X, float Y, float A)` — línea 16
- `float square(float x)` — línea 20
- `vec3 toClipSpace3(vec3 viewSpacePosition)` — línea 26
- `float invLinZ(float lindepth)` — línea 29
- `float linZ(float depth)` — línea 32
- `void frisvad(in vec3 n, out vec3 f, out vec3 r)` — línea 41
- `mat3 CoordBase(vec3 n)` — línea 53
- `vec2 R2_Sample(int n)` — línea 59
- `vec3 rayTraceSpeculars(vec3 dir, vec3 position, float dither, float quality, bool hand, inout float reflectLength)` — línea 64
- `float fma(float a,float b,float c)` — línea 123
- `float GGX(vec3 n, vec3 v, vec3 l, float r, float f0)` — línea 160

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.
