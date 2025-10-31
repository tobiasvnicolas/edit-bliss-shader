# Guía de Uso Rápido - Water Shaders Integration

## 🚀 Quick Start

Esta guía te ayudará a integrar rápidamente los shaders de agua en tu proyecto.

---

## Paso 1: Verificar los Archivos

Asegúrate de tener todos los archivos en su lugar:

```
shaders/integracion/
├── lib/
│   ├── water_config.glsl  ✓
│   └── water_utils.glsl   ✓
├── water/                  ✓
├── smoothing/              ✓
└── particles/              ✓
```

---

## Paso 2: Ejemplo de Integración en Composite Pass

### Opción A: Integrar en un composite shader existente

En tu `composite.fsh` o similar:

```glsl
#version 330 core

// Incluir las bibliotecas de agua
#include "integracion/lib/water_config.glsl"
#include "integracion/lib/water_utils.glsl"

in vec2 texcoord;
out vec4 fragColor;

// Tus uniforms existentes + los de agua
uniform sampler2D colortex0;  // Tu color buffer
uniform sampler2D depthtex0;  // Tu depth buffer
// ... más texturas

void main() {
    // Tu código existente...
    
    vec4 color = texture(colortex0, texcoord);
    float depth = texture(depthtex0, texcoord).r;
    
    // Detectar si el píxel es agua (ejemplo simple)
    // Esto depende de cómo tu shader pack identifica bloques de agua
    bool isWater = detectWaterBlock(texcoord); // Tu función
    
    if (isWater) {
        // Aplicar efectos de agua
        vec3 viewDir = WorldViewDir(texcoord, u_InverseProjection, u_InverseView);
        vec3 hitPos = u_CameraPosition + viewDir * depth;
        
        // Calcular reflexión/refracción simple
        vec3 normal = texture(u_WaterNormal, texcoord).xyz;
        LightResponse light = CalculateReflectionAndRefraction(
            viewDir, normal, 1.0, u_IOR
        );
        
        // Mezclar con el color original
        color.rgb = mix(color.rgb, color.rgb * 0.8, light.refractWeight);
    }
    
    fragColor = color;
}
```

---

## Paso 3: Configurar Uniforms

En tu código de aplicación (C++/Java):

```cpp
// Ejemplo en OpenGL/C++
void setupWaterUniforms(GLuint program) {
    // Matrices
    glUniformMatrix4fv(
        glGetUniformLocation(program, "u_InverseProjection"),
        1, GL_FALSE, inverseProjectionMatrix
    );
    
    glUniformMatrix4fv(
        glGetUniformLocation(program, "u_InverseView"),
        1, GL_FALSE, inverseViewMatrix
    );
    
    glUniform3fv(
        glGetUniformLocation(program, "u_CameraPosition"),
        1, cameraPosition
    );
    
    // Parámetros de agua
    glUniform3f(
        glGetUniformLocation(program, "u_ExtinctionCoefficients"),
        0.3f, 0.1f, 0.05f  // Agua azul clara
    );
    
    glUniform1f(
        glGetUniformLocation(program, "u_IOR"),
        1.33f  // Índice de refracción del agua
    );
    
    glUniform1f(
        glGetUniformLocation(program, "u_RefractionMultiplier"),
        1.0f
    );
    
    glUniform3f(
        glGetUniformLocation(program, "u_SunDirection"),
        sunDirection.x, sunDirection.y, sunDirection.z
    );
    
    glUniform1f(
        glGetUniformLocation(program, "u_SunIntensity"),
        1.0f
    );
    
    glUniform1f(
        glGetUniformLocation(program, "u_AmbientLight"),
        0.3f
    );
}
```

---

## Paso 4: Texturas Requeridas

Necesitas proporcionar estas texturas:

### Texturas Mínimas
1. **u_SceneColor** - Color buffer de la escena
2. **u_SceneDepth** - Depth buffer
3. **u_WaterNormal** - Normal map para agua (puede usar placeholder)

### Texturas Opcionales (para efectos avanzados)
4. **u_ParticleDepth** - Depth de partículas (si usas particles)
5. **u_ParticleThickness** - Thickness acumulado
6. **u_WaterFlow** - Flow/DUDV map para distorsión
7. **u_WaterFoam** - Textura de foam
8. **u_ShadowMap** - Shadow map para sombras

---

## Paso 5: Pipeline Simplificado (Sin Partículas)

Si solo quieres el efecto visual básico sin simulación de partículas:

```glsl
// En tu fragment shader principal
#include "integracion/lib/water_config.glsl"
#include "integracion/lib/water_utils.glsl"

void applyWaterEffect(inout vec4 color, vec2 uv, float depth) {
    // 1. Obtener dirección de vista
    vec3 viewDir = WorldViewDir(uv, u_InverseProjection, u_InverseView);
    
    // 2. Calcular posición del hit
    vec3 hitPos = u_CameraPosition + viewDir * depth;
    
    // 3. Normal simple (o desde texture)
    vec3 normal = vec3(0.0, 1.0, 0.0); // Placeholder: superficie plana
    
    // 4. Calcular Fresnel
    float fresnel = CalculateReflectance(viewDir, normal, 1.0, 1.33);
    
    // 5. Reflexión del cielo
    vec3 reflectDir = reflect(viewDir, normal);
    vec3 skyColor = SampleSky(reflectDir, u_SunDirection, u_SunIntensity, 100.0);
    
    // 6. Mezclar
    color.rgb = mix(color.rgb * vec3(0.2, 0.5, 0.8), skyColor, fresnel);
}
```

---

## Paso 6: Valores Predeterminados Recomendados

```glsl
// Agua clara y limpia
u_ExtinctionCoefficients = vec3(0.3, 0.1, 0.05);
u_IOR = 1.33;
u_RefractionMultiplier = 1.0;
u_AmbientLight = 0.3;

// Agua oscura/profunda
u_ExtinctionCoefficients = vec3(0.8, 0.6, 0.4);
u_IOR = 1.33;
u_RefractionMultiplier = 0.8;
u_AmbientLight = 0.2;

// Agua cristalina (piscina)
u_ExtinctionCoefficients = vec3(0.1, 0.05, 0.02);
u_IOR = 1.33;
u_RefractionMultiplier = 1.2;
u_AmbientLight = 0.4;
```

---

## Paso 7: Testing y Debug

### Test 1: Verificar includes
```glsl
// Si ves errores de compilación, verifica las rutas:
#include "integracion/lib/water_config.glsl"  // ¿Ruta correcta?
```

### Test 2: Modo debug
```glsl
// Activar visualización de normales
glUniform1i(glGetUniformLocation(program, "u_DebugDisplayMode"), 3);
```

### Test 3: Verificar uniforms
```cpp
// Verifica que los uniforms estén siendo encontrados
GLint loc = glGetUniformLocation(program, "u_IOR");
if (loc == -1) {
    printf("WARNING: uniform u_IOR not found!\n");
}
```

---

## Checklist de Integración

- [ ] Archivos copiados en `shaders/integracion/`
- [ ] Includes agregados en tu shader principal
- [ ] Uniforms configurados (mínimo: matrices, IOR, extinction)
- [ ] Texturas bindeadas (mínimo: color, depth)
- [ ] Compilación exitosa sin errores
- [ ] Efectos visibles en agua

---

## Ejemplo Completo Mínimo

```glsl
#version 330 core

// Includes
#include "integracion/lib/water_config.glsl"
#include "integracion/lib/water_utils.glsl"

// Inputs
in vec2 texcoord;

// Outputs
out vec4 fragColor;

// Uniforms mínimos
uniform sampler2D colortex0;
uniform sampler2D depthtex0;
uniform mat4 gbufferProjectionInverse;
uniform mat4 gbufferModelViewInverse;
uniform vec3 cameraPosition;

void main() {
    vec4 color = texture(colortex0, texcoord);
    float depth = texture(depthtex0, texcoord).r;
    
    // Configurar uniforms internos (mapear desde los del shader pack)
    // Nota: Esto es un ejemplo, adapta según tu shader pack
    mat4 u_InverseProjection = gbufferProjectionInverse;
    mat4 u_InverseView = gbufferModelViewInverse;
    vec3 u_CameraPosition = cameraPosition;
    
    // Detectar agua (ejemplo: por depth y color)
    bool isWater = depth < 1.0 && color.b > color.r;
    
    if (isWater) {
        // Aplicar efecto básico de agua
        vec3 viewDir = WorldViewDir(texcoord, u_InverseProjection, u_InverseView);
        vec3 normal = vec3(0, 1, 0);
        
        float fresnel = CalculateReflectance(viewDir, normal, 1.0, 1.33);
        vec3 reflectDir = reflect(viewDir, normal);
        
        // Tinte azul + reflexión
        color.rgb *= vec3(0.3, 0.6, 1.0);
        color.rgb = mix(color.rgb, vec3(0.8, 0.9, 1.0), fresnel * 0.5);
    }
    
    fragColor = color;
}
```

---

## 🎯 Próximos Pasos

1. **Añadir normales animadas**: Usa noise o flow maps
2. **Integrar partículas**: Sigue el pipeline completo del README
3. **Optimizar**: Usa bilateral filtering solo donde sea necesario
4. **Tunear parámetros**: Ajusta extinction, IOR, etc. a tu gusto

---

## 📞 Soporte

Si encuentras problemas:
1. Verifica el log de compilación de shaders
2. Usa los modos debug (`u_DebugDisplayMode`)
3. Revisa que todos los uniforms estén seteados
4. Consulta el README.md principal para más detalles

---

¡Listo para renderizar agua hermosa! 💧✨
