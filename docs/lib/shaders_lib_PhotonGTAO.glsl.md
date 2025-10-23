# shaders\lib\PhotonGTAO.glsl

**Ruta original:** `shaders\lib\PhotonGTAO.glsl`

## Includes

(ninguno detectado)

## Uniforms / Variables detectadas

- `uniform vec2 view_res;`
- `uniform vec2 view_pixel_size;`

## Defines / Preprocesador

- `#if defined TAA && defined TAA_UPSCALING`
- `#else`
- `#endif`
- `#define rcp(x) (1.0 / (x))`
- `#define clamp01(x) clamp(x, 0.0, 1.0) // free on operation output`
- `#define max0(x) max(x, 0.0)`
- `#define min1(x) min(x, 1.0)`
- `#define GTAO_SLICES        2`
- `#define GTAO_HORIZON_STEPS 3`
- `#define GTAO_RADIUS        2.0`
- `#define GTAO_FALLOFF_START 0.75`

## Constantes detectadas

- `const float eps          = 1e-6;`
- `const float e            = exp(1.0);`
- `const float tau          = 2.0 * pi;`
- `const float half_pi      = 0.5 * pi;`
- `const float rcp_pi       = 1.0 / pi;`
- `const float degree       = tau / 360.0; // Size of one degree in radians, useful because radians() is not a constant expression on all platforms`
- `const float golden_ratio = 0.5 + 0.5 * sqrt(5.0);`
- `const float golden_angle = tau / golden_ratio / golden_ratio;`
- `const float hand_depth   = 0.56;`
- `const float taau_render_scale = RENDER_SCALE.x;`
- `const float taau_render_scale = 1.0;`
- `const float C0 = 1.57018;`
- `const float C1 = -0.201877;`
- `const float C2 = 0.0464619;`
- `const float step_size = GTAO_RADIUS * rcp(float(GTAO_HORIZON_STEPS));`

## Funciones detectadas (heurística)

- `float sqr(float x)` — línea 27
- `vec2 sqr(vec2  v)` — línea 28
- `vec3 sqr(vec3  v)` — línea 29
- `vec4 sqr(vec4  v)` — línea 30
- `float cube(float x)` — línea 32
- `float max_of(vec2 v)` — línea 34
- `float max_of(vec3 v)` — línea 35
- `float max_of(vec4 v)` — línea 36
- `float min_of(vec2 v)` — línea 37
- `float min_of(vec3 v)` — línea 38
- `float min_of(vec4 v)` — línea 39
- `float length_squared(vec2 v)` — línea 41
- `float length_squared(vec3 v)` — línea 42
- `vec2 normalize_safe(vec2 v)` — línea 44
- `vec3 normalize_safe(vec3 v)` — línea 45
- `float rcp_length(vec2 v)` — línea 47
- `float rcp_length(vec3 v)` — línea 48
- `float fast_acos(float x)` — línea 50
- `vec2 fast_acos(vec2 v)` — línea 60
- `float linear_step(float edge0, float edge1, float x)` — línea 65
- `vec2 linear_step(vec2 edge0, vec2 edge1, vec2 x)` — línea 69
- `vec4 project(mat4 m, vec3 pos)` — línea 73
- `vec3 project_and_divide(mat4 m, vec3 pos)` — línea 76
- `vec3 screen_to_view_space(vec3 screen_pos, bool handle_jitter)` — línea 81
- `vec3 view_to_screen_space(vec3 view_pos, bool handle_jitter)` — línea 87
- `float integrate_arc(vec2 h, float n, float cos_n)` — línea 104
- `float ambient_occlusion(vec3 screen_pos, vec3 view_pos, vec3 view_normal, vec2 dither)` — línea 145

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.
