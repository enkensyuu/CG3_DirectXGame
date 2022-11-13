#include "BasicShaderHeader.hlsli"
// �O�p�`�̓��͂���A�O�p�`��2�o��
[maxvertexcount(6)]
void main(
	triangle VSOutput input[3] : SV_POSITION,
	inout TriangleStream< GSOutput > output
)
{
	//	1�ڂ̎O�p�`
	for (uint i = 0; i < 3; i++)
	{
		GSOutput element;					//	�o�͗p���_�f�[�^
		element.svpos = input[i].svpos;		//	���_���W���R�s�[
		element.normal = input[i].normal;	//	�@�����R�s�[
		element.uv = input[i].uv;			//	UV���R�s�[
		//	���_��1�o��(�o�̓��X�g�ɒǉ�)
		output.Append(element);
	}
	//	���݂̃X�g���b�v���I��
	output.RestartStrip();
	// 2�ڂ̎O�p�`
	for (uint i = 0; i < 3; i++)
	{
		GSOutput element;
		element.svpos = input[i].svpos + float4(20.0f, 0.0f, 0.0f, 0.0f);
		element.normal = input[i].normal;
		element.uv = input[i].uv*5.0f;
		//	���_��1�o��(�o�̓��X�g�ɒǉ�)
		output.Append(element);
	}
}