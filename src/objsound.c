#include <sm64.h>

void object_stepsound(STEPSOUND *ss)
{
	int i = object->o_anime_index;
	int frame;
	switch (ss[i].flag)
	{
	case 0:
		break;
	case 1:
		if ((frame = ss[i].l) >= 0)
		{
			if (objlib_802A0008(frame)) object_playsound(ss[i].se);
		}
		if ((frame = ss[i].r) >= 0)
		{
			if (objlib_802A0008(frame)) object_playsound(ss[i].se);
		}
		break;
	}
}

extern O_SCRIPT o_1300229C[];

void object_makesound(Na_Se se)
{
	OBJECT *obj = obj_make_here(object, 0, o_1300229C);
	obj->o_v0 = se;
}

void object_levelsound(Na_Se se)
{
	if (object->s.s.flag & SHP_ACTIVE) Na_ObjSePlay(se, object);
}

void object_playsound(Na_Se se)
{
	if (object->s.s.flag & SHP_ACTIVE) Na_ObjSePlay(se, object);
}

UNUSED static
int se_calcvol_1(float dist)
{
	int vol;
	if      (dist <  500)   vol = 127;
	else if (dist > 1500)   vol = 0;
	else                    vol = (dist-500)/1000*64 + 60;
	return vol;
}

UNUSED static
int se_calcvol_2(float dist)
{
	int vol;
	if      (dist < 1300)   vol = 127;
	else if (dist > 2300)   vol = 0;
	else                    vol = (dist-1000)/1000*64 + 60;
	return vol;
}
