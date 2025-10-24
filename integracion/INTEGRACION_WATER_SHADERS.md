## Integración de los shaders de agua (from Unity) al shader pack de Minecraft

Este documento explica paso a paso cómo adaptar e integrar los shaders exportados desde el proyecto de Unity (carpeta `integracion/`) para reemplazar y mejorar los shaders de agua del shader pack de Minecraft en este repositorio.

- Resumen rápido:
- Fuente: archivos referenciados en `integracion/QueExportar.md` (p.ej. `FluidRender.shader`, `NormalsFromDepth.shader`, `ParticleDepth.shader`, smoothing shaders, `BillboardFoam.shader`).
- Objetivo: portar la apariencia (refraction, reflection, foam, flow, smoothing) al shader pack de Minecraft.
- Alcance: solo apariencia visual (no simulación completa de fluidos).

---

## Contrato mínimo
- Inputs: texturas (normal map, flow/dudv, foam, thickness), depth buffer y color buffer del juego, parámetros (fresnel, IOR, foam intensity, wave strength).
- Outputs: fragment shader que reemplaza o se combina con el pass de agua existente, generando refracción, reflexión especular y espuma.
- Errores/limitaciones: diferencias de sistema de coordenadas (Unity vs OpenGL/GLSL), HLSL/CG -> GLSL manual conversion, nombres de uniforms y buffers a alinear con el pipeline de Minecraft.

## Requisitos previos
- Conocimientos básicos de GLSL y del pipeline de este repo (ficheros en `shaders/`, `lib/`).
- Herramientas: editor de texto, comparador de archivos, opción de activar pack de shaders en Minecraft para pruebas.

## Archivos exportados desde Unity (según `QueExportar.md`)
- ScreenSpace: `FluidRender.shader`, `NormalsFromDepth.shader`, `ParticleDepth.shader`, `ParticleThickness.shader`, `DepthDownsampleCopy.shader`, `SmoothThickPrepare.shader`.
- Smoothing: `GaussSmooth.shader`, `BilateralFilter2D.shader`, `BilaterialFilter1D.shader`.
- Foam: `BillboardFoam.shader`.
- Partículas: `ParticleBillboard.shader`, `Particle3DSurf.shader`.

## Paso 1 — Inspección y recursos
1. Copia las texturas necesarias a `texture/` del repo: normal maps, dudv/flow maps, foam atlas, thickness map. Mantén nombres descriptivos (p.ej. `water_normal.png`, `water_flow.png`, `water_foam.png`).
2. Identifica en el repo las utilidades existentes: por ejemplo `shaders/lib/waterBump.glsl` (útil para normal/perturb), `lib/indirect_lighting_effects.glsl`, `Shadows.glsl`. Reutilízalas en lugar de duplicar.

## Paso 2 — Decidir alcance (solo look o simulación completa)
- Si quieres solo la apariencia, no es necesario portar los `compute` de simulación: solamente portar `FluidRender.shader`, `NormalsFromDepth.shader` y los smoothing.
- La simulación completa (compute shaders) queda fuera del alcance de esta guía; aquí nos centramos en portar la apariencia y los efectos visuales (refraction, reflection, foam visual, smoothing y partículas como billboards).

## Paso 3 — Conversión HLSL/CG -> GLSL (reglas comunes)
Las shaders Unity suelen estar en HLSL/CG. Aquí las reglas más comunes:

- tex2D(sampler, uv)  -> texture(sampler, uv)
- tex2Dlod/sampler2Dlod -> textureLod(sampler, uv, lod)
- UNITY_MATRIX_MVP    -> usar la matriz de proyección/modelview del repo (p.ej. `u_MVP`) o `projection * modelview * vec4(pos,1.0)` según convenga.
- UNITY_MATRIX_IT_MV  -> usar la inversa-transpuesta de la matriz modelview si necesitas normales en world-space.
- semantics como :SV_Position, :COLOR -> eliminar y mapear a `gl_Position` y `out vec4` respectivamente.
- fixed/half/float -> usar `float` (y qualifiers precision si hace falta: `highp`, `mediump`).
- UNITY_SAMPLE_TEX2D(_MainTex, uv) -> texture(u_MainTex, uv)

Ejemplo muy pequeño — vertex HLSL -> GLSL

HLSL (Unity):

```hlsl
float4 vert(appdata_full v) : SV_POSITION {
    return UnityObjectToClipPos(v.vertex);
}
```

GLSL equivalente (esqueleto):

```glsl
layout(location = 0) in vec3 a_Position;
uniform mat4 u_MVP;
void main() {
    gl_Position = u_MVP * vec4(a_Position, 1.0);
}
```

## Paso 4 — Adaptación de uniforms y nombres de texturas
- Unity usa nombres como `_MainTex`, `_CameraDepthTexture`, `_CameraOpaqueTexture`; aquí define uniformes GLSL consistentes con el resto del proyecto, p.ej. `uniform sampler2D u_WaterNormal;`, `uniform sampler2D u_SceneColor;`, `uniform sampler2D u_SceneDepth;`.
- Alinea los parámetros que quieras exponer (fresnel power, IOR, foam intensity) con el sistema de configuración de este shader pack (revisar `shaders/lang/en_us.lang` por opciones de Water ya existentes).

