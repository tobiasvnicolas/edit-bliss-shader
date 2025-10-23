# shaders\dimensions\DH_solid.fsh

**Ruta original:** `shaders\dimensions\DH_solid.fsh`

## Includes

- `/lib/settings.glsl`

## Uniforms / Variables detectadas

- `uniform float far;`
- `uniform mat4 gbufferModelView;`
- `uniform mat4 gbufferModelViewInverse;`
- `uniform mat4 gbufferProjection;`
- `uniform mat4 gbufferProjectionInverse;`
- `uniform sampler2D noisetex;`
- `uniform int frameCounter;`
- `uniform float frameTimeCounter;`
- `uniform vec3 cameraPosition;`

## Defines / Preprocesador

- `#define diagonal3(m) vec3((m)[0].x, (m)[1].y, m[2].z)`
- `#define  projMAD(m, v) (diagonal3(m) * (v) + (m)[3].xyz)`
- `#ifdef DH_OVERDRAW_PREVENTION`
- `#if OVERDRAW_MAX_DISTANCE == 0`
- `#else`
- `#endif`
- `#endif`
- `#ifdef DH_NOISE_TEXTURE`
- `#else`
- `#endif`
- `#ifdef AEROCHROME_MODE`
- `#endif`
- `#ifdef WhiteWorld`
- `#endif`
- `#if EMISSIVE_TYPE == 0`
- `#else`
- `#endif`
- `#if SSS_TYPE == 0`
- `#else`
- `#endif`

## Constantes detectadas

- `const vec2 constant1 = vec2( 1., 256.) / 65535.;`
- `// const int noiseSteps = NOISE_RESOLUTION;`
- `const float noiseIntensity = NOISE_INTENSITY;`
- `const int noiseDropoff = NOISE_DROPOFF;`
- `vec3 quantize(const in vec3 val, const in int stepSize) {`
- `vec4 applyNoise(in vec4 fragColor, const in vec3 viewPos, const in float viewDist) {`

## Funciones detectadas (heurística)

- `vec3 viewToWorld(vec3 viewPosition)` — línea 18
- `vec3 worldToView(vec3 worldPos)` — línea 25
- `vec4 encode(vec3 n, vec2 lightmaps)` — línea 30
- `float encodeVec2(vec2 a)` — línea 39
- `float encodeVec2(float x,float y)` — línea 44
- `vec3 toScreenSpace(vec3 p)` — línea 58
- `float blueNoise()` — línea 68
- `float interleaved_gradientNoise_temporal()` — línea 71
- `float interleaved_gradientNoise()` — línea 74
- `float R2_dither()` — línea 79
- `float densityAtPos(in vec3 pos)` — línea 86
- `float rand(float co)` — línea 110
- `float rand(vec2 co)` — línea 111
- `float rand(vec3 co)` — línea 112
- `void main()` — línea 157

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.
