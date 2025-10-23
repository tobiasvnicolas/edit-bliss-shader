# shaders\lib\DistantHorizons_projections.glsl

**Ruta original:** `shaders\lib\DistantHorizons_projections.glsl`

## Includes

(ninguno detectado)

## Uniforms / Variables detectadas

- `uniform mat4 dhPreviousProjection;`
- `uniform mat4 dhProjectionInverse;`
- `uniform mat4 dhProjection;`

## Defines / Preprocesador

- `#ifdef DISTANT_HORIZONS`
- `#endif`
- `#ifdef DISTANT_HORIZONS`
- `#endif`
- `#ifdef DISTANT_HORIZONS`
- `#else`
- `#endif`
- `#ifdef DH_SHADOWPROJECTIONTWEAK`
- `#ifdef DISTANT_HORIZONS`
- `#endif`
- `#else`
- `#endif`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

- `vec3 toScreenSpace_DH( vec2 texcoord, float depth, float DHdepth )` — línea 7
- `vec3 toClipSpace3_DH( vec3 viewSpacePosition, bool depthCheck )` — línea 34
- `mat4 DH_shadowProjectionTweak( in mat4 projection)` — línea 45

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.