## Paso 5 — Integrar en los passes del shader pack
1. Crea una carpeta de integración: `shaders/integracion/` y coloca allí los nuevos archivos GLSL/FS/VSH convertidos, p.ej. `water_integracion.vsh` y `water_integracion.fsh`.
2. Si el pack tiene un pass de water dedicado (p. ej. passes en `composite*.fsh` o un include específico), determine si reemplazar o encadenar: mejor opción es crear un pass nuevo que lea el color + depth ya renderizados y aplique refraction + foam. Esto evita tocar el pipeline de render de bloques.
3. Registra el nuevo pass en `shaders.properties` o el archivo de configuración que use el pack para cargar passes (buscar en este repo cómo se registran los passes—en muchos packs hay un `composite.fsh` que combina efectos). Si no hay un sistema automático, edita la pass que controla las superficies translúcidas.

Consejo: en vez de alterar el código que pinta bloques de agua, implementa un post-process screen-space pass que detecte píxeles con el material de agua mediante la depth/stencil o un mask, y aplique la refracción + foam. Varios efectos en `integracion/` (ScreenSpace) están pensados para esto.

## Fragment shader: depth -> world position (snippet)
Para efectos de refracción necesitas poder reconstruir la posición en view/world space desde la profundidad. Aquí un snippet GLSL típico:

```glsl
uniform mat4 u_InverseProjection; // inverse of projection matrix
uniform sampler2D u_SceneDepth;

vec3 reconstructViewPos(vec2 uv, float depth) {
    float z = depth * 2.0 - 1.0; // NDC z
    vec4 clip = vec4(uv * 2.0 - 1.0, z, 1.0);
    vec4 viewPos = u_InverseProjection * clip;
    viewPos /= viewPos.w;
    return viewPos.xyz;
}
```

Notas: asegúrate que el depth que tomas está en el mismo espacio/convención que el resto del pipeline. Si el pack guarda depth no-lineal, usa la misma fórmula de reconstrucción que utilice el repositorio.

## Paso 6 — Foam y partículas
- Los archivos `BillboardFoam.shader` y `ParticleDepth/Thickness` se pueden portar para generar la espuma como sprites sobre la superficie o como máscaras que combinen con el pass de agua.
- Para la espuma y partículas esta guía recomienda portar `BillboardFoam.shader` y las técnicas de thickness/depth como máscaras o sprites; la conversión/adaptación de `compute` desde Unity no se trata aquí.

## Paso 7 — Debugging y prueba
1. Prueba en pasos: primero renderiza normalsFromDepth y visualízalas como colores para validar que la reconstrucción de normales funciona.
2. Activa la refraction sin foam para verificar offsets y parámetros de IOR.
3. Agrega foam como máscara en blanco/negro para confirmar blend correcto.
4. Revisa que las normales y mapas dudv estén en espacio y orientación correcta (tangent-space) — si se ven invertidas, gira canales o invierte la componente Y.

## Errores comunes y soluciones
- Efectos duplicados / saturación: revisa que no estés aplicando múltiples veces la pasara de refraction (composite passes repetidos).
- Profundidad incorrecta: profundidad lineal vs no-lineal; usa la misma reconstrucción que el resto del pack.
- Coordenadas invertidas (Unity left-handed vs GL right-handed): valida normales y rotación de tangentes.

## Performance y optimizaciones
- Evita hacer sampling de escena completo múltiples veces: cachea muestreos (p.ej. color + depth) en variables locales.
- Reduce resoluciones para smoothing (downsample + bilateral blur) si el pack ofrece buffers intermedios.
- Usa mipmaps para normal/flow maps y textureLod para LOD control.

## Licencia y atribución
- Revisa la licencia del proyecto Unity del que provienen los shaders antes de distribuirlos. Si están bajo una licencia permisiva, incluye una nota de atribución en tu pack (por ejemplo, `integracion/README_LICENSE.md`).

## Checklist de integración (rápida)
- [ ] Copiar texturas a `texture/` y ajustar nombres.
- [ ] Convertir `FluidRender.shader` a `shaders/integracion/water_integracion.fsh` + `.vsh`.
- [ ] Convertir `NormalsFromDepth.shader` y smoothing shaders; colocarlos en `shaders/integracion/` o `shaders/lib/` según convenga.
- [ ] Añadir uniforms en el pass y mapearlos a las entradas del motor (`u_SceneColor`, `u_SceneDepth`, `u_CameraParams`, `u_InverseProjection`).
- [ ] Probar paso a paso (normales, refraction, foam).
- [ ] Ajustar parámetros y optimizar.

## Notas finales y siguientes pasos
- Si quieres puedo:
  - Convertir automáticamente `FluidRender.shader` de HLSL -> un borrador de GLSL y colocarlo en `shaders/integracion/` (requiere revisar el código HLSL exacto).
  - Probar un ejemplo mínimo de pantalla (screen-space pass) que aplique la refracción sobre los píxeles que correspondan a agua.

Si me das permiso, puedo empezar por convertir `FluidRender.shader` a GLSL y crear el pass mínimo de integración aquí mismo.

---
Archivo generado automáticamente: guía de integración (español).
