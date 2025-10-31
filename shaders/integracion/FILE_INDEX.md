# Índice de Archivos - Water Shaders Integration

## 📚 Todos los Archivos Creados

### 📁 /lib/ - Bibliotecas Compartidas (2 archivos)

| Archivo | Descripción | Líneas | Funciones Principales |
|---------|-------------|--------|----------------------|
| `water_config.glsl` | Configuración y uniforms | ~150 | Defines, uniforms globales |
| `water_utils.glsl` | Funciones utilitarias | ~350 | Fresnel, refract, reflect, RGB↔HSV, random, ray-box |

---

### 📁 /water/ - Shaders de Agua Core (8 archivos)

| Archivo | Tipo | Descripción | Original Unity |
|---------|------|-------------|----------------|
| `water_render.vsh` | Vertex | Fullscreen quad | FluidRender.shader |
| `water_render.fsh` | Fragment | Rendering principal con refracción/reflexión | FluidRender.shader |
| `normals_from_depth.vsh` | Vertex | Fullscreen quad | NormalsFromDepth.shader |
| `normals_from_depth.fsh` | Fragment | Cálculo de normales desde depth | NormalsFromDepth.shader |
| `smooth_thick_prepare.vsh` | Vertex | Fullscreen quad | SmoothThickPrepare.shader |
| `smooth_thick_prepare.fsh` | Fragment | Empaquetado depth+thickness | SmoothThickPrepare.shader |
| `depth_downsample_copy.vsh` | Vertex | Fullscreen quad | DepthDownsampleCopy.shader |
| `depth_downsample_copy.fsh` | Fragment | Copia/downsample de depth | DepthDownsampleCopy.shader |

**Características**:
- Refracción con IOR configurable
- Reflexión con ecuaciones de Fresnel
- Absorción de luz (extinction)
- Smooth edge normals
- Ray-box intersection
- Environment sampling (sky + floor)

---

### 📁 /smoothing/ - Filtros de Suavizado (6 archivos)

| Archivo | Tipo | Descripción | Passes | Original Unity |
|---------|------|-------------|--------|----------------|
| `bilateral_filter_1d.vsh` | Vertex | Fullscreen quad | - | BilateralFilter1D.shader |
| `bilateral_filter_1d.fsh` | Fragment | Bilateral separable | 2 (H+V) | BilateralFilter1D.shader |
| `bilateral_filter_2d.vsh` | Vertex | Fullscreen quad | - | BilateralFilter2D.shader |
| `bilateral_filter_2d.fsh` | Fragment | Bilateral completo | 1 | BilateralFilter2D.shader |
| `gauss_smooth.vsh` | Vertex | Fullscreen quad | - | GaussSmooth.shader |
| `gauss_smooth.fsh` | Fragment | Gaussian blur | 2 (H+V) | GaussSmooth.shader |

**Características**:
- Depth-aware filtering (bilateral)
- Preservación de bordes
- Kernels adaptativos (screen-space radius)
- Gaussian weights
- Separable implementation (mejor performance)

---

### 📁 /particles/ - Sistema de Partículas (10 archivos)

| Archivo | Tipo | Descripción | Instanced | Original Unity |
|---------|------|-------------|-----------|----------------|
| `particle_depth.vsh` | Vertex | Billboard particles | ✓ | ParticleDepth.shader |
| `particle_depth.fsh` | Fragment | Depth rendering | - | ParticleDepth.shader |
| `particle_thickness.vsh` | Vertex | Billboard particles | ✓ | ParticleThickness.shader |
| `particle_thickness.fsh` | Fragment | Thickness accumulation | - | ParticleThickness.shader |
| `billboard_foam.vsh` | Vertex | Foam billboards | ✓ | BillboardFoam.shader |
| `billboard_foam.fsh` | Fragment | Foam rendering | - | BillboardFoam.shader |
| `particle_billboard.vsh` | Vertex | Simple billboards | ✓ | ParticleBillboard.shader |
| `particle_billboard.fsh` | Fragment | Billboard rendering | - | ParticleBillboard.shader |
| `particle_3d_surf.vsh` | Vertex | 3D sphere particles | ✓ | Particle3DSurf.shader |
| `particle_3d_surf.fsh` | Fragment | Surface shading | - | Particle3DSurf.shader |

