# shaders\lib\color_transforms.glsl

**Ruta original:** `shaders\lib\color_transforms.glsl`

## Includes

(ninguno detectado)

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

(ninguno detectado)

## Constantes detectadas

- `const mat3 ACESInputMat =`
- `const mat3 ACESOutputMat =`
- `const float A = 0.6;`
- `const float B = 0.5;`
- `const float C = 0.1;`
- `const float D = 0.5;`
- `const float E = 0.01;`
- `const float F = 0.3;`
- `const float W = 11.0;`
- `const float white = ((W * (A * W + C * B) + D * E) / (W * (A * W + B) + D * F)) - E / F;`
- `const float a = 1.6;`
- `const float d = 0.977;`
- `const float hdrMax = 8.0;`
- `const float midIn = 0.23;`
- `const float midOut = 0.267;`
- `const float b =`
- `const float c =`
- `const float P = 1.0;  // max display brightness 1.0`
- `const float a = 1.0;  // contrast 1.0`
- `const float m = 0.12; // linear section start 0.22`
- `const float l = 0.22;  // linear section length 0.4`
- `const float c = 1.0; // black 1.33`
- `const float b = 0.0;  // pedestal 0.0`
- `const vec3 lw = vec3(0.2126, 0.7152, 0.0722);`
- `const mat3 AgXInsetMatrix = mat3(`
- `const mat3 AgXOutsetMatrix = mat3(`
- `const float AgxMinEv = - 12.47393;  // log2( pow( 2, LOG2_MIN ) * MIDDLE_GRAY )`
- `const float AgxMaxEv = 4.026069;    // log2( pow( 2, LOG2_MAX ) * MIDDLE_GRAY )`
- `const mat3 AgXInsetMatrix = mat3(`
- `const mat3 AgXOutsetMatrix = mat3(`
- `const float AgxMinEv = - 12.47393;  // log2( pow( 2, LOG2_MIN ) * MIDDLE_GRAY )`
- `const float AgxMaxEv = 4.026069;    // log2( pow( 2, LOG2_MAX ) * MIDDLE_GRAY )`

## Funciones detectadas (heurística)

- `vec3 toLinear(vec3 sRGB)` — línea 2
- `float luma(vec3 color)` — línea 6
- `vec3 HableTonemap(vec3 linearColor)` — línea 41
- `vec3 reinhard(vec3 x)` — línea 66
- `vec3 Tonemap_Lottes(vec3 x)` — línea 82
- `vec3 curve(vec3 x)` — línea 100
- `vec3 Tonemap_Uchimura_Modified(vec3 x, float P, float a, float m, float l, float c, float b)` — línea 103
- `vec3 Tonemap_Uchimura(vec3 x, float P, float a, float m, float l, float c, float b)` — línea 126
- `vec3 Tonemap_Uchimura(vec3 x)` — línea 149
- `vec3 Tonemap_Xonk(vec3 Color)` — línea 160
- `vec3 Tonemap_Full_Reinhard(vec3 C)` — línea 168
- `vec3 Full_Reinhard_Edit(vec3 C)` — línea 176
- `vec3 agxDefaultContrastApprox( vec3 x )` — línea 222
- `vec3 agxLook(vec3 val)` — línea 235
- `vec3 ToneMap_AgX( vec3 color )` — línea 249
- `vec3 ToneMap_AgX_minimal( vec3 color )` — línea 291

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.
