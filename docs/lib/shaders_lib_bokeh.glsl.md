# shaders\lib\bokeh.glsl

**Ruta original:** `shaders\lib\bokeh.glsl`

## Includes

(ninguno detectado)

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#if DOF_QUALITY == 0 // Original choc hex bokeh`
- `#define BOKEH_SAMPLES 60`
- `#define HEXAGONAL_BOKEH`
- `#elif DOF_QUALITY == 1 // Low quality bokeh`
- `#define BOKEH_SAMPLES 32`
- `#elif DOF_QUALITY == 2 // Medium quality bokeh`
- `#define BOKEH_SAMPLES 64`
- `#elif DOF_QUALITY == 3 // High quality bokeh`
- `#define BOKEH_SAMPLES 96`
- `#elif DOF_QUALITY == 4 // Ultra quality bokeh`
- `#define BOKEH_SAMPLES 128`
- `#endif`
- `#if DOF_QUALITY == 5 || defined(DOF_JITTER_SHADOW) // DOF_QUALITY == 5 && defined(SCREENSHOT_MODE)`
- `#endif`

## Constantes detectadas

- `const vec2 bokeh_offsets[60] = vec2[60] (`
- `const vec2 bokeh_offsets[32] = vec2[32](`
- `const vec2 bokeh_offsets[64] = vec2[64](`
- `const vec2 bokeh_offsets[96] = vec2[96](`
- `const vec2 bokeh_offsets[128] = vec2[128](`
- `const vec2 jitter_offsets[64] = vec2[](`

## Funciones detectadas (heurística)

- `mat2 rotate(float angle)` — línea 472

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.
