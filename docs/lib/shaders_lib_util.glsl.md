# shaders\lib\util.glsl

**Ruta original:** `shaders\lib\util.glsl`

## Includes

(ninguno detectado)

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define TIME_MULT 1.0`
- `#define TIME (frameTimeCounter * TIME_MULT)`
- `#define clamp01(x) clamp(x, 0.0, 1.0)`
- `#define max0(x) max(x, 0.0)`
- `#define min0(x) min(x, 0.0)`
- `#define max3(a) max(max(a.x, a.y), a.z)`
- `#define min3(a) min(min(a.x, a.y), a.z)`
- `#define max4(a, b, c, d) max(max(a, b), max(c, d))`
- `#define min4(a, b, c, d) min(min(a, b), min(c, d))`
- `#define fsign(x) (clamp01(x * 1e35) * 2.0 - 1.0)`
- `#define fstep(x,y) clamp01((y - x) * 1e35)`
- `#define diagonal2(m) vec2((m)[0].x, (m)[1].y)`
- `#define diagonal3(m) vec3(diagonal2(m), m[2].z)`
- `#define diagonal4(m) vec4(diagonal3(m), m[2].w)`
- `#define transMAD(mat, v) (mat3(mat) * (v) + (mat)[3].xyz)`
- `#define projMAD(mat, v) (diagonal3(mat) * (v) + (mat)[3].xyz)`
- `#define encodeColor(x) (x * 0.00005)`
- `#define decodeColor(x) (x * 20000.0)`
- `#define cubeSmooth(x) (x * x * (3.0 - 2.0 * x))`
- `#define lumCoeff vec3(0.2125, 0.7154, 0.0721)`

## Constantes detectadas

- `const float PI 		= acos(-1.0);`
- `const float TAU 	= PI * 2.0;`
- `const float hPI 	= PI * 0.5;`
- `const float rPI 	= 1.0 / PI;`
- `const float rTAU 	= 1.0 / TAU;`
- `const float PHI		= sqrt(5.0) * 0.5 + 0.5;`
- `const float rLOG2	= 1.0 / log(2.0);`
- `const float goldenAngle = TAU / PHI / PHI;`
- `float facos(const float sx){`
- `vec3 calculateRoughSpecular(const float i, const float alpha2, const int steps) {`

## Funciones detectadas (heurística)

- `vec2 sincos(float x)` — línea 49
- `vec2 circlemap(float i, float n)` — línea 53
- `vec3 circlemapL(float i, float n)` — línea 57
- `vec3 clampNormal(vec3 n, vec3 v)` — línea 72
- `vec3 srgbToLinear(vec3 srgb)` — línea 77
- `vec3 linearToSRGB(vec3 linear)` — línea 85
- `float calculateHardShadows(float shadowDepth, vec3 shadowPosition, float bias)` — línea 111
- `vec3 genUnitVector(vec2 xy)` — línea 117
- `vec2 rotate(vec2 x, float r)` — línea 122
- `vec3 cartToSphere(vec2 coord)` — línea 127
- `vec2 sphereToCart(vec3 dir)` — línea 133
- `mat3 getRotMat(vec3 x,vec3 y)` — línea 138
- `vec2 rsi(vec3 position, vec3 direction, float radius)` — línea 161

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.
