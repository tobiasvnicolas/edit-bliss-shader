# Bliss Shader — Documentación técnica (español)

Este documento proporciona una descripción técnica extensa del proyecto "Bliss Shader" (rama estable). Está pensado para alimentar modelos de conocimiento como NotebookLM y para que desarrolladores comprendan la finalidad, estructura y detalles de cada archivo.

Resumen ejecutivo
-----------------
Bliss es una colección de GLSL y archivos de configuración diseñados como un shader pack para Minecraft (basado en Chocapic13 y múltiples contribuciones). El paquete implementa:
- Sistema de rendering diferido (G-buffers) con múltiples pases.
- Sombreado directo (sol/luna) y ambiental avanzado (LPV, AO, SSS).
- Efectos atmosféricos: niebla volumétrica, nubes volumétricas, scattering de Rayleigh/Mie.
- Post-procesado: TAA, DOF, tonemapping, bloom, Purkinje effect, color grading.
- Soporte para mods y motores (Iris, Distant Horizons) y optimizaciones Condicionales.

Tecnologías y formatos
----------------------
- GLSL (OpenGL Shading Language) — archivos `.vsh` (vertex), `.fsh` (fragment), `.csh` (compute).
- Archivo de configuración con sintaxis propietaria tipo `*.properties` usado por el motor de shaders de Minecraft (skylight/shader pack loader).
- Recursos: texturas (PNG + `.mcmeta`), archivos `.lang` para localización.
- Estructura modular: `lib/` para includes GLSL reutilizables, `dimensions/` para pases por mundo, `template/` para ejemplo de empaquetado.

Estructura de carpetas (alto nivel)
-----------------------------------
- `shaders/`
  - `dimensions/` — Pases GLSL por mundo/propósito (composite, deferred, final, shadowcomp, etc).
  - `lib/` — Librerías GLSL reutilizables (lighting, fog, shadows, utilidades).
  - `lang/` — Localización en múltiples idiomas.
  - `texture/` — Texturas auxiliares (ruido), `.mcmeta`.
  - `template/` — Plantillas y scripts auxiliares.
  - `shaders.properties`, `block.properties`, `entity.properties`, `item.properties` — Metadatos de carga y configuración.
- `README.md` — Introducción y guías de descarga.

Descripción por carpetas y archivos clave
-----------------------------------------
Nota: me centro en los archivos más relevantes para entender la arquitectura.

1) `shaders/shaders.properties`
- Función: archivo principal que define configuraciones globales y macros utilizadas por el sistema de shaders. Maneja condiciones (#ifdef), habilita/deshabilita programas (`program.xxx.enabled`), define blending, alpha tests y sliders para la UI.
- Contenido clave observado:
  - Opciones de compatibilidad (Iris, LPV, Distante Horizons).
  - Definición de texturas (noise, composite.colortex6).
  - Variables uniform/variable de uso global (sunVec, upVec, view_res, texelSize, etc).
  - Configuración del layout de UI (`screen.*`), que organiza sliders y secciones.
- Finalidad técnica: Orquestar qué pases se compilan/ejecutan, proveer uniforms compartidos y parámetros para el pack de shaders.
- Recomendaciones: Documentar macros esperadas por loader (por ejemplo `IS_IRIS`, `LPV_ENABLED`) y establecer valores por defecto en el README del paquete.

2) `shaders/dimensions/` (ejemplos: `composite.fsh`, `deferred.fsh`, `final.fsh`, `shadowcomp.csh`)
- Función general: cada archivo representa un "program" (pase) que puede ejecutarse en distintos mundos o etapas.
- Pases habituales:
  - G-buffers (generación de posiciones normales/albedo/metalness/roughness/ao).
  - Deferred lighting passes (aplica iluminación con G-buffer).
  - Composite passes (combinar buffers, aplicar SSR, DOF, TAA y tonemapping).
  - Final pass (salida a pantalla y efectos de post-procesado final).
  - Compute shaders (`.csh`) para tareas como shadow comp o floodfill (LPV).
