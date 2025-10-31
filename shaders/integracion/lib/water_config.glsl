// =============================================================================
// Water Configuration and Uniforms
// =============================================================================
// Converted from Unity FluidRender shader to GLSL for Minecraft shader pack
// This file contains all uniforms and configuration parameters for water rendering

#ifndef WATER_CONFIG_GLSL
#define WATER_CONFIG_GLSL

// =============================================================================
// Texture Samplers
// =============================================================================
uniform sampler2D u_WaterNormal;        // Water normal map
uniform sampler2D u_WaterFlow;          // Flow/DUDV map for distortion
uniform sampler2D u_WaterFoam;          // Foam texture/atlas
uniform sampler2D u_SceneColor;         // Scene color buffer (background)
uniform sampler2D u_SceneDepth;         // Scene depth buffer
uniform sampler2D u_ParticleDepth;      // Particle depth buffer
uniform sampler2D u_ParticleThickness;  // Particle thickness buffer
uniform sampler2D u_ShadowMap;          // Shadow map

// =============================================================================
// Camera Parameters
// =============================================================================
uniform mat4 u_InverseProjection;      // Inverse projection matrix
uniform mat4 u_InverseView;            // Inverse view matrix (camera to world)
uniform mat4 u_ViewMatrix;             // View matrix (world to camera)
uniform mat4 u_ProjectionMatrix;       // Projection matrix
uniform vec3 u_CameraPosition;         // Camera world position
uniform vec2 u_ScreenParams;           // Screen width and height in pixels
uniform vec2 u_NearFar;                // x = near plane, y = far plane

// =============================================================================
// Water Appearance Parameters
// =============================================================================
uniform vec3 u_ExtinctionCoefficients; // Light extinction in water (RGB absorption)
uniform float u_RefractionMultiplier;  // Refraction strength multiplier
uniform float u_IOR;                   // Index of refraction (default: 1.33 for water)
uniform float u_FresnelPower;          // Fresnel effect power

// =============================================================================
// Environment Parameters
// =============================================================================
uniform vec3 u_SunDirection;           // Direction to sun (normalized)
uniform float u_SunIntensity;          // Sun brightness intensity
uniform float u_SunInvSize;            // Inverse of sun size (for specular)
uniform float u_AmbientLight;          // Ambient light factor

// =============================================================================
// Water Volume/Bounds Parameters
// =============================================================================
uniform vec3 u_BoundsSize;             // Size of water bounding box
uniform vec3 u_BoundsCenter;           // Center of water bounding box

// =============================================================================
// Floor/Ground Parameters (for test environment)
// =============================================================================
uniform vec3 u_FloorPosition;          // Floor position
uniform vec3 u_FloorSize;              // Floor size
uniform vec4 u_TileColor1;             // Tile color 1
uniform vec4 u_TileColor2;             // Tile color 2
uniform vec4 u_TileColor3;             // Tile color 3
uniform vec4 u_TileColor4;             // Tile color 4
uniform vec3 u_TileColorVariation;     // Tile color variation (HSV)
uniform float u_TileScale;             // Tile scale
uniform float u_TileDarkOffset;        // Dark tile offset
uniform mat4 u_ShadowViewProjection;   // Shadow view-projection matrix

// =============================================================================
// Foam Parameters
// =============================================================================
uniform float u_FoamIntensity;         // Foam visibility intensity
uniform float u_FoamThreshold;         // Foam threshold
uniform float u_FoamScale;             // Foam texture scale

// =============================================================================
// Smoothing Parameters
// =============================================================================
uniform float u_DepthSmoothRadius;     // Depth smoothing radius
uniform float u_ThicknessSmoothRadius; // Thickness smoothing radius
uniform int u_UseSmoothedDepth;        // Use smoothed depth (0 or 1)

// =============================================================================
// Debug Parameters
// =============================================================================
uniform int u_DebugDisplayMode;        // Debug display mode (0=off, 1=depth, 2=normals, etc.)
uniform float u_DepthDisplayScale;     // Depth visualization scale
uniform float u_ThicknessDisplayScale; // Thickness visualization scale

// =============================================================================
// Particle Parameters
// =============================================================================
uniform float u_ParticleScale;         // Particle rendering scale
uniform float u_VelocityMax;           // Maximum particle velocity for color mapping

// =============================================================================
// Default Values (fallback constants if uniforms not set)
// =============================================================================
#ifndef WATER_IOR
#define WATER_IOR 1.33
#endif

#ifndef AIR_IOR
#define AIR_IOR 1.0
#endif

#ifndef WATER_AMBIENT_LIGHT
#define WATER_AMBIENT_LIGHT 0.3
#endif

#ifndef WATER_FRESNEL_POWER
#define WATER_FRESNEL_POWER 5.0
#endif

// Default extinction coefficients (light blue water)
#ifndef WATER_EXTINCTION_R
#define WATER_EXTINCTION_R 0.3
#endif

#ifndef WATER_EXTINCTION_G
#define WATER_EXTINCTION_G 0.1
#endif

#ifndef WATER_EXTINCTION_B
#define WATER_EXTINCTION_B 0.05
#endif

#endif // WATER_CONFIG_GLSL