**Características**:
- Billboard rendering (camera-facing)
- Instanced rendering support
- Velocity-based coloring
- Lifetime/dissolve animation
- Additive blending (thickness)
- Depth output para compositing

---

### 📁 /docs/ - Documentación (4 archivos)

| Archivo | Propósito | Páginas | Audiencia |
|---------|-----------|---------|-----------|
| `README.md` | Documentación completa | ~500 líneas | Desarrolladores |
| `QUICK_START.md` | Guía de inicio rápido | ~400 líneas | Usuarios |
| `CONVERSION_SUMMARY.md` | Resumen de conversión | ~600 líneas | Técnicos |
| `FILE_INDEX.md` | Este archivo | ~300 líneas | Referencia |

---

## 📊 Estadísticas Generales

### Por Tipo de Archivo
- **Vertex Shaders (.vsh)**: 12 archivos
- **Fragment Shaders (.fsh)**: 12 archivos
- **Libraries (.glsl)**: 2 archivos
- **Documentation (.md)**: 4 archivos
- **TOTAL**: 30 archivos

### Por Categoría
- **Core Water**: 8 archivos (27%)
- **Smoothing**: 6 archivos (20%)
- **Particles**: 10 archivos (33%)
- **Libraries**: 2 archivos (7%)
- **Docs**: 4 archivos (13%)

### Líneas de Código
- **Shaders GLSL**: ~3,500 líneas
- **Libraries**: ~500 líneas
- **Documentation**: ~2,000 líneas
- **TOTAL**: ~6,000 líneas

---

## 🎯 Shaders por Función

### Rendering Principal
1. `water_render.fsh` - Shader principal de agua

### Preprocessing
2. `normals_from_depth.fsh` - Generar normales
3. `smooth_thick_prepare.fsh` - Empaquetar datos
4. `depth_downsample_copy.fsh` - Reducir resolución

### Smoothing (elegir uno)
5. `bilateral_filter_1d.fsh` - RECOMENDADO (2 passes)
6. `bilateral_filter_2d.fsh` - Alternativa (1 pass, más lento)
7. `gauss_smooth.fsh` - Simple (sin depth-awareness)

### Particles (opcionales)
8. `particle_depth.fsh` - Depth de partículas
9. `particle_thickness.fsh` - Thickness
10. `billboard_foam.fsh` - Foam
11. `particle_billboard.fsh` - Visualización simple
12. `particle_3d_surf.fsh` - Visualización 3D

---

## 🔗 Dependencias entre Archivos

```
water_config.glsl
    ↓
water_utils.glsl
    ↓
[Todos los shaders lo incluyen]

Pipeline recomendado:
particle_depth → smooth_thick_prepare → bilateral_filter_1d → normals_from_depth → water_render
     ↓
particle_thickness ↗
```

---

## 📖 Cómo Usar Este Índice

### Buscar por Funcionalidad
- **Necesitas refracción?** → `water_render.fsh`
- **Necesitas suavizar depth?** → `bilateral_filter_1d.fsh`
- **Necesitas normales?** → `normals_from_depth.fsh`
- **Necesitas partículas?** → `particle_depth.fsh` + `particle_thickness.fsh`
- **Necesitas foam?** → `billboard_foam.fsh`

### Buscar por Shader Original Unity
- **FluidRender.shader** → `water_render.vsh/fsh`
- **NormalsFromDepth.shader** → `normals_from_depth.vsh/fsh`
- **ParticleDepth.shader** → `particle_depth.vsh/fsh`
- **ParticleThickness.shader** → `particle_thickness.vsh/fsh`
- **BillboardFoam.shader** → `billboard_foam.vsh/fsh`
- **ParticleBillboard.shader** → `particle_billboard.vsh/fsh`
- **Particle3DSurf.shader** → `particle_3d_surf.vsh/fsh`
- **BilateralFilter1D.shader** → `bilateral_filter_1d.vsh/fsh`
- **BilateralFilter2D.shader** → `bilateral_filter_2d.vsh/fsh`
- **GaussSmooth.shader** → `gauss_smooth.vsh/fsh`
- **SmoothThickPrepare.shader** → `smooth_thick_prepare.vsh/fsh`
- **DepthDownsampleCopy.shader** → `depth_downsample_copy.vsh/fsh`