- Contrato típico de un fragment shader de pase:
  - Inputs: múltiples `colortexN` (G-buffers), depth, normal, camera params como `view_res`, `texelSize`.
  - Outputs: color final o buffers intermedios; puede escribir a `image2D` en compute.
  - Errores: dependencias de defines (p. ej. `TRANSLUCENT_ENTITIES`, `IS_IRIS`) producen paths distintos.
- Notas sobre optimización:
  - Muchos pases tienen blending y alpha-test configurados desde `shaders.properties`.
  - Varios archivos `compositeX` indican variantes/experimentos (composite1..12).

3) `shaders/lib/` (ejemplos: `Shadows.glsl`, `diffuse_lighting.glsl`, `util.glsl`, `PhotonGTAO.glsl`)
- Función: contener funciones GLSL reutilizables, estructuras de datos y macros. Se incluyen en los pases sintácticamente o mediante preprocesamiento del loader.
- Componentes importantes:
  - `Shadows.glsl` — código para sombra de mapa, filtro de penumbra, búsqueda de penumbra variable.
  - `diffuse_lighting.glsl` — BRDF simple o modelos de iluminación usados en pases diferidos.
  - `PhotonGTAO.glsl` y `ROBOBO_sky.glsl` — implementaciones avanzadas: oclusión ambiante avanzada, sky models.
  - `TAA_jitter.glsl` — jitter para Temporal Anti-Aliasing.
- Finalidad: centralizar lógica física/estética para consistencia entre pases, reducir duplicación.

4) `shaders/lang/` (ej: `en_us.lang`, `pt_br.lang`, `ru_RU.lang`, `zh_cn.lang`)
- Function: traducciones de etiquetas de UI y sliders.
- Importante para la integración con el menú de shaders y para que NotebookLM entienda las claves y sus significados.

5) `shaders/texture/` — texturas de ruido y metadatos
- `blueNoise.png.mcmeta` y `noises.png.mcmeta` — texturas de ruido usadas para dithering, TAA, SSAO aleatoriedad.
- Recomendación: incluir las imágenes originales y su licencia en el proyecto para claridad.

6) `shaders/template/` — plantillas y readme
- Plantillas para empaquetado y archivos `block/entity/item.properties` de ejemplo.

Files menores / metadata: `block.properties`, `entity.properties`, `item.properties`
- Contienen reglas de cómo mapear ciertos recursos y propiedades a tipos de objetos del juego. Muy útiles para modders.

Variables y uniformes globales clave (extracto relevante)
------------------------------------------------------
- view_res, texelSize — resolución y tamaño del texel.
- sunVec, upVec, sunElevation — orientación del sol y signo de luz (día/noche).
- shadowCamera, shadowLightVec, shadowMaxProj — parámetros para sombras.
- frameCounter/framemod8 — para animaciones temporales y jitter.
- texture.noise, texture.composite.colortex6 — texturas usadas en muchos pases.

Macros y compatibilidad
-----------------------
- Macros observadas: IS_IRIS, LPV_ENABLED, TRANSLUCENT_ENTITIES, DISTANT_HORIZONS, CLOUDS_INTERSECT_TERRAIN, WATER_ON_CAMERA_EFFECT, etc.
- El sistema usa preprocesador tipo C para habilitar bloques condicionales. La documentación debe listar macros esperadas y su efecto.

Contratos y supuestos (pequeño contrato para cada pase)
-----------------------------------------------------
- Inputs esperados:
  - Buffers: `colortex0..n` según pase (albedo, normals, specular, velocity, depth).
  - Uniforms: `view_res`, `view_pixel_size`, `sunVec`, `shadowCamera`, matrices de cámara.
- Outputs:
  - Color o escritura en `image2D` (LPV/voxel data).
- Failure modes:
  - Ausencia de textura o G-buffer produce artefactos (colores magenta o negro).
  - Definiciones faltantes por loader pueden inhabilitar bloques importantes (p. ej. `LPV_ENABLED` requiere imágenes expuestas por el motor).

