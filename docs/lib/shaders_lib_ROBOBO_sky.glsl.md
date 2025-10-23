# shaders\lib\ROBOBO_sky.glsl

**Ruta original:** `shaders\lib\ROBOBO_sky.glsl`

## Includes

(ninguno detectado)

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define airNumberDensity 2.5035422e25`
- `#define ozoneConcentrationPeak 8e-6`
- `#define ozoneCrossSection vec3(4.51103766177301e-21, 3.2854797958699e-21, 1.96774621921165e-22)`
- `#define sky_planetRadius 6731e3`
- `#define sky_atmosphereHeight 110e3`
- `#define sky_scaleHeights vec2(8.0e3, 1.2e3)`
- `#define sky_coefficientRayleigh vec3(sky_coefficientRayleighR*1e-6, sky_coefficientRayleighG*1e-5, sky_coefficientRayleighB*1e-5)`
- `#define sky_coefficientMie vec3(sky_coefficientMieR*1e-6, sky_coefficientMieG*1e-6, sky_coefficientMieB*1e-6) // Should be >= 2e-6`
- `#define sky_coefficientsScattering mat2x3(sky_coefficientRayleigh, sky_coefficientMie)`
- `#ifdef SKY_GROUND`
- `#else`
- `#endif`
- `#ifdef ORIGINAL_CHOCAPIC_SKY`
- `#else`
- `#endif`
- `#ifdef ORIGINAL_CHOCAPIC_SKY`
- `#else`
- `#endif`

## Constantes detectadas

- `const float sunAngularSize = 0.533333;`
- `const float moonAngularSize = 0.516667;`
- `const float ozoneNumberDensity = airNumberDensity * ozoneConcentrationPeak;`
- `const vec3 sky_coefficientOzone = (ozoneCrossSection * (ozoneNumberDensity * 0.2e-6)); // ozone cross section * (ozone number density * (cm ^ 3))`
- `const vec2 sky_inverseScaleHeights = 1.0 / sky_scaleHeights;`
- `const vec2 sky_scaledPlanetRadius = sky_planetRadius * sky_inverseScaleHeights;`
- `const float sky_atmosphereRadius = sky_planetRadius + sky_atmosphereHeight;`
- `const float sky_atmosphereRadiusSquared = sky_atmosphereRadius * sky_atmosphereRadius;`
- `const mat3   sky_coefficientsAttenuation = mat3(sky_coefficientRayleigh , sky_coefficientMie, sky_coefficientOzone ); // commonly called the extinction coefficient`
- `const vec2 mul_add = vec2(0.1, 0.28) * rPI;`
- `float sky_miePhase(float cosTheta, const float g) {`
- `vec2 sky_phase(float cosTheta, const float g) {`
- `vec3 sky_airmass(vec3 position, vec3 direction, float rayLength, const float steps) {`
- `vec3 sky_airmass(vec3 position, vec3 direction, const float steps) {`
- `vec3 sky_opticalDepth(vec3 position, vec3 direction, float rayLength, const float steps) {`
- `vec3 sky_opticalDepth(vec3 position, vec3 direction, const float steps) {`
- `vec3 sky_transmittance(vec3 position, vec3 direction, const float steps) {`
- `vec3 calculateAtmosphere(vec3 background, vec3 viewVector, vec3 upVector, vec3 sunVector, vec3 moonVector, out vec2 pid, out vec3 transmittance, const int iSteps, float noise) {`
- `const int jSteps = 4;`

## Funciones detectadas (heurística)

- `float sky_rayleighPhase(float cosTheta)` — línea 38
- `vec3 sky_density(float centerDistance)` — línea 52

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.
