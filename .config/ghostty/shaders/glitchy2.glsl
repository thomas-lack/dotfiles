void mainImage(out vec4 fragColor, in vec2 fragCoord) {
    vec2 uv = fragCoord/iResolution.xy;
    
    // Brutal digital glitch
    float glitchTime = floor(iTime * 10.0) / 10.0;
    
    // Remove full-screen block glitch
    float glitchBlock = step(0.995, fract(sin(glitchTime * 57.0)));
    
    // Aggressive digital distortions
    vec2 glitchUV = uv;
    
    // Random horizontal splits
    if (fract(sin(glitchTime * 23.0)) > 0.9) {
        float splitHeight = fract(sin(glitchTime * 17.0));
        float splitIntensity = step(abs(uv.y - splitHeight), 0.01) * 
                                step(fract(sin(glitchTime * 11.0)), 0.5);
        glitchUV.x += splitIntensity * 0.1 * sin(iTime * 50.0);
    }
    
    // Channel shifting
    vec3 rChannel = texture(iChannel0, glitchUV + vec2(0.01, 0.0)).r * vec3(1.0, 0.0, 0.0);
    vec3 gChannel = texture(iChannel0, glitchUV).g * vec3(0.0, 1.0, 0.0);
    vec3 bChannel = texture(iChannel0, glitchUV - vec2(0.01, 0.0)).b * vec3(0.0, 0.0, 1.0);
    
    // Digital noise
    float digitalNoise = fract(sin(dot(uv, vec2(12.9898, 78.233))) * 43758.5453123);
    float noiseThreshold = step(0.85, digitalNoise);
    
    // Harsh color manipulation
    vec3 glitchColor = rChannel + gChannel + bChannel;
    glitchColor *= 1.0 + noiseThreshold * 0.5;
    
    // Reduce full-screen block to minimal occurrence
    if (glitchBlock > 0.99) {
        glitchColor *= 0.5; // Subtle darkening instead of full replacement
    }
    
    // Harsh digital lines
    float digitalLines = step(fract(uv.y * 100.0 + iTime * 10.0), 0.5);
    glitchColor *= 1.0 - digitalLines * 0.3;
    
    // Color quantization (limited color palette)
    glitchColor = floor(glitchColor * 4.0) / 4.0;
    
    fragColor = vec4(glitchColor, 1.0);
}