Casos borde y pruebas sugeridas
-------------------------------
- Cambiar resoluciones y verificar estabilidad de TAA y jitter.
- Activar/desactivar LPV y comprobar que no haya uso de imágenes inexistentes.
- Probar con resourcepacks con distintos valores de `RESOURCEPACK_SKY`.
- Verificar blending en `composite` con varios passes activados (composite1..12).
- Pruebas de smoke: deshabilitar `texture/noises.png` y observar fallback.

Recomendaciones para NotebookLM
-------------------------------
- Proveer este archivo `docs/technical_overview_es.md` y el notebook JSON que se genera a continuación. Incluir fragmentos clave como `shaders.properties` y ejemplos de `lib/` para que los embeddings los enlacen.
- Añadir metadatos en la raíz (`docs/metadata.json`) con: lista de archivos principales, macros importantes, comandos para reconstruir el paquete (si aplica) y licencias.

Siguientes pasos y mejoras proactivas
------------------------------------
- Generar un `docs/INDEX.md` que haga referencia a archivos con ejemplos minimalistas para cada pase.
- Añadir tests automáticos: pequeños scripts que verifiquen la validez sintáctica GLSL (glslangValidator) para todos los archivos `.vsh/.fsh/.csh`.
- Añadir un archivo `LICENSES.md` que especifique licencias de terceros (Chocapic13, contribuciones).

Anexos: lista de archivos detectados (extracto)
----------------------------------------------
- `shaders/shaders.properties` — configuraciones globales.
- `shaders/dimensions/` — composite.fsh, composite.vsh, deferred.fsh, final.fsh, shadowcomp.csh, setup.csh, etc.
- `shaders/lib/` — blocks.glsl, bokeh.glsl, HSV.glsl, Shadows.glsl, PhotonGTAO.glsl, util.glsl, etc.
- `shaders/lang/` — en_us.lang, pt_br.lang, ru_RU.lang, zh_cn.lang.
- `shaders/texture/` — blueNoise.png.mcmeta, noises.png.mcmeta.


---
Fin del documento técnico. Si quieres, puedo expandir las descripciones archivo por archivo (por ejemplo desglosar `lib/` con funciones y firmas), generar el notebook JSON listo para NotebookLM, o crear scripts de validación.

Documentación detallada por archivo (lib/ y dimensions/ leídos)
-------------------------------------------------------------
A continuación se documentan de forma concisa pero técnica los archivos leídos durante el análisis. Cada sección incluye: finalidad, funciones/constantes relevantes, inputs/outputs y notas de integración.

1) `shaders/lib/Shadows.glsl`
- Finalidad: Corregir artefactos de sombras (light leaking, shadow acne) y proveer utilidades/algoritmos para sampling y filtrado de mapas de sombras.
- Funciones/constantes clave:
  - `GriAndEminShadowFix(inout vec3 WorldPos, vec3 FlatNormal, float VanillaAO, float SkyLightmap)` — aplica un bias adaptativo dependiente de distancia y resolución para reducir "peter-panning" y fugas de luz.
  - Variantes de filtros y heurísticas para `Variable_Penumbra_Shadows` y búsqueda de bloqueadores (VPS_Search_Samples, shadowMapResolution).
- Inputs/Outputs:
  - Inputs: posiciones en mundo, normales planas, parámetros de shadowmap (resolución, distancia), texturas de shadowmap.
  - Outputs: ajustes aplicados a posiciones/worldpos o parámetros usados por el pase que califica el radio de filtro.
- Notas:
  - Usa heurísticas dependientes de `shadowDistance` y `shadowMapResolution` para ajustar bias.
  - Integración con pases que calculan proyecciones en espacio de shadow via `shadowModelView` y `shadowProjection`.

2) `shaders/lib/diffuse_lighting.glsl`
- Finalidad: Cálculos principales de iluminación basada en lightmaps, luz de bloque y mezcla con LPV cuando está habilitado.
- Funciones/constantes clave:
  - `doBlockLightLighting(...)` — mezcla luz de bloque con sample LPV si `IS_LPV_ENABLED` está definido; aplica curva de lightmap y falloff.
  - `doIndirectLighting(...)` — calcula luz indirecta a partir de lightmap y factores mínimos de iluminación nocturna/ambient.
- Inputs/Outputs:
  - Inputs: lightColor (vec3), lightmap (float), exposure, posiciones de jugador y coordenadas LPV.
  - Outputs: vec3 con contribution de luz directa + indirecta lista para sumarse al shading final.
- Notas:
  - Cuando LPV está disponible, utiliza `SampleLpvLinear` y funciones auxiliares para mezclar LPV con fallback a iluminación "vanilla".
  - Introduce ajustes automáticos de brillo dependientes de `exposureValue`.

3) `shaders/lib/TAA_jitter.glsl` (y utilidades de jitter/TAA)
- Finalidad: Proveer patrones de jitter y offsets para Temporal Anti-Aliasing y TAA upscale.
- Contenido clave:
  - Constantes de offset (arrays de vec2 con muestras predefinidas) y helpers para generar offsets limpias/espiralados.
- Inputs/Outputs:
  - Inputs: frameCounter/seed, interacción con `RENDER_SCALE` y `TAA_UPSCALING`.
  - Outputs: offsets usados por los pases `composite`/`final` para samplear anteriores frames.
- Notas:
  - Los offsets están optimizados para reducir patrones y aliasing (espiral/Low discrepancy sequences).

4) `shaders/lib/PhotonGTAO.glsl`
- Finalidad: Implementación de una versión avanzada de SSAO (GTAO) con integración de SSS (subsurface scattering) y muestreo direccional.
- Funciones/constantes clave:
  - Constantes: `GTAO_SLICES`, `GTAO_HORIZON_STEPS`, `GTAO_RADIUS` y funciones `ambient_occlusion(...)`, `calculate_maximum_horizon_angle(...)`, `integrate_arc(...)`.
  - Utilidades: `screen_to_view_space`, `viewToWorld`, `encode/decode` normales y lightmaps.
- Inputs/Outputs:
  - Inputs: posiciones en view-space, normales, depth textures (`depthtex1`), parámetros de cámara y ruido.
  - Outputs: valor AO/SSS (vec2) que se almacena en G-buffer auxiliar para el pase compuesto.
- Notas:
  - Implementa búsqueda de horizonte por pasos y muestreo espiralado para reducir error de integración.
  - Tiene compatibilidad con `DISTANT_HORIZONS` para usar depth alternativo.

5) `shaders/dimensions/composite.fsh`
- Finalidad: Pase composite/denoise/SSAO/combiner que reconstruye iluminación desde G-buffers, calcula SSAO/SSS y prepara datos para post-procesado.
- Componentes clave observados:
  - Lectura de colortex1, colortex15, depth textures y manejo de `TAA_Offset`, `WsunVec`, `gbufferModelViewInverse`.
  - Cálculo de `SSAO_SSS` mediante `SSAO(...)` y almacenamiento de datos en `gl_FragData` para passes posteriores.
  - Soporte para `Variable_Penumbra_Shadows`, filtros de shadowmap y condiciones para `DISTANT_HORIZONS`.
- Inputs/Outputs:
  - Inputs: depthtex1, colortexN (G-buffers), noisetex, uniforms de cámara/sombra.
  - Outputs: múltiples `gl_FragData` (SSAO/SSS, shadow meta, etc.) según RENDERTARGETS especificados.
- Notas:
  - Es un pase central: muchas otras etapas dependen de los resultados que aquí se escriben.
  - Contiene lógica para mano (hand depth), entidades y tipos especiales (leaves, translucent flags).

6) `shaders/dimensions/deferred.fsh`
- Finalidad: Pase de deferred lighting / shading que consume el G-buffer y calcula iluminación directa/indirecta por píxel.
- Componentes clave:
  - Uso de utilidades: `toScreenSpace`, `SSAO`, `blueNoise`, `SpiralSample` y mezclas con `lightSourceColor` y `WsunVec`.
  - Maneja sky/atmosfera cuando `OVERWORLD_SHADER` definido; integra volumetric clouds, fog y parámetros de exposure.
- Inputs/Outputs:
  - Inputs: depthtex0/1, colortex1..n, shadowmaps, uniforms de cámara/tiempo y texturas de ruido.
  - Outputs: datos de ambiente/sky y valores de exposición temporales (escribe en `gl_FragData[0]` buffers de atmósfera y LUTs).
