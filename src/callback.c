#include <sm64.h>

static S_OBJECT mario_mirror;
PL_SHAPE pl_shape_data[2];

void *s_stage_weather(int code, SHAPE *shape, UNUSED void *data)
{
	VECS pos;
	VECS eye;
	VECS look;
	Gfx *g;
	Gfx *gfx = NULL;
	if (code == SC_DRAW && s_camera)
	{
		S_CALLBACK *shp = (S_CALLBACK *)shape;
#ifdef sgi
		u16 *arg = (u16 *)&shp->arg;
		if (arg[0] != draw_timer)
#else
		if (shp->arg >> 16 != draw_timer)
#endif
		{
			UNUSED CAMERA *cam = (CAMERA *)s_camera->s.arg;
#ifdef sgi
			int code = arg[1];
#else
			int code = shp->arg & 0xFFFF;
#endif
			vecf_to_vecs(look, s_camera->look);
			vecf_to_vecs(eye, s_camera->eye);
			vecf_to_vecs(pos, pl_camera_data[0].pos);
			if ((g = weather_draw(code, pos, look, eye)))
			{
				Mtx *mtx = gfx_alloc(sizeof(Mtx));
				gfx = gfx_alloc(sizeof(Gfx)*2);
				mtxf_to_mtx(mtx, data);
				gSPMatrix(
					&gfx[0], K0_TO_PHYS(mtx),
					G_MTX_MODELVIEW|G_MTX_LOAD|G_MTX_NOPUSH
				);
				gSPBranchList(&gfx[1], K0_TO_PHYS(g));
				shape_set_layer(&shp->s, LAYER_TEX_EDGE);
			}
#ifdef sgi
			arg[0] = draw_timer;
#else
			shp->arg = (shp->arg & 0xFFFF) | draw_timer << 16;
#endif
		}
	}
	else if (code == SC_EXIT)
	{
		vecs_cpy(look, vecs_0);
		vecs_cpy(eye, vecs_0);
		vecs_cpy(pos, vecs_0);
		weather_draw(0, pos, look, eye);
	}
	return gfx;
}

void *s_stage_back(int code, SHAPE *shape, UNUSED void *data)
{
	Gfx *gfx = NULL;
	S_BACK *shp = (S_BACK *)shape;
	if (code == SC_OPEN)
	{
		shp->s.arg = 0;
	}
	else if (code == SC_DRAW)
	{
		S_CAMERA *cam = (S_CAMERA *)s_scene->table[0];
		S_PERSP *persp = (S_PERSP *)cam->s.s.parent;
		gfx = back_draw(
			0, shp->code, persp->fovy,
			camdata.eye[0], camdata.eye[1], camdata.eye[2],
			camdata.look[0], camdata.look[1], camdata.look[2]
		);
	}
	return gfx;
}

void *s_face_proc(int code, SHAPE *shape, void *data)
{
	Gfx *gfx = NULL;
	SHORT sound = 0;
	S_CALLBACK *shp = (S_CALLBACK *)shape;
	UNUSED MTXF *mf = data;
	if (code == SC_DRAW)
	{
		if (cont1->pad && !wipe.active) face_gfx_8019C930(cont1->pad);
		gfx = (Gfx *)PHYS_TO_K0(gdm_gettestdl(shp->arg));
		gfx_callback = face_gfx_8019C874;
		sound = face_gfx_8019C9C8();
		aud_face_sound(sound);
	}
	return gfx;
}

static void callback_8027657C(void)
{
	if (object->o_pl_dist > 700) object->o_v6 = FALSE;
	if (!object->o_v6 && object->o_pl_dist < 600) object->o_v7 = 2;
}

static void callback_802765FC(void)
{
	if (object->o_pl_dist > 700)
	{
		object->o_v7 = 3;
	}
	else if (!object->o_v6)
	{
		object->o_hit_flag = 0x4000; /* T:hit_flag */
		if (object->o_hit_result & 0x8000) /* T:hit_result */
		{
			object->o_hit_result = 0;
			object->o_v7 = 4;
			Na_ToadMessage();
		}
	}
}

static void callback_802766B4(void)
{
	if (objlib_802A4BE4(3, 1, 162, object->o_v5))
	{
		object->o_v6 = TRUE;
		object->o_v7 = 3;
		switch (object->o_v5)
		{
		case 82: /* T:msg */
			object->o_v5 = 154; /* T:msg */
			object_a_802AB558(0);
			break;
		case 76: /* T:msg */
			object->o_v5 = 155; /* T:msg */
			object_a_802AB558(1);
			break;
		case 83: /* T:msg */
			object->o_v5 = 156; /* T:msg */
			object_a_802AB558(2);
			break;
		}
	}
}

static void callback_802767B8(void)
{
	if ((object->o_alpha += 6) == 0xFF) object->o_v7 = 1;
}

static void callback_80276804(void)
{
	if ((object->o_alpha -= 6) == 0x51) object->o_v7 = 0;
}

void callback_8027684C(void)
{
	if (object->s.s.flag & SHP_ACTIVE)
	{
		object->o_hit_flag = 0;
		switch (object->o_v7)
		{
		case 0: callback_8027657C(); break;
		case 1: callback_802765FC(); break;
		case 2: callback_802767B8(); break;
		case 3: callback_80276804(); break;
		case 4: callback_802766B4(); break;
		}
	}
}

void callback_80276910(void)
{
	u32 flag = save_get_flag();
	int total = save_star_total();
	int msg = object->o_actor_info >> 24 & 0xFF;
	int has_msg = TRUE;
	switch (msg)
	{
	case 82: /* T:msg */
		has_msg = total >= 12;
		if (flag & ((1 << 0) << 24)) msg = 154; /* T:msg */
		break;
	case 76: /* T:msg */
		has_msg = total >= 25;
		if (flag & ((1 << 1) << 24)) msg = 155; /* T:msg */
		break;
	case 83: /* T:msg */
		has_msg = total >= 35;
		if (flag & ((1 << 2) << 24)) msg = 156; /* T:msg */
		break;
	}
	if (has_msg)
	{
		object->o_v5 = msg;
		object->o_v6 = FALSE;
		object->o_v7 = 0;
		object->o_alpha = 0x51;
	}
	else
	{
		objlib_802A0568(object);
	}
}

extern O_SCRIPT o_13002AF0[];

static void callback_80276AA0(SHORT angy)
{
	OBJECT *obj = obj_make_here(object, 0, o_13002AF0);
	obj->o_pos_x += 100 * SIN(0x2800*object->o_v6 + angy);
	obj->o_pos_z += 100 * COS(0x2800*object->o_v6 + angy);
	obj->o_pos_y -= object->o_v6 * (float)10;
}

void callback_80276BB8(void)
{
	object->o_v5 = 0;
	object->o_v6 = 0;
	object->o_v7 = 0x1000;
	object->o_pos_x += 30 * SIN(mario->ang[1]-0x4000);
	object->o_pos_y += 160;
	object->o_pos_z += 30 * COS(mario->ang[1]-0x4000);
	object->o_ang_y = 0x7800;
	obj_set_scale(object, 0.5F);
}

void callback_80276CCC(void)
{
	UNUSED int i;
	short ang = object->o_ang_y;
	if (object->o_v7 < 0x2400) object->o_v7 += 0x60;
	switch (object->o_v5)
	{
	case 0:
		object->o_pos_y += 3.4F;
		object->o_ang_y += object->o_v7;
		obj_set_scale(object, 0.5F + (float)object->o_v6/50);
		if (++object->o_v6 == 30)
		{
			object->o_v6 = 0;
			object->o_v5++;
		}
		break;
	case 1:
		object->o_ang_y += object->o_v7;
		if (++object->o_v6 == 30)
		{
			Na_ObjSePlay(NA_SE7_1E, object);
			objlib_8029F6BC();
			object->o_v6 = 0;
			object->o_v5++;
		}
		break;
	case 2:
		callback_80276AA0(0);
		callback_80276AA0(-0x8000);
		if (object->o_v6++ == 20)
		{
			object->o_v6 = 0;
			object->o_v5++;
		}
		break;
	case 3:
		if (object->o_v6++ == 50)
		{
			objlib_802A0568(object);
		}
		break;
	}
	if (ang > (short)object->o_ang_y) Na_ObjSePlay(NA_SE3_16, object);
}

static Gfx *callback_80276F90(S_CALLBACK *shp, SHORT alpha)
{
	Gfx *g;
	Gfx *gfx = NULL;
	if (alpha == 0xFF)
	{
		shape_set_layer(&shp->s, LAYER_OPA_SURF);
		g = gfx = gfx_alloc(sizeof(Gfx)*2);
	}
	else
	{
		shape_set_layer(&shp->s, LAYER_XLU_SURF);
		g = gfx = gfx_alloc(sizeof(Gfx)*3);
		gDPSetAlphaCompare(g++, G_AC_DITHER);
	}
	gDPSetEnvColor(g++, 0xFF, 0xFF, 0xFF, alpha);
	gSPEndDisplayList(g);
	return gfx;
}

void *s_player_alpha(int code, SHAPE *shape, UNUSED void *data)
{
	UNUSED int i;
	Gfx *gfx = NULL;
	S_CALLBACK *shp = (S_CALLBACK *)shape;
	PL_SHAPE *pls = &pl_shape_data[shp->arg];
	if (code == SC_DRAW)
	{
		SHORT alpha = (pls->cap & 0x100) ? (pls->cap & 0xFF) : 0xFF; /* T: */
		gfx = callback_80276F90(shp, alpha);
	}
	return gfx;
}

