# Integración de Shaders de Agua - Documentación

## 📋 Resumen

Este directorio contiene la conversión completa de los shaders de agua desde Unity (HLSL/CG) a GLSL para su integración en el shader pack de Minecraft. La conversión incluye efectos visuales avanzados de agua con refracción, reflexión, foam, y renderizado de partículas.

**Estado**: ✅ Conversión completada
**Fecha**: Octubre 2025
**Versión GLSL**: 3.30 core

---

## 📁 Estructura de Archivos

```
shaders/integracion/
├── lib/
│   ├── water_config.glsl      # Configuración y uniforms globales
│   └── water_utils.glsl        # Funciones compartidas (fresnel, refract, etc.)
├── water/
│   ├── water_render.vsh        # Vertex shader principal de agua
│   ├── water_render.fsh        # Fragment shader principal de agua
│   ├── normals_from_depth.vsh  # Vertex shader para cálculo de normales
│   ├── normals_from_depth.fsh  # Fragment shader para normales desde depth
│   ├── smooth_thick_prepare.vsh # Preparación de datos para smoothing
│   ├── smooth_thick_prepare.fsh
│   ├── depth_downsample_copy.vsh # Downsample de depth buffer
│   └── depth_downsample_copy.fsh
├── smoothing/
│   ├── bilateral_filter_1d.vsh # Bilateral filter separable (horizontal/vertical)
│   ├── bilateral_filter_1d.fsh
│   ├── bilateral_filter_2d.vsh # Bilateral filter 2D completo
│   ├── bilateral_filter_2d.fsh
│   ├── gauss_smooth.vsh        # Gaussian blur simple
│   └── gauss_smooth.fsh
└── particles/
    ├── particle_depth.vsh      # Depth rendering de partículas
    ├── particle_depth.fsh
    ├── particle_thickness.vsh  # Thickness accumulation de partículas
    ├── particle_thickness.fsh
    ├── billboard_foam.vsh      # Foam particles como billboards
    ├── billboard_foam.fsh
    ├── particle_billboard.vsh  # Partículas billboard simples
    ├── particle_billboard.fsh
    ├── particle_3d_surf.vsh    # Partículas como esferas 3D
    └── particle_3d_surf.fsh
```

---

## 🎯 Pipeline de Renderizado Recomendado

### Fase 1: Renderizado de Partículas
1. **particle_depth.vsh/fsh** - Renderizar depth de partículas
2. **particle_thickness.vsh/fsh** - Acumular thickness (additive blending)
3. **billboard_foam.vsh/fsh** - Renderizar foam particles

### Fase 2: Smoothing
4. **smooth_thick_prepare.vsh/fsh** - Empaquetar depth + thickness
5. **bilateral_filter_1d.vsh/fsh** (2 passes) - Suavizar con bilateral filter separable
   - Pass 1: horizontal (u_BlurDirection = vec2(1,0))
   - Pass 2: vertical (u_BlurDirection = vec2(0,1))

### Fase 3: Cálculo de Normales
6. **normals_from_depth.vsh/fsh** - Calcular normales desde depth buffer

### Fase 4: Renderizado Final de Agua
7. **water_render.vsh/fsh** - Aplicar refracción, reflexión, foam y color final

---

## 🔧 Uniforms Principales

### Configuración Global (water_config.glsl)

```glsl
// Texturas
uniform sampler2D u_SceneColor;         // Color buffer de la escena
uniform sampler2D u_SceneDepth;         // Depth buffer
uniform sampler2D u_ParticleDepth;      // Depth de partículas
uniform sampler2D u_ParticleThickness;  // Thickness de partículas

// Matrices de cámara
uniform mat4 u_InverseProjection;
uniform mat4 u_InverseView;
uniform mat4 u_ViewMatrix;
uniform mat4 u_ProjectionMatrix;
uniform vec3 u_CameraPosition;

// Parámetros de agua
uniform vec3 u_ExtinctionCoefficients;  // Absorción de luz (RGB)
uniform float u_RefractionMultiplier;   // Fuerza de refracción
uniform float u_IOR;                    // Índice de refracción (1.33 para agua)

// Iluminación
uniform vec3 u_SunDirection;
uniform float u_SunIntensity;
uniform float u_AmbientLight;
```

