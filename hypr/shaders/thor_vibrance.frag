#version 300 es
// Thor Theme Screen Shader (Modern GLES 3.0 / Hyprland 0.56+)
// Enhances electric blues, warm gold highlights, and applies subtle storm atmospheric vignette.

precision mediump float;

in vec2 v_texcoord;
layout(location = 0) out vec4 fragColor;
uniform sampler2D tex;

void main() {
    vec4 pixColor = texture(tex, v_texcoord);
    vec3 c = pixColor.rgb;

    // Subtle contrast boost
    c = clamp((c - 0.5) * 1.05 + 0.5, 0.0, 1.0);

    // Subtle Thor color grading: cool blues in midtones, warm gold in high brightness
    float luma = dot(c, vec3(0.299, 0.587, 0.114));
    
    // Electric blue boost in mid-tones
    c.b += (1.0 - abs(luma - 0.5) * 2.0) * 0.03;
    // Golden tint in bright highlights
    if (luma > 0.7) {
        c.r += (luma - 0.7) * 0.05;
        c.g += (luma - 0.7) * 0.03;
    }

    // Faint atmospheric vignette
    vec2 uv = (v_texcoord - 0.5) * 2.0;
    float vignette = clamp(1.0 - dot(uv, uv) * 0.15, 0.0, 1.0);
    c *= vignette;

    fragColor = vec4(clamp(c, 0.0, 1.0), pixColor.a);
}
