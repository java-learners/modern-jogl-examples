
#version 330

#include semantic.glsl


layout(location = POSITION) in vec3 position;
layout(location = COLOR) in vec4 color;

smooth out vec4 theColor;

uniform mat4 cameraToClipMatrix;

void main()
{
    gl_Position = cameraToClipMatrix * vec4(position, 1.0);
    theColor = color;
}