# Bliss Shader — Resumen para NotebookLM

Este documento contiene la representación estructurada y resumida del proyecto `Bliss-Shader-Stable` para facilitar la ingestión por NotebookLM. Incluye: resumen del propósito, árbol de carpetas, archivos clave, variables/uniformes importantes, macros y preguntas sugeridas para guiar el aprendizaje.

## Estructura de carpetas (alto nivel)

- `shaders/`
  - `dimensions/` — pases GLSL por mundo/etapa (composite, deferred, final, shadowcomp, setup).
  - `lib/` — librerías GLSL reutilizables (lighting, shadows, utils).
  - `lang/` — localizaciones.
  - `texture/` — texturas auxiliares y `.mcmeta`.
  - `template/` — plantillas y ejemplo de empaquetado.
  - `shaders.properties`, `block.properties`, `entity.properties`, `item.properties` — metadatos y configuración.

## Propósito general del proyecto

Bliss es un paquete de shaders para Minecraft que mejora el rendering con efectos avanzados de iluminación, sombras, atmósfera y post-procesado. Está basado en Chocapic13 y extiende funcionalidades con LPV (voxel global illumination), TAA, DOF, tonemapping y más.

## Archivos clave y su finalidad (extracto)

1. `shaders/shaders.properties` — Orquesta configuración global, define programas habilitados, blending y uniforms globales.
2. `shaders/dimensions/*.fsh/.vsh/.csh` — Pases de rendering (`composite`, `deferred`, `final`, `shadowcomp`, `setup`).
3. `shaders/lib/*.glsl` — Funciones y utilidades compartidas: sombras, iluminación, TAA, sky models.
4. `shaders/lang/*.lang` — Traducciones para la UI.
5. `shaders/texture/*.mcmeta` — Metadatos de texturas de ruido.

## Uniforms, variables y macros importantes

- Uniforms/variables globales: `view_res`, `texelSize`, `sunVec`, `upVec`, `sunElevation`, `shadowCamera`, `shadowLightVec`, `frameCounter`.
- Texturas: `texture/noises.png`, `texture/blueNoise.png`.
- Macros: `IS_IRIS`, `LPV_ENABLED`, `TRANSLUCENT_ENTITIES`, `DISTANT_HORIZONS`, `CLOUDS_INTERSECT_TERRAIN`, `WATER_ON_CAMERA_EFFECT`.

## Contrato de los pases (inputs/outputs/errores)

- Inputs: múltiples colortexN (G-buffer), depth, normals, matrices de cámara y uniforms descritos arriba.
- Outputs: color final a pantalla o escritura a imágenes (compute) para LPV / floodfill.
- Errores comunes: faltas de definiciones de macros o texturas ausentes que llevan a artefactos.

## Pruebas sugeridas rápidas

1. Validación sintáctica GLSL con `glslangValidator` en `shaders/dimensions` y `shaders/lib`.
2. Tests de integración: cambiar macros (p. ej. `LPV_ENABLED`) y verificar que los `program.*.enabled` correctos se activan.
3. Tests visuales: comparar frames con/ sin TAA, DOF, LPV para detectar flicker.

## Prompts sugeridos para NotebookLM

- Describe cómo el shader calcula la iluminación directa y qué archivos participan en ese proceso.
- Busca en `lib/` funciones relacionadas con TAA y resume su algoritmo.
- Explica el propósito de las macros `IS_IRIS` y `LPV_ENABLED` y cómo modifican el flujo de renderizado.

## Notas finales y pasos siguientes

He generado también `docs/technical_overview_es.md` con más detalle (archivo Markdown en español) que contiene: descripción por carpetas, recomendaciones y lista de archivos.
Siguientes opciones: generar un `docs/INDEX.md` con enlaces a cada archivo, crear un script `scripts/validate_glsl.ps1` que corra `glslangValidator` sobre todos los shaders, o expandir la documentación archivo por archivo.
