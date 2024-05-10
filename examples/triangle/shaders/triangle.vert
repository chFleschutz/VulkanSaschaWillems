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
	float time;
} ubo;

layout (location = 0) out vec3 outColor;

out gl_PerVertex 
{
    vec4 gl_Position;   
};


void main() 
{
	// ----------------- TODO -----------------
	// 3a: Erstellen Sie eine einfache Animation mit der Zeitvariable
	
	outColor = (inColor * ubo.time) + (vec3(0.1) * inColor);
	gl_Position = ubo.projectionMatrix * ubo.viewMatrix * ubo.modelMatrix * vec4(inPos.xyz, 1.0);
}
