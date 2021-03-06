#version 330

#include semantic.glsl

layout (location = POSITION) in vec4 position;
layout (location = COLOR) in vec4 color;

smooth out vec4 theColor;

uniform vec2 offset;

void main()
{
    gl_Position = position + vec4(offset.x, offset.y, 0.0f, 0.0f);
    theColor = color;
}