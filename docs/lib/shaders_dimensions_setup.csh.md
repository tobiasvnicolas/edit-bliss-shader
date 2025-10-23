# shaders\dimensions\setup.csh

**Ruta original:** `shaders\dimensions\setup.csh`

## Includes

- `/lib/items.glsl`
- `/lib/blocks.glsl`
- `/lib/entities.glsl`
- `/lib/lpv_blocks.glsl`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#ifdef IS_LPV_ENABLED`
- `#endif`
- `#ifdef IS_LPV_ENABLED`
- `#ifdef LPV_COLORED_CANDLES`
- `#else`
- `#endif`
- `#ifdef LPV_REDSTONE_LIGHTS`
- `#endif`
- `#ifdef LPV_REDSTONE_LIGHTS`
- `#endif`
- `#endif`

## Constantes detectadas

- `const ivec3 workGroups = ivec3(6, 6, 1);`
- `const vec3 LightColor_Amethyst = vec3(0.464, 0.227, 0.788);`
- `const vec3 LightColor_Candles = vec3(1.0, 0.4, 0.1);`
- `const vec3 LightColor_CopperBulb = vec3(1.0);`
- `const vec3 LightColor_LightBlock = vec3(1.0);`
- `const vec3 LightColor_RedstoneTorch = vec3(0.939, 0.305, 0.164);`
- `const vec3 LightColor_SeaPickle = vec3(0.283, 0.394, 0.212);`
- `const vec3 LightColor_Candles_Black = vec3(0.200);`
- `const vec3 LightColor_Candles_Blue = vec3(0.000, 0.259, 1.000);`
- `const vec3 LightColor_Candles_Brown = vec3(0.459, 0.263, 0.149);`
- `const vec3 LightColor_Candles_Cyan = vec3(0.000, 0.839, 0.839);`
- `const vec3 LightColor_Candles_Gray = vec3(0.329, 0.357, 0.388);`
- `const vec3 LightColor_Candles_Green = vec3(0.263, 0.451, 0.000);`
- `const vec3 LightColor_Candles_LightBlue = vec3(0.153, 0.686, 1.000);`
- `const vec3 LightColor_Candles_LightGray = vec3(0.631, 0.627, 0.624);`
- `const vec3 LightColor_Candles_Lime = vec3(0.439, 0.890, 0.000);`
- `const vec3 LightColor_Candles_Magenta = vec3(0.757, 0.098, 0.812);`
- `const vec3 LightColor_Candles_Orange = vec3(1.000, 0.459, 0.000);`
- `const vec3 LightColor_Candles_Pink = vec3(1.000, 0.553, 0.718);`
- `const vec3 LightColor_Candles_Purple = vec3(0.569, 0.000, 1.000);`
- `const vec3 LightColor_Candles_Red = vec3(0.859, 0.000, 0.000);`
- `const vec3 LightColor_Candles_White = vec3(1.000);`
- `const vec3 LightColor_Candles_Yellow = vec3(1.000, 0.878, 0.000);`
- `uint BuildLpvMask(const in uint north, const in uint east, const in uint south, const in uint west, const in uint up, const in uint down) {`
- `mat4 GetSaturationMatrix(const in float saturation) {`
- `const vec3 luminance = vec3(0.3086, 0.6094, 0.0820);`
- `const float saturationF = LPV_SATURATION / 100.0;`
- `const float tintSaturationF = LPV_TINT_SATURATION / 100.0;`

## Funciones detectadas (heurística)

- `void main()` — línea 54
- `else if(blockId == ITEM_LAVA_BUCKET)` — línea 561
- `else if(blockId == BLOCK_WALL_POST_TALL_N_S || blockId == BLOCK_WALL_TALL_N_S)` — línea 1080
- `else if(blockId == BLOCK_WALL_POST_TALL_W_E || blockId == BLOCK_WALL_TALL_W_E)` — línea 1083

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.
