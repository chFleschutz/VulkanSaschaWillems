#version 450

// ----------------- TODO -----------------
// 4d: sampler2D f�r die Textur hinzuf�gen und Farbe auslesen

layout (location = 0) in vec3 inColor;
layout (location = 1) in vec2 inUV;

layout (location = 0) out vec4 outFragColor;

void main() 
{
	outFragColor = vec4(inColor, 1.0);
}