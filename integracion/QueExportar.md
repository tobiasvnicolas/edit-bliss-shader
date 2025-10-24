Lista de archivos a copiar (rutas relativas al repo):

Assets/Scripts/Rendering/ScreenSpace/Shaders/FluidRender.shader
Assets/Scripts/Rendering/ScreenSpace/Shaders/NormalsFromDepth.shader
Assets/Scripts/Rendering/ScreenSpace/Shaders/ParticleDepth.shader
Assets/Scripts/Rendering/ScreenSpace/Shaders/ParticleThickness.shader
Assets/Scripts/Rendering/ScreenSpace/Shaders/DepthDownsampleCopy.shader
Assets/Scripts/Rendering/ScreenSpace/Shaders/SmoothThickPrepare.shader

Assets/Scripts/Rendering/ScreenSpace/Smoothing/GaussSmooth/GaussSmooth.shader
Assets/Scripts/Rendering/ScreenSpace/Smoothing/Bilateral_2D/BilateralFilter2D.shader
Assets/Scripts/Rendering/ScreenSpace/Smoothing/Bilateral_1D/BilaterialFilter1D.shader

Assets/Scripts/Rendering/Foam/BillboardFoam.shader
Assets/Scripts/Rendering/Foam/FoamCountToArgsCopy.compute

Assets/Scripts/Rendering/Particles/ParticleBillboard.shader
Assets/Scripts/Rendering/Particles/Particle3DSurf.shader
Assets/Scripts/Simulation/Compute/FluidSim.compute
Assets/Scripts/Sim2D/Compute/FluidSim2D.compute

Notas:
- Copia primero los archivos de ScreenSpace (FluidRender + Normals/Depth/Thickness + smoothing) para obtener el look del agua.
- Si solo quieres la apariencia, no necesitas portar los compute de simulación; si quieres la simulación completa, copia los compute de `Simulation` y `Foam`.

Fin de la lista.