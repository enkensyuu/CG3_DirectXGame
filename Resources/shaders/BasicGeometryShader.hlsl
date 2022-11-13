#include "BasicShaderHeader.hlsli"
// �O�p�`�̓��͂���A�O�p�`��2�o��
[maxvertexcount(3)]
void main(
	point VSOutput input[1] : SV_POSITION,
	inout TriangleStream< GSOutput > output
)
{
		GSOutput element;				
		element.normal = input[0].normal;
		element.uv = input[0].uv;
		element.svpos = input[0].svpos;
		output.Append(element);

		element.svpos = input[0].svpos + float4(10.0f, 10.0f, 0.0f, 0.0f);
		output.Append(element);

		element.svpos = input[0].svpos + float4(10.0f, 0.0f, 0.0f, 0.0f);
		output.Append(element);
}