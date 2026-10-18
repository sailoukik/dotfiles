#version 300 es
// ⚡ Thor Lightning Flash Screen Shader
// Delivers a high-intensity electric cyan-white flash during thunder strikes

precision mediump float;

in vec2 v_texcoord;
layout(location = 0) out vec4 fragColor;
uniform sampler2D tex;

void main() {
    vec4 pixColor = texture(tex, v_texcoord);
    vec3 c = pixColor.rgb;

    // Lightning Flash: Elevate exposure into brilliant lightning white/cyan
    vec3 electricTint = vec3(0.4, 0.85, 1.0);
    c = c * 1.4 + electricTint * 0.4;

    // Radial electric lightning shockwave vignette
    vec2 uv = (v_texcoord - 0.5) * 2.0;
    float shockwave = dot(uv, uv);
    c += vec3(0.0, 0.7, 1.0) * shockwave * 0.35;

    fragColor = vec4(clamp(c, 0.0, 1.0), pixColor.a);
}
