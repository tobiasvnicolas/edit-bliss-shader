# shaders\lib\lightning_stuff.glsl

**Ruta original:** `shaders\lib\lightning_stuff.glsl`

## Includes

(ninguno detectado)

## Uniforms / Variables detectadas

- `uniform vec3 lightningEffect;`
- `uniform vec4 lightningBoltPosition;`

## Defines / Preprocesador

- `#ifdef IS_IRIS`
- `#else`
- `#endif`
- `#ifdef TEST`
- `#else`
- `#endif`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

- `vec3 Iris_Lightningflash(vec3 feetPlayerPos, vec3 lightningBoltPos, vec3 WorldSpace_normal, inout float Phase)` — línea 8
- `vec3 Iris_Lightningflash_VLcloud(vec3 feetPlayerPos, vec3 lightningBoltPos)` — línea 31
- `vec3 Iris_Lightningflash_VLfog(vec3 feetPlayerPos, vec3 lightningBoltPos)` — línea 44

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.
