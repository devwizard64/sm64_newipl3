#include <sm64.h>

#include "tagobj.c"
#include "mapobj.c"

extern O_SCRIPT o_coin[];
extern O_SCRIPT o_13000C44[];
extern O_SCRIPT o_13002898[];
extern O_SCRIPT o_130028CC[];
extern O_SCRIPT o_130028FC[];
extern O_SCRIPT o_1300292C[];

static SHORT tag_ang(SHORT x)
{
	USHORT y = x & 0xFF;
	y <<= 8;
	if (y == 0x3F00) y = 0x4000;
	if (y == 0x7F00) y = 0x8000;
	if (y == 0xBF00) y = 0xC000;
	if (y == 0xFF00) y = 0x0000;
	return y;
}

static void tag_enter_code(
	int shape, O_SCRIPT *script,
	SHORT posx, SHORT posy, SHORT posz, SHORT angy, SHORT code
)
{
	if (script)
	{
		OBJECT *obj = obj_make_abs(
			&object_dummy, 0, shape, script,
			posx, posy, posz, 0, tag_ang(angy), 0
		);
		obj->o_actor_info = code << 16;
	}
}

static void tag_enter_arg(
	int shape, O_SCRIPT *script,
	SHORT posx, SHORT posy, SHORT posz, SHORT angy, SHORT arg
)
{
	if (script)
	{
		OBJECT *obj = obj_make_abs(
			&object_dummy, 0, shape, script,
			posx, posy, posz, 0, tag_ang(angy), 0
		);
		obj->o_actor_info = arg << 24;
	}
}

static void tag_enter_xyz(
	int shape, O_SCRIPT *script,
	SHORT posx, SHORT posy, SHORT posz,
	SHORT x, SHORT y, SHORT z
)
{
	OBJECT *obj = obj_make_abs(
		&object_dummy, 0, shape, script, posx, posy, posz, 0, 0, 0
	);
	obj->o_f5 = x;
	obj->o_f6 = y;
	obj->o_f7 = z;
}

UNUSED
static void tag_enter_old(O_SCRIPT *script, TAG *tag)
{
	OBJECT *obj;
	SHORT shape = script == o_coin ? S_COIN : S_NULL;
	obj = obj_make_abs(
		&object_dummy, 0, shape, script,
		tag[1], tag[2], tag[3], 0, tag_ang(tag[0]), 0
	);
	obj->o_tag_info = tag[4];
	obj->o_actor_info = (tag[4] & 0xFF) >> 16;
}

void tag_obj_load(SHORT scene, TAG *tag)
{
	object_dummy.s.scene = scene;
	object_dummy.s.group = scene;
	for (;;)
	{
		UNUSED int i;
		int n;
		TAG buf[5];
		OBJECT *obj;
		s16 shape;
		s16 code;
		O_SCRIPT *script;
		if (*tag == -1) break;
		n = (*tag & 0x1FF) - TAG_START;
		if (n < 0) break;
		buf[0] = (*tag++ >> 9 & 0x7F) << 1;
		buf[1] = *tag++;
		buf[2] = *tag++;
		buf[3] = *tag++;
		buf[4] = *tag++;
		shape = tag_obj_table[n].shape;
		script = tag_obj_table[n].script;
		code = tag_obj_table[n].code;
		if (code != 0) buf[4] = (buf[4] & 0xFF00) + (code & 0xFF);
		if ((buf[4] >> 8 & 0xFF) != 0xFF)
		{
			obj = obj_make_abs(
				&object_dummy, 0, shape, script,
				buf[1], buf[2], buf[3], 0, tag_ang(buf[0]), 0
			);
			obj->o_tag_info = buf[4];
			obj->o_actor_info = ((buf[4] & 0xFF) << 16) + (buf[4] & 0xFF00);
			obj->o_code = buf[4] & 0xFF;
			obj->actor_type = ACTORTYPE_16;
			obj->actor_flag = tag - 1;
			obj->parent = obj;
		}
	}
}

void tag_load(SHORT scene, TAG *tag)
{
	object_dummy.s.scene = scene;
	object_dummy.s.group = scene;
	for (;;)
	{
		UNUSED int i;
		UNUSED OBJECT *obj;
		short posx;
		short posy;
		short posz;
		short index;
		short angy;
		UNUSED TAG buf[5];
		index = *tag++;
		if (index < 0) break;
		posx = *tag++;
		posy = *tag++;
		posz = *tag++;
		angy = *tag++;
		switch (index)
		{
		case 0:
			tag_enter_code(S_NULL, o_13002898, posx, posy, posz, angy, 0);
			break;
		case 1:
			tag_enter_code(54, o_130028CC, posx, posy, posz, angy, 0);
			break;
		case 2:
			tag_enter_code(55, o_13000C44, posx, posy, posz, angy, 0);
			break;
		case 3:
			tag_enter_code(57, o_130028FC, posx, posy, posz, angy, 0);
			break;
		case 4:
			tag_enter_code(58, o_1300292C, posx, posy, posz, angy, 0);
			break;
		case 20:
			tag_enter_code(S_COIN, o_coin, posx, posy, posz, angy, 0);
			break;
		case 21:
			tag_enter_code(S_COIN, o_coin, posx, posy, posz, angy, 0);
			break;
		default:
			break;
		}
	}
}

void map_obj_load(SHORT scene, MAP **map)
{
	int len;
	int i;
	len = **map; (*map)++;
	object_dummy.s.scene = scene;
	object_dummy.s.group = scene;
	for (i = 0; i < len; i++)
	{
		int n;
		MAP posx;
		MAP posy;
		MAP posz;
		MAP buf[5];
		u8 shape;
		u8 ext;
		u8 index;
		u8 arg;
		O_SCRIPT *script;
		index = **map; (*map)++;
		posx  = **map; (*map)++;
		posy  = **map; (*map)++;
		posz  = **map; (*map)++;
		n = 0;
		for (;;)
		{
			if (map_obj_table[n].index == index) break;
			if (map_obj_table[n].index == 0xFF) {}
			n++;
		}
		shape  = map_obj_table[n].shape;
		script = map_obj_table[n].script;
		ext    = map_obj_table[n].ext;
		arg    = map_obj_table[n].arg;
		switch (ext)
		{
		case MAP_EXT_NULL:
			tag_enter_code(shape, script, posx, posy, posz, 0, 0);
			break;
		case MAP_EXT_ANG:
			buf[0] = **map; (*map)++;
			tag_enter_code(shape, script, posx, posy, posz, buf[0], 0);
			break;
		case MAP_EXT_ANG_CODE:
			buf[0] = **map; (*map)++;
			buf[1] = **map; (*map)++;
			tag_enter_code(shape, script, posx, posy, posz, buf[0], buf[1]);
			break;
		case MAP_EXT_XYZ:
			buf[0] = **map; (*map)++;
			buf[1] = **map; (*map)++;
			buf[2] = **map; (*map)++;
			tag_enter_xyz(
				shape, script, posx, posy, posz, buf[0], buf[1], buf[2]
			);
			break;
		case MAP_EXT_ANG_ARG:
			buf[0] = **map; (*map)++;
			tag_enter_arg(shape, script, posx, posy, posz, buf[0], arg);
			break;
		default:
			break;
		}
	}
}
