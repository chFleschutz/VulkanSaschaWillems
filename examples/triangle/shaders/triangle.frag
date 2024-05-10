#version 450

// ----------------- TODO -----------------
// 4d: sampler2D f�r die Textur hinzuf�gen und Farbe auslesen

layout (binding = 1) uniform sampler2D tex;

layout (location = 0) in vec3 inColor;
layout (location = 1) in vec2 inUV;

layout (location = 0) out vec4 outFragColor;

void main() 
{
	outFragColor = texture(tex, inUV);
}