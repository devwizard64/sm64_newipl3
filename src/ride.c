#include <sm64.h>

static s16 ride_80330E20 = 0;
UNUSED static int ride_80330E24[4] = {0};
static OBJECT *plride_obj = NULL;

void plride_find(void)
{
	BGFACE *ground;
	UNUSED OBJECT *obj;
	float x, y, z;
	float ground_y;
	int code;
	if (!mario_obj) return;
	x = mario_obj->o_pos_x;
	y = mario_obj->o_pos_y;
	z = mario_obj->o_pos_z;
	ground_y = bg_check_ground(x, y, z, &ground);
	if (objlib_802A3634(y-ground_y) < 4)    code = 0;
	else                                    code = 1;
	switch (code)
	{
	case 1:
		plride_obj = NULL;
		mario_obj->ride = NULL;
		break;
	case 0:
		if (ground && ground->obj)
		{
			plride_obj = ground->obj;
			mario_obj->ride = ground->obj;
		}
		else
		{
			plride_obj = NULL;
			mario_obj->ride = NULL;
		}
		break;
	}
}

void mario_get_pos(float *x, float *y, float *z)
{
	*x = player_data[0].pos[0];
	*y = player_data[0].pos[1];
	*z = player_data[0].pos[2];
}

void mario_set_pos(float x, float y, float z)
{
	player_data[0].pos[0] = x;
	player_data[0].pos[1] = y;
	player_data[0].pos[2] = z;
}

void ride_proc(int ismario, OBJECT *obj)
{
	float posx, posy, posz, gndx, gndy, gndz;
	VECF pos, off, new;
	VECS ang;
	ang[0] = obj->o_ang_vel_x;
	ang[1] = obj->o_ang_vel_y;
	ang[2] = obj->o_ang_vel_z;
	if (ismario)
	{
		ride_80330E20 = 0;
		mario_get_pos(&posx, &posy, &posz);
	}
	else
	{
		posx = object->o_pos_x;
		posy = object->o_pos_y;
		posz = object->o_pos_z;
	}
	posx += obj->o_vel_x;
	posz += obj->o_vel_z;
	if (ang[0] != 0 || ang[1] != 0 || ang[2] != 0)
	{
		UNUSED short angx = ang[0];
		UNUSED short angz = ang[2];
		UNUSED short angy = obj->o_shape_ang_y;
		MTXF mf;
		if (ismario) player_data[0].ang[1] += ang[1];
		gndx = obj->o_pos_x;
		gndy = obj->o_pos_y;
		gndz = obj->o_pos_z;
		pos[0] = posx - gndx;
		pos[1] = posy - gndy;
		pos[2] = posz - gndz;
		ang[0] = obj->o_shape_ang_x - obj->o_ang_vel_x;
		ang[1] = obj->o_shape_ang_y - obj->o_ang_vel_y;
		ang[2] = obj->o_shape_ang_z - obj->o_ang_vel_z;
		mtxf_coord(mf, pos, ang);
		objlib_8029F274(mf, off, pos);
		ang[0] = obj->o_shape_ang_x;
		ang[1] = obj->o_shape_ang_y;
		ang[2] = obj->o_shape_ang_z;
		mtxf_coord(mf, pos, ang);
		objlib_8029F200(mf, new, off);
		posx = new[0] + gndx;
		posy = new[1] + gndy;
		posz = new[2] + gndz;
	}
	if (ismario)
	{
		mario_set_pos(posx, posy, posz);
	}
	else
	{
		object->o_pos_x = posx;
		object->o_pos_y = posy;
		object->o_pos_z = posz;
	}
}

void plride_proc(void)
{
	OBJECT *obj = plride_obj;
	if (!(object_flag & OBJECT_FROZEN))
	{
		if (mario_obj && obj) ride_proc(TRUE, obj);
	}
}

void plride_clear(void)
{
	plride_obj = NULL;
}