---

## 🎨 Qué Incluye Cada Shader

### water_render.fsh
```
✓ Refracción
✓ Reflexión
✓ Fresnel equations
✓ Extinction (absorción)
✓ Foam blending
✓ Sky sampling
✓ Floor sampling con tiles
✓ Shadow mapping
✓ Smooth edge normals
✓ Debug modes
```

### bilateral_filter_1d.fsh
```
✓ Gaussian weighting
✓ Depth-aware bilateral
✓ Screen-space adaptive radius
✓ Separable (horizontal/vertical)
✓ Smooth mask (selective smoothing)
```

### particle_depth.fsh
```
✓ Billboard spheres
✓ Instanced rendering
✓ Depth output
✓ Camera-facing quads
✓ Circular discard
```

### normals_from_depth.fsh
```
✓ Screen-space derivatives
✓ View-space position reconstruction
✓ Cross product normals
✓ World-space transform
✓ Edge-aware (selecciona mejor derivative)
```

---

## 🛠️ Archivos de Configuración

### water_config.glsl - Uniforms Definidos
- Camera matrices (4)
- Camera parameters (4)
- Water appearance (4)
- Environment (5)
- Bounds/Volume (2)
- Floor/Ground (10)
- Foam (3)
- Smoothing (3)
- Debug (3)
- Particles (2)
**TOTAL**: ~40 uniforms

### water_utils.glsl - Funciones Disponibles
- Random/Hash (5 funciones)
- Color space (3 funciones)
- Depth reconstruction (3 funciones)
- Ray tracing (2 funciones)
- Normals (2 funciones)
- Fresnel/Refraction (4 funciones)
- Sky sampling (1 función)
- Utilities (2 funciones)
**TOTAL**: ~25 funciones

---

## 📦 Quick Reference

### Archivos Esenciales (mínimo para agua básica)
```
✓ lib/water_config.glsl
✓ lib/water_utils.glsl
✓ water/water_render.vsh
✓ water/water_render.fsh
```

### Archivos para Agua con Depth
```
+ water/normals_from_depth.vsh
+ water/normals_from_depth.fsh
+ smoothing/bilateral_filter_1d.vsh
+ smoothing/bilateral_filter_1d.fsh
```

### Archivos para Sistema Completo
```
+ particles/particle_depth.vsh
+ particles/particle_depth.fsh
+ particles/particle_thickness.vsh
+ particles/particle_thickness.fsh
+ particles/billboard_foam.vsh
+ particles/billboard_foam.fsh
+ water/smooth_thick_prepare.vsh
+ water/smooth_thick_prepare.fsh
```

---

## 🔍 Buscar Código Específico

### Buscar implementación de Fresnel
→ `water_utils.glsl` línea ~180

### Buscar refracción
→ `water_utils.glsl` línea ~200

### Buscar bilateral filter
→ `bilateral_filter_1d.fsh` línea ~50

### Buscar normal calculation
→ `normals_from_depth.fsh` línea ~40

### Buscar particle billboarding
→ `particle_depth.vsh` línea ~20

---

## 📋 Checklist de Archivos

### Antes de Usar
- [ ] Todos los archivos copiados en `shaders/integracion/`
- [ ] Estructura de carpetas correcta (lib, water, smoothing, particles)
- [ ] README.md leído
- [ ] QUICK_START.md revisado

### Para Debugging
- [ ] CONVERSION_SUMMARY.md consultado
- [ ] FILE_INDEX.md (este archivo) revisado
- [ ] Uniforms verificados en water_config.glsl
- [ ] Funciones revisadas en water_utils.glsl

---

## 📞 Soporte

**Archivo principal de documentación**: `README.md`  
**Guía rápida**: `QUICK_START.md`  
**Detalles técnicos**: `CONVERSION_SUMMARY.md`  
**Este índice**: `FILE_INDEX.md`

---

**Generado**: Octubre 24, 2025  
**Versión**: 1.0  
**Archivos indexados**: 30  
**Estado**: ✅ Completo

---

¡Navegación de archivos completada! 🗂️