---

## 🎨 Características Implementadas

### ✅ Efectos de Agua
- [x] Refracción realista con ecuaciones de Fresnel
- [x] Reflexión especular
- [x] Absorción de luz (extinction coefficients)
- [x] Smooth edge normals en boundaries
- [x] Ray-box intersection para volumetric bounds

### ✅ Smoothing
- [x] Bilateral filter 1D (separable, mejor performance)
- [x] Bilateral filter 2D (completo)
- [x] Gaussian blur básico
- [x] Depth-aware filtering (preserva bordes)

### ✅ Partículas y Foam
- [x] Particle depth rendering (billboard spheres)
- [x] Thickness accumulation
- [x] Foam particles con lifetime y dissolve
- [x] Velocity-based coloring
- [x] 3D sphere particles (opción alternativa)

### ✅ Utilidades
- [x] Conversión RGB ↔ HSV
- [x] Random number generation (PCG)
- [x] View/World position reconstruction
- [x] Screen-space radius calculation

---

## 🚀 Cómo Usar

### Paso 1: Incluir los archivos de configuración

En tus shaders principales, incluye:

```glsl
#include "integracion/lib/water_config.glsl"
#include "integracion/lib/water_utils.glsl"
```

### Paso 2: Configurar uniforms

Asegúrate de pasar estos uniforms desde tu aplicación:

```cpp
// Matrices
glUniformMatrix4fv(u_InverseProjection, ...);
glUniformMatrix4fv(u_InverseView, ...);
glUniform3fv(u_CameraPosition, ...);

// Parámetros de agua
glUniform3f(u_ExtinctionCoefficients, 0.3, 0.1, 0.05); // Azul claro
glUniform1f(u_IOR, 1.33); // Agua
glUniform1f(u_RefractionMultiplier, 1.0);
```

### Paso 3: Renderizar en orden

1. Clear buffers
2. Render particles → depth + thickness textures
3. Smooth depth + thickness
4. Calculate normals from smoothed depth
5. Render final water with all data

---

## ⚙️ Parámetros Ajustables

### Refracción y Reflexión
- `u_IOR` (1.0 - 2.0): Índice de refracción
  - Agua: 1.33
  - Vidrio: 1.5
  - Diamante: 2.4
  
- `u_RefractionMultiplier` (0.0 - 2.0): Fuerza de distorsión refractiva

### Absorción de Luz
- `u_ExtinctionCoefficients` (vec3):
  - Agua clara: (0.3, 0.1, 0.05)
  - Agua turbia: (0.5, 0.3, 0.2)
  - Agua oscura: (0.8, 0.6, 0.4)

### Smoothing
- `u_WorldRadius`: Radio en unidades del mundo
- `u_MaxScreenSpaceRadius`: Máximo radio en píxeles (performance)
- `u_Strength`: Fuerza del blur (sigma multiplier)
- `u_DiffStrength`: Sensibilidad a diferencias de profundidad

---

## 🐛 Debug Modes

El shader principal incluye modos de debug (`u_DebugDisplayMode`):

- `0`: Normal rendering
- `1`: Raw depth visualization
- `2`: Smoothed depth
- `3`: Normals (RGB color-coded)
- `4`: Raw thickness
- `5`: Smoothed thickness

Activa con:
```glsl
glUniform1i(u_DebugDisplayMode, 3); // Ver normales
```

---

## 📊 Performance

### Recomendaciones de Optimización

1. **Use bilateral filter 1D** en lugar de 2D (2 passes vs N² samples)
2. **Limit screen-space radius**: `u_MaxScreenSpaceRadius = 32` es suficiente
3. **Downsample**: Aplicar smoothing a mitad de resolución
4. **Cache**: Reutilizar depth buffer entre frames si la cámara no se mueve

