#include "face.h"

static int face_sound_801B9CB0;
static int face_sound_801B9CB4;

void face_sound_801781E0(void)
{
	face_sound_801B9CB4 = 0;
	face_sound_801B9CB0 = 0;
}

int face_sound_80178200(void)
{
	return ~face_sound_801B9CB4 & face_sound_801B9CB0;
}

void face_sound_8017822C(void)
{
	face_sound_801B9CB4 = face_sound_801B9CB0;
	face_sound_801B9CB0 = 0;
}

void face_sound_80178254(int flag)
{
	face_sound_801B9CB0 |= flag;
}
