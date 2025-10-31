#ifdef IS_IRIS
    uniform float currentPlayerHealth;
    uniform float maxPlayerHealth;
    uniform float oneHeart;
    uniform float threeHeart;

    uniform float CriticalDamageTaken;
    uniform float MinorDamageTaken;
#else
    uniform bool isDead;
#endif

uniform float exitWater;
// uniform float exitPowderSnow;
uniform int isEyeInWater;

// uniform float currentPlayerHunger;
// uniform float maxPlayerHunger;

// uniform float currentPlayerArmor;
// uniform float maxPlayerArmor;

// uniform float currentPlayerAir;
// uniform float maxPlayerAir;

// uniform bool is_sneaking;
// uniform bool is_sprinting;
// uniform bool is_hurt;
// uniform bool is_invisible;
// uniform bool is_burning;

// uniform bool is_on_ground;
// uniform bool isSpectator;


void applyGameplayEffects(inout vec3 color, in vec2 texcoord, float noise){
   
    // detect when health is zero
    #ifdef IS_IRIS
        bool isDead = currentPlayerHealth * maxPlayerHealth <= 0.0 && currentPlayerHealth > -1;
    #else
        float oneHeart = 0.0;
        float threeHeart = 0.0;
    #endif

    float distortmask = 0.0;
    float vignette = sqrt(clamp(dot(texcoord*2.0 - 1.0, texcoord*2.0 - 1.0) * 0.5, 0.0, 1.0));

    //////////////////////// DAMAGE DISTORTION /////////////////////
    #if defined LOW_HEALTH_EFFECT || defined DAMAGE_TAKEN_EFFECT   
        float heartBeat = (pow(sin(frameTimeCounter * 15)*0.5+0.5,2.0)*0.2 + 0.1) ;
        
        // apply low health distortion effects
        float damageDistortion = vignette * noise * heartBeat * threeHeart;
        
        // apply critical hit distortion effect
        damageDistortion = mix(damageDistortion, vignette * (0.5 + noise), CriticalDamageTaken) * MOTION_AMOUNT;
        
        // apply death distortion effect
        distortmask = isDead ? vignette * (0.7 + noise*0.3) : damageDistortion;
    #endif
    //////////////////////// WATER DISTORTION /////////////////////
    #if defined WATER_ON_CAMERA_EFFECT
        if(exitWater > 0.0){
            vec3 scale = vec3(1.0,1.0,0.0);
            scale.xy = (isEyeInWater == 1 ? vec2(0.3) : vec2(0.5, 0.25 + (exitWater*exitWater)*0.25 ) ) * vec2(aspectRatio,1.0);
            scale.z = isEyeInWater == 1 ? 0.0 : exitWater;

            float waterDrops = texture2D(noisetex, (texcoord - vec2(0.0, scale.z)) * scale.xy).r ;
            if(isEyeInWater == 1) waterDrops = waterDrops*waterDrops * 0.3;
            if(isEyeInWater == 0 && exitWater > 0.0) waterDrops = sqrt(min(max(waterDrops - (1.0-sqrt(exitWater))*0.7,0.0) * (1.0 + exitWater),1.0)) * 0.3;

            // apply distortion effects for exiting water and under water

            // --- Radial wave / ripple when entering or exiting water ---
            // center-based ripple expands outward when exitWater moves from 1->0 (exiting)
            vec2 center = vec2(0.5);
            float dist = length(texcoord - center);
            // progress: 0 when fully in water, 1 when fully out (approx)
            float prog = clamp(1.0 - exitWater, 0.0, 1.0);

            // expanding ring — stronger, wider and longer-lasting
            float maxRadius = 4.0; // how far the ring can travel (bigger)
            // use a gentle ease so the ring expands perceptually longer
            float easedProg = pow(prog, 0.7);
            float radius = easedProg * maxRadius;
            // a wider Gaussian-shaped ring with a lower-frequency sine ripple inside
            float ringWidth = 0.12;
            float ringAtten = exp(-pow((dist - radius) / ringWidth, 2.0));
            float ringWave = sin((dist - radius) * 30.0) * 1.2; // bigger amplitude, lower frequency
            // amplitude falloff so the ring is visible for longer as exitWater decays
            float ringFade = smoothstep(0.0, 1.0, easedProg) * (1.0 - pow(exitWater, 0.5));
            float ring = ringAtten * ringWave * ringFade;

            // subtle inner wobble while inside water
            float inner = 0.0;
            if(isEyeInWater == 1){
                float t = frameTimeCounter * 8.5;
                inner = exp(-dist * 4.0) * 0.45 * sin(t + dist * 16.0) * exitWater; // stronger inner wobble
            }

            float waveMask = max(ring, inner);

            distortmask = max(distortmask, max(waterDrops, waveMask));
        }
    #endif

    //////////////////////// APPLY DISTORTION /////////////////////
    // all of the distortion will be based around zooming the UV in the center
    vec2 zoomUV = 0.5 + (texcoord - 0.5) * (1.0 - distortmask);
    vec3 distortedColor = texture2D(colortex7, zoomUV).rgb;

    #ifdef WATER_ON_CAMERA_EFFECT
        // apply the distorted water color to the scene, but revert back to before when it ends
        if(exitWater > 0.01) color = distortedColor;
    #endif

    //////////////////////// APPLY COLOR EFFECTS /////////////////////
    #if defined LOW_HEALTH_EFFECT || defined DAMAGE_TAKEN_EFFECT   
        vec3 distortedColorLuma =  vec3(1.0, 0.0, 0.0) * dot(distortedColor, vec3(0.21, 0.72, 0.07));
    
        #ifdef LOW_HEALTH_EFFECT
            float colorLuma = dot(color, vec3(0.21, 0.72, 0.07));

            vec3 LumaRedEdges = mix(vec3(colorLuma), vec3(1.0, 0.3, 0.3) * distortedColorLuma.r, vignette);

            // apply color effects for when you are at low health
            color = mix(color, LumaRedEdges, mix(vignette * threeHeart, oneHeart, oneHeart));
        #endif

        #ifdef DAMAGE_TAKEN_EFFECT
            color = mix(color, distortedColorLuma, vignette * sqrt(min(MinorDamageTaken,1.0)));
            color = mix(color, distortedColorLuma, sqrt(CriticalDamageTaken));
        #endif

        if(isDead) color = distortedColorLuma * 0.35;
    #endif
}