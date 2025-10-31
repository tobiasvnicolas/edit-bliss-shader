// =============================================================================
// Advanced Water Effects
// =============================================================================
// Integración de efectos avanzados de agua (refracción, reflexión, Fresnel)
// Basado en la conversión de FluidRender desde Unity

// =============================================================================
// Parámetros configurables
// =============================================================================
const float WATER_IOR = 1.33;           // Índice de refracción del agua
const float AIR_IOR = 1.0;              // Índice de refracción del aire
const vec3 WATER_EXTINCTION = vec3(0.3, 0.1, 0.05); // Absorción de luz RGB
const float REFRACTION_STRENGTH = 0.5;   // Fuerza de refracción

// =============================================================================
// Ecuaciones de Fresnel
// =============================================================================
float CalculateFresnelReflectance(vec3 inDir, vec3 normal, float iorA, float iorB) {
    float refractRatio = iorA / iorB;
    float cosAngleIn = -dot(inDir, normal);
    float sinSqrAngleOfRefraction = refractRatio * refractRatio * (1.0 - cosAngleIn * cosAngleIn);
    
    if (sinSqrAngleOfRefraction >= 1.0) return 1.0; // Reflexión interna total

    float cosAngleOfRefraction = sqrt(1.0 - sinSqrAngleOfRefraction);
    
    // Perpendicular
    float rPerpendicular = (iorA * cosAngleIn - iorB * cosAngleOfRefraction) / 
                           (iorA * cosAngleIn + iorB * cosAngleOfRefraction);
    rPerpendicular *= rPerpendicular;
    
    // Parallel
    float rParallel = (iorB * cosAngleIn - iorA * cosAngleOfRefraction) / 
                      (iorB * cosAngleIn + iorA * cosAngleOfRefraction);
    rParallel *= rParallel;

    return (rPerpendicular + rParallel) / 2.0;
}

// =============================================================================
// Refracción mejorada
// =============================================================================
vec3 CalculateRefraction(vec3 inDir, vec3 normal, float iorA, float iorB) {
    float refractRatio = iorA / iorB;
    float cosAngleIn = -dot(inDir, normal);
    float sinSqrAngleOfRefraction = refractRatio * refractRatio * (1.0 - cosAngleIn * cosAngleIn);
    
    if (sinSqrAngleOfRefraction > 1.0) return vec3(0.0); // Reflexión total

    vec3 refractDir = refractRatio * inDir + 
                      (refractRatio * cosAngleIn - sqrt(1.0 - sinSqrAngleOfRefraction)) * normal;
    return refractDir;
}

// =============================================================================
// Efectos de agua avanzados
// =============================================================================
vec4 ApplyAdvancedWaterEffects(
    vec3 viewDir,
    vec3 normal,
    vec3 waterColor,
    vec3 backgroundColor,
    vec3 skyColor,
    float depth,
    float waterDepth
) {
    // Calcular Fresnel
    float fresnelFactor = CalculateFresnelReflectance(viewDir, normal, AIR_IOR, WATER_IOR);
    
    // Reflexión
    vec3 reflectDir = reflect(viewDir, normal);
    vec3 reflectedColor = skyColor;
    
    // Refracción
    vec3 refractDir = CalculateRefraction(viewDir, normal, AIR_IOR, WATER_IOR);
    vec3 refractedColor = backgroundColor;
    
    // Absorción de luz basada en profundidad
    vec3 transmission = exp(-waterDepth * WATER_EXTINCTION);
    refractedColor *= transmission;
    
    // Mezclar reflexión y refracción usando Fresnel
    vec3 finalColor = mix(refractedColor, reflectedColor, fresnelFactor);
    
    // Tinte de agua
    finalColor = mix(finalColor, waterColor * finalColor, 0.3);
    
    return vec4(finalColor, 1.0);
}

// =============================================================================
// Distorsión de refracción simple
// =============================================================================
vec2 GetRefractionOffset(vec3 normal, vec3 viewDir, float strength) {
    vec2 offset = normal.xy * strength;
    return offset;
}