void *s_player_select_lod(int code, SHAPE *shape, UNUSED void *data)
{
	S_SELECT *shp = (S_SELECT *)shape;
	PL_SHAPE *pls = &pl_shape_data[shp->code];
	if (code == SC_DRAW)
	{
		shp->index = (pls->state & PF_WAIT) == 0;
	}
	return NULL;
}

void *s_player_select_eyes(int code, SHAPE *shape, UNUSED void *data)
{
	static s8 table[] = {1, 2, 1, 0, 1, 2, 1, 0};
	S_SELECT *shp = (S_SELECT *)shape;
	PL_SHAPE *pls = &pl_shape_data[shp->code];
	if (code == SC_DRAW)
	{
		if (pls->eyes == 0)
		{
			SHORT i = (32*shp->code + draw_timer) >> 1 & 31;
			if (i < 7)  shp->index = table[i];
			else        shp->index = 0;
		}
		else
		{
			shp->index = pls->eyes - 1;
		}
	}
	return NULL;
}

void *s_player_torso(int code, SHAPE *shape, UNUSED void *data)
{
	S_CALLBACK *shp = (S_CALLBACK *)shape;
	PL_SHAPE *pls = &pl_shape_data[shp->arg];
	u32 state = pls->state;
	if (code == SC_DRAW)
	{
		S_ANG *ang = (S_ANG *)shape->next;
		if (!(
			state == PS_MOVE_12 ||
			state == PS_MOVE_14 ||
			state == PS_MOVE_00 ||
			state == PS_MOVE_06
		)) vecs_cpy(pls->torso_ang, vecs_0);
		ang->ang[0] = pls->torso_ang[1];
		ang->ang[1] = pls->torso_ang[2];
		ang->ang[2] = pls->torso_ang[0];
	}
	return NULL;
}

void *s_player_head(int code, SHAPE *shape, UNUSED void *data)
{
	S_CALLBACK *shp = (S_CALLBACK *)shape;
	PL_SHAPE *pls = &pl_shape_data[shp->arg];
	u32 state = pls->state;
	if (code == SC_DRAW)
	{
		S_ANG *ang = (S_ANG *)shape->next;
		CAMERA *cam = (CAMERA *)s_camera->s.arg;
		if (cam->mode == 6) /* T:enum */
		{
			ang->ang[0] = pl_camera_data[0].head_angy;
			ang->ang[2] = pl_camera_data[0].head_angx;
		}
		else if (state & PF_HEAD)
		{
			ang->ang[0] = pls->head_ang[1];
			ang->ang[1] = pls->head_ang[2];
			ang->ang[2] = pls->head_ang[0];
		}
		else
		{
			vecs_set(pls->head_ang, 0, 0, 0);
			vecs_set(ang->ang, 0, 0, 0);
		}
	}
	return NULL;
}

void *s_mario_select_hand(int code, SHAPE *shape, UNUSED void *data)
{
	S_SELECT *shp = (S_SELECT *)shape;
	PL_SHAPE *pls = &pl_shape_data[0];
	if (code == SC_DRAW)
	{
		if (pls->hand == 0)
		{
			shp->index = (pls->state & PF_HAND) != 0;
		}
		else if (shp->code == 0)
		{
			shp->index = pls->hand < 5 ? pls->hand : 1;
		}
		else
		{
			shp->index = pls->hand < 2 ? pls->hand : 0;
		}
	}
	return NULL;
}

void *s_mario_punch(int code, SHAPE *shape, UNUSED void *data)
{
	static s8 table[][6] =
	{
		{10, 12, 16, 24, 10, 10},
		{10, 14, 20, 30, 10, 10},
		{10, 16, 20, 26, 26, 20},
	};
	static s16 stamp = 0;
	S_CALLBACK *shp = (S_CALLBACK *)shape;
	S_SCALE *scale = (S_SCALE *)shape->next;
	PL_SHAPE *pls = &pl_shape_data[0];
	if (code == SC_DRAW)
	{
		scale->scale = 1;
		if (shp->arg == (pls->punch >> 6))
		{
			if (stamp != draw_timer && (pls->punch & 63) > 0)
			{
				pls->punch--;
				stamp = draw_timer;
			}
			scale->scale = (float)table[shp->arg][pls->punch & 63]/10;
		}
	}
	return NULL;
}

void *s_player_select_cap(int code, SHAPE *shape, UNUSED void *data)
{
	S_SELECT *shp = (S_SELECT *)shape;
	PL_SHAPE *pls = &pl_shape_data[shp->code];
	if (code == SC_DRAW)
	{
		shp->index = pls->cap >> 8;
	}
	return NULL;
}