- Notas:
  - Este pase mezcla tareas de reconstrucción de iluminación con generación de texturas auxiliares (LUTs/atmósfera) que se reusan en passes posteriores.

7) `shaders/dimensions/final.fsh`
- Finalidad: Pase final de post-procesado que hace motion blur, efectos de gameplay (damage, water-on-camera), dither y demás transformaciones de color antes de presentar al framebuffer.
- Componentes clave:
  - Funciones: `doMotionBlur`, `doCameraGridLines`, llamadas a `applyGameplayEffects` (importadas de `gameplay_effects.glsl`).
  - Incluye procesos condicionales: `MOTION_BLUR`, `CAMERA_GRIDLINES`, `DEBUG_VIEW`.
- Inputs/Outputs:
  - Inputs: colortex7 (imagen acumulada), depth, shadowcolor1, previousCamera matrices y offsets TAA.
  - Outputs: `gl_FragColor` final.
- Notas:
  - Es el último paso visual; cambios aquí afectan la imagen final (tonemapping y grading normalmente aplicados en otros composite passes pero aquí se pueden ajustar).

8) `shaders/dimensions/setup.csh`
- Finalidad: Compute shader de preparación (setup) para LPV/voxelización u otras estructuras dependientes del mundo.
- Componentes clave:
  - Define `workGroups` y contiene lógica para muestrear bloques, identificar light sources y almacenar datos en `imageStore(imgBlockData, ...)`.
  - Relación directa con `shaders/lib/lpv_*` y `imgBlockData` usado por LPV.
- Inputs/Outputs:
  - Inputs: imágenes/texBlockData, constantes de bloques (incluidas desde `items.glsl`, `blocks.glsl`, `entities.glsl`, `lpv_blocks.glsl`).
  - Outputs: escritura a `imgBlockData` que es consumida por el sistema LPV.
- Notas:
  - Ejecuta en arreglos 2D (workgroups) y mapea IDs de bloque a propiedades de emisión/alcance.
  - Depende fuertemente de `IS_LPV_ENABLED` y extensiones `GL_EXT_shader_image_load_store`.

9) `shaders/lib/lpv_common.glsl`
- Finalidad: Constantes y helpers comunes para el sistema LPV (Light Propagation Volumes). Define el tamaño y coordine posiciones dentro del volumen.
- Componentes clave:
  - `LpvBlockSkyRange`, `LpvSize`, `LpvSize3` y `GetLpvPosition(...)` que transforma posiciones del jugador a coordenadas LPV.
- Inputs/Outputs:
  - Inputs: `cameraPosition`, `LPV_SIZE` macro/constantes.
  - Outputs: posiciones y escala usadas por sampling e indexado del LPV.
- Notas:
  - Es un archivo pequeño pero central para coherencia en cálculos LPV.

Limitaciones del análisis realizado
----------------------------------
- He documentado en detalle los archivos leídos y priorizados. El repositorio contiene muchos más archivos en `shaders/lib/` y `shaders/dimensions/` que pueden ser documentados de forma equivalente. Puedo automatizar la lectura y documentación archivo por archivo y generar una sección por cada uno en este documento (o en archivos separados en `docs/`).

Siguiente paso propuesto (automático)
-----------------------------------
- Si confirmas, ejecutaré un pase automático que leerá todos los archivos `.glsl`, `.fsh`, `.vsh`, `.csh` restantes y generará entradas estructuradas (finalidad + funciones/constantes + inputs/outputs) en `docs/` (uno o varios archivos grandes, o un árbol `docs/lib/` con un archivo por fuente). Esto puede tardar más y generará varios archivos `docs/`.

---
Actualización: documentación ampliada para los archivos leídos. Si quieres que "documente todo" por completo ahora, dime si prefieres:
- Opción A: Generar una entrada por cada archivo y colocarlas en `docs/lib/` (un archivo por fuente).
- Opción B: Consolidar todo en un único `docs/technical_overview_es.md` (puede crecer mucho).

Con esto finaliza la ampliación técnica hecha en esta pasada.