### Complejidad Estimada

- **Bilateral 1D**: O(n) × 2 passes donde n = radius
- **Bilateral 2D**: O(n²) donde n = radius
- **Water render**: O(1) per pixel + ray tracing (simple box intersection)

---

## 🔄 Conversiones Aplicadas

### HLSL/CG → GLSL

| Unity/HLSL | GLSL Equivalent |
|------------|-----------------|
| `tex2D(sampler, uv)` | `texture(sampler, uv)` |
| `tex2Dlod(sampler, float4(uv,0,lod))` | `textureLod(sampler, uv, lod)` |
| `UNITY_MATRIX_MVP` | `u_ProjectionMatrix * u_ViewMatrix * u_ModelMatrix` |
| `unity_CameraInvProjection` | `u_InverseProjection` |
| `unity_CameraToWorld` | `u_InverseView` |
| `_WorldSpaceCameraPos` | `u_CameraPosition` |
| `lerp(a, b, t)` | `mix(a, b, t)` |
| `saturate(x)` | `clamp(x, 0.0, 1.0)` |
| `frac(x)` | `fract(x)` |
| `1.#INF` | `1e10` (INF constant) |
| `:SV_Position` | `gl_Position` |
| `out float Depth : SV_Depth` | `gl_FragDepth` |

---

## 📝 Notas Importantes

### Sistema de Coordenadas
- Unity usa **left-handed** Y-up
- OpenGL usa **right-handed** Y-up
- Las normales y vectores de cámara ya están adaptados

### Depth Buffer
- Unity usa **reversed depth** en algunos casos
- Los shaders asumen depth lineal estándar
- Ajusta `LinearDepthToUnityDepth()` si es necesario

### Instancing
- Los shaders de partículas usan `gl_InstanceID`
- Necesitas configurar instanced rendering en tu motor
- Alternativa: usar geometry shader o manual batching

---

## 🔗 Referencias

- **Shader original**: Unity FluidRender (proyecto de física de fluidos)
- **Bilateral filtering**: Tomasi & Manduchi (1998)
- **Fresnel equations**: Physics-based rendering
- **PCG random**: O'Neill (2014) - www.pcg-random.org

---

## 📄 Licencia

Estos shaders son conversiones de código Unity con propósitos educativos. Revisar licencia del proyecto original antes de uso comercial.

---

## ✏️ Autor de la Conversión

**Conversión HLSL → GLSL**: GitHub Copilot
**Fecha**: Octubre 2025
**Proyecto**: Integración de shaders de agua para Minecraft shader pack

---

## 🆘 Soporte y Troubleshooting

### Problema: Normales invertidas
**Solución**: Invierte el orden del cross product en `normals_from_depth.fsh`:
```glsl
vec3 viewNormal = normalize(cross(ddx, ddy)); // Cambiar orden
```

### Problema: Refracción muy fuerte
**Solución**: Reduce `u_RefractionMultiplier` o aumenta `u_ExtinctionCoefficients`

### Problema: Smoothing no funciona
**Solución**: Verifica que `u_WorldRadius` y `u_Strength` no sean 0

### Problema: Performance bajo
**Solución**: 
- Usa bilateral 1D en lugar de 2D
- Reduce `u_MaxScreenSpaceRadius`
- Aplica smoothing a resolución reducida

---

## 🎓 Conceptos Implementados

- **Screen-Space Fluid Rendering**: Técnica para renderizar fluidos sin mallas complejas
- **Bilateral Filtering**: Preserva bordes mientras suaviza
- **Fresnel Equations**: Calcula reflectancia/transmitancia en interfaces
- **Beer-Lambert Law**: Absorción de luz en medios (extinction coefficients)
- **Billboard Rendering**: Optimización para partículas que siempre miran a cámara
- **Procedural Depth**: Calcular depth para geometría implícita (esferas)

---

¡Integración completada! 🎉