void *s_player_select_head(int code, SHAPE *shape, UNUSED void *data)
{
	SHAPE *next = shape->next;
	S_SELECT *shp = (S_SELECT *)shape;
	PL_SHAPE *pls = &pl_shape_data[shp->code];
	if (code == SC_DRAW)
	{
		shp->index = pls->head & 1; /* T:flag */
		while (next != shape)
		{
			if (next->type == ST_COORD)
			{
				if (pls->head & 2)  next->flag |= SHP_ACTIVE; /* T:flag */
				else                next->flag &= ~SHP_ACTIVE;
			}
			next = next->next;
		}
	}
	return NULL;
}

void *s_player_wing(int code, SHAPE *shape, UNUSED void *data)
{
	SHORT x;
	S_CALLBACK *shp = (S_CALLBACK *)shape;
	if (code == SC_DRAW)
	{
		S_ANG *ang = (S_ANG *)shape->next;
		if (pl_shape_data[shp->arg >> 1].wing == 0)
		{
			x = 0x1000 * (1+COS(0x1000*(draw_timer & 15)));
		}
		else
		{
			x = 0x1800 * (1+COS(0x2000*(draw_timer & 7)));
		}
		if (!(shp->arg & 1))    ang->ang[0] = -x;
		else                    ang->ang[0] = +x;
	}
	return NULL;
}

void *s_player_hand(int code, SHAPE *shape, void *data)
{
	S_HAND *shp = (S_HAND *)shape;
	MTXF *mf = data;
	PLAYER *pl = &player_data[shp->s.arg];
	if (code == SC_DRAW)
	{
		shp->obj = NULL;
		if (pl->hold)
		{
			shp->obj = &pl->hold->s;
			switch (pl->shape->hold)
			{
			case 1:
				if (pl->state & PF_THRW)
				{
					vecs_set(shp->pos, 50, 0, 0);
				}
				else
				{
					vecs_set(shp->pos, 50, 0, 110);
				}
				break;
			case 2:
				vecs_set(shp->pos, 145, -173, 180);
				break;
			case 3:
				vecs_set(shp->pos, 80, -270, 1260);
				break;
			}
		}
	}
	else if (code == SC_MTX)
	{
		vecf_scenepos(pl->shape->hand_pos, *mf, *s_camera->mf);
	}
	return NULL;
}

void *s_inside_mirror(int code, SHAPE *shape, UNUSED void *data)
{
	float x;
	S_OBJECT *shp = &player_data[0].obj->s;
	switch (code)
	{
	case SC_INIT:
		s_create_object(NULL, &mario_mirror, NULL, vecf_0, vecs_0, vecf_1);
		break;
	case SC_OPEN:
		shape_link(shape, &mario_mirror.s);
		break;
	case SC_CLOSE:
		shape_unlink(&mario_mirror.s);
		break;
	case SC_DRAW:
		if (shp->pos[0] > 1700)
		{
			mario_mirror.shape = shp->shape;
			mario_mirror.scene = shp->scene;
			vecs_cpy(mario_mirror.ang, shp->ang);
			vecf_cpy(mario_mirror.pos, shp->pos);
			vecf_cpy(mario_mirror.scale, shp->scale);
			mario_mirror.skel = shp->skel;
			x = 4331.53 - mario_mirror.pos[0];
			mario_mirror.pos[0] = 4331.53 + x;
			mario_mirror.ang[1] = -mario_mirror.ang[1];
			mario_mirror.scale[0] *= -1;
			((SHAPE *)(&mario_mirror.s))->flag |= SHP_ACTIVE;
		}
		else
		{
			((SHAPE *)(&mario_mirror.s))->flag &= ~SHP_ACTIVE;
		}
		break;
	}
	return NULL;
}

void *s_mario_mirror(int code, SHAPE *shape, UNUSED void *data)
{
	S_CALLBACK *shp = (S_CALLBACK *)shape;
	Gfx *gfx = NULL;
	if (code == SC_DRAW)
	{
		if (s_object == &mario_mirror)
		{
			gfx = gfx_alloc(sizeof(Gfx)*3);
			if (shp->arg == 0)
			{
				gSPClearGeometryMode(&gfx[0], G_CULL_BACK);
				gSPSetGeometryMode(&gfx[1], G_CULL_FRONT);
				gSPEndDisplayList(&gfx[2]);
			}
			else
			{
				gSPClearGeometryMode(&gfx[0], G_CULL_FRONT);
				gSPSetGeometryMode(&gfx[1], G_CULL_BACK);
				gSPEndDisplayList(&gfx[2]);
			}
			shape_set_layer(&shp->s, LAYER_OPA_SURF);
		}
	}
	return gfx;
}
