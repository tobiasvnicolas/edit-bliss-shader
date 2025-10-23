# shaders\dimensions\composite5.fsh

**Ruta original:** `shaders\dimensions\composite5.fsh`

## Includes

- `/lib/settings.glsl`
- `/lib/res_params.glsl`
- `/lib/util.glsl`
- `/lib/projections.glsl`
- `/lib/TAA_jitter.glsl`
- `/lib/DistantHorizons_projections.glsl`

## Uniforms / Variables detectadas

- `uniform sampler2D colortex0;`
- `uniform sampler2D colortex1;`
- `uniform sampler2D colortex3;`
- `uniform sampler2D colortex5;`
- `uniform sampler2D colortex6;`
- `uniform sampler2D colortex10;`
- `uniform sampler2D colortex12;`
- `uniform sampler2D colortex14;`
- `uniform sampler2D depthtex0;`
- `uniform sampler2D depthtex1;`
- `uniform vec2 texelSize;`
- `uniform float frameTimeCounter;`
- `uniform float viewHeight;`
- `uniform float viewWidth;`
- `uniform vec3 previousCameraPosition;`
- `uniform mat4 gbufferPreviousModelView;`
- `uniform int hideGUI;`
- `uniform float CriticalDamageTaken;`
- `uniform int framemod8;`
- `uniform sampler2D dhDepthTex;`
- `uniform float near;`
- `uniform float far;`
- `uniform float dhFarPlane;`
- `uniform float dhNearPlane;`

## Defines / Preprocesador

- `#ifdef SCREENSHOT_MODE`
- `#else`
- `#endif`
- `#ifdef DAMAGE_TAKEN_EFFECT`
- `#endif`
- `#ifdef DISTANT_HORIZONS`
- `#endif`
- `#ifdef DISTANT_HORIZONS`
- `#else`
- `#endif`
- `#ifdef DISTANT_HORIZONS`
- `#endif`
- `#ifdef DISTANT_HORIZONS`
- `#endif`
- `#ifndef SMOOTHESTSTEP_INTERPOLATION`
- `#endif`
- `#ifdef SMOOTHESTSTEP_INTERPOLATION`
- `#endif`
- `#ifdef TAA_UPSCALING`
- `#endif`
- `#ifdef TAA_UPSCALING`
- `#endif`
- `#ifdef DISTANT_HORIZONS`
- `#else`
- `#endif`
- `#ifdef DISTANT_HORIZONS`
- `#else`
- `#endif`
- `#ifdef TAA_UPSCALING`
- `#else`
- `#endif`
- `#ifdef DAMAGE_TAKEN_EFFECT`
- `#endif`
- `#ifdef DAMAGE_TAKEN_EFFECT`
- `#endif`
- `#ifdef SCREENSHOT_MODE`
- `#endif`
- `#ifdef TAA`
- `#if DEBUG_VIEW == debug_TEMPORAL_REPROJECTION`
- `#endif`
- `#ifdef SCREENSHOT_MODE`
- `#else`
- `#endif`
- `#else`
- `#endif`

## Constantes detectadas

- `const int colortex0Format = RGBA16F;				// low res clouds (deferred->composite2) + low res VL (composite5->composite15)`
- `const int colortex1Format = RGBA16;					// terrain gbuffer (gbuffer->composite2)`
- `const int colortex2Format = RGBA16F;				// forward + transparencies (gbuffer->composite4)`
- `const int colortex3Format = R11F_G11F_B10F;			// frame buffer + bloom (deferred6->final)`
- `const int colortex4Format = RGBA16F;				// light values and skyboxes (everything)`
- `const int colortex6Format = R11F_G11F_B10F;			// additionnal buffer for bloom (composite3->final)`
- `const int colortex7Format = RGBA8;					// Final output, transparencies id (gbuffer->composite4)`
- `const int colortex8Format = RGBA8;					// Specular Texture`
- `const int colortex9Format = RGBA8;					// rain in alpha`
- `const int colortex10Format = RGBA16;				// resourcepack Skies`
- `const int colortex11Format = RGBA16; 				// unchanged translucents albedo, alpha and tangent normals`
- `const int colortex12Format = RGBA16F;				// DISTANT HORIZONS + VANILLA MIXED DEPTHs`
- `const int colortex13Format = RGBA16F;				// low res VL (composite5->composite15)`
- `const int colortex14Format = RGBA16;					// rg = SSAO and SS-SSS. a = skylightmap for translucents.`
- `const int colortex15Format = RGBA8;					// flat normals and vanilla AO`
- `const bool colortex0Clear = false;`
- `const bool colortex1Clear = false;`
- `const bool colortex2Clear = true;`
- `const bool colortex3Clear = false;`
- `const bool colortex4Clear = false;`
- `const bool colortex5Clear = false;`
- `const bool colortex6Clear = false;`
- `const bool colortex7Clear = false;`
- `const bool colortex8Clear = false;`
- `const bool colortex9Clear = true;`
- `const bool colortex10Clear = true;`
- `const bool colortex11Clear = true;`
- `const bool colortex12Clear = false;`
- `const bool colortex13Clear = false;`
- `const bool colortex14Clear = true;`
- `const bool colortex15Clear = false;`
- `const int colortex5Format = RGBA32F;// TAA buffer (everything)`
- `const int colortex5Format = R11F_G11F_B10F;	// TAA buffer (everything)`
- `const vec2 constant1 = 65535. / vec2( 256., 65536.);`
- `const float constant2 = 256. / 255.;`
- `const vec3 mantissaBits = vec3(6.,6.,5.);`
- `float linearizeDepthFast(const in float depth, const in float near, const in float far) {`
- `float invertlinearDepthFast(const in float depth, const in float near, const in float far) {`

## Funciones detectadas (heurística)

- `vec2 decodeVec2(float a)` — línea 86
- `float luma(vec3 color)` — línea 92
- `float interleaved_gradientNoise()` — línea 95
- `vec4 fp10Dither(vec4 color ,float dither)` — línea 104
- `vec3 toClipSpace3Prev(vec3 viewSpacePosition)` — línea 110
- `vec3 tonemap(vec3 col)` — línea 113
- `vec3 invTonemap(vec3 col)` — línea 116
- `void convertHandDepth(inout float depth)` — línea 119
- `float convertHandDepth2( float depth)` — línea 124
- `float ld(float dist)` — línea 142
- `float DH_ld(float dist)` — línea 145
- `float DH_inv_ld(float lindepth)` — línea 148
- `vec3 toClipSpace3Prev_DH( vec3 viewSpacePosition, bool depthCheck )` — línea 159
- `vec3 toScreenSpace_DH_special(vec3 POS, bool depthCheck )` — línea 169
- `vec4 computeTAA(vec2 texcoord, bool hand)` — línea 317
- `void main()` — línea 411

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.
