#version 450

layout (location = 0) in vec3 inPos;
layout (location = 1) in vec3 inColor;

// ----------------- TODO -----------------
// 3a: Fügen Sie eine Zeitvariable dem UBO hinzu

layout (binding = 0) uniform UBO 
{
	mat4 projectionMatrix;
	mat4 modelMatrix;
	mat4 viewMatrix;
} ubo;

layout (location = 0) out vec3 outColor;
layout (location = 1) out vec2 outUV;

out gl_PerVertex 
{
    vec4 gl_Position;   
};


void main() 
{
	// ----------------- TODO -----------------
	// 2b: Erstellen Sie eine einfache Animation mit der Zeitvariable
	
	outColor = inColor;
	gl_Position = ubo.projectionMatrix * ubo.viewMatrix * ubo.modelMatrix * vec4(inPos.xyz, 1.0);

	// ----------------- TODO -----------------
	// 3c: UV-Koordinaten an den Fragment-Shader weitergeben

}
