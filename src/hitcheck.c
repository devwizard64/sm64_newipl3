#include <sm64.h>

UNUSED static
OBJECT *hitcheck_802C8F40(OBJECT *obj)
{
	OBJECT *hit;
	UNUSED OBJECT *o;
	int i;
	for (i = 0; i < obj->hit_count; i++)
	{
		db_put("ON", 0);
		hit = obj->hit[i];
		if (hit != mario_obj) return hit;
	}
	return NULL;
}

static int obj_check_hit(OBJECT *a, OBJECT *b)
{
	float al = a->o_pos_y - a->hit_offset;
	float bl = b->o_pos_y - b->hit_offset;
	float dx = a->o_pos_x - b->o_pos_x;
	UNUSED float dy = al - bl;
	float dz = a->o_pos_z - b->o_pos_z;
	float radius = a->hit_r + b->hit_r;
	float dist = sqrtf(dx*dx + dz*dz);
	if (radius > dist)
	{
		float ah = al + a->hit_h;
		float bh = bl + b->hit_h;
		if (al > bh) return FALSE;
		if (ah < bl) return FALSE;
		if (a->hit_count >= OBJ_HIT_MAX) return FALSE;
		if (b->hit_count >= OBJ_HIT_MAX) return FALSE;
		a->hit[a->hit_count] = b;
		b->hit[b->hit_count] = a;
		a->hit_status |= b->o_hit_code;
		b->hit_status |= a->o_hit_code;
		a->hit_count++;
		b->hit_count++;
		return TRUE;
	}
#ifndef sgi
	return FALSE;
#endif
}

static int obj_check_dmg(OBJECT *a, OBJECT *b)
{
	float al = a->o_pos_y - a->hit_offset;
	float bl = b->o_pos_y - b->hit_offset;
	float dx = a->o_pos_x - b->o_pos_x;
	UNUSED float dy = al - bl;
	float dz = a->o_pos_z - b->o_pos_z;
	float radius = a->dmg_r + b->dmg_r;
	float dist = sqrtf(dx*dx + dz*dz);
	if (a == mario_obj) b->o_hit_flag |= 2; /* T:hit_flag */
	if (radius > dist)
	{
		float ah = al + a->hit_h;
		float bh = bl + b->dmg_h;
		if (al > bh) return FALSE;
		if (ah < bl) return FALSE;
		if (a == mario_obj) b->o_hit_flag &= ~2; /* T:hit_flag */
		return TRUE;
	}
#ifndef sgi
	return FALSE;
#endif
}

static void hit_clear(OBJECT *root)
{
	OBJECT *obj = root->next;
	while (obj != root)
	{
		obj->hit_count = 0;
		obj->hit_status = 0;
		if (obj->o_hit_timer > 0) obj->o_hit_timer--;
		obj = obj->next;
	}
}

static void hit_check_list(OBJECT *obj, OBJECT *o, OBJECT *root)
{
	if (obj->o_hit_timer == 0)
	{
		while (o != root)
		{
			if (o->o_hit_timer == 0)
			{
				if (obj_check_hit(obj, o) && o->dmg_r != 0)
				{
					obj_check_dmg(obj, o);
				}
			}
			o = o->next;
		}
	}
}

#define HITCHECK(obj, i) \
	hit_check_list(obj, obj_rootlist[i].next, (OBJECT *)&obj_rootlist[i])

static void hit_check_player(void)
{
	OBJECT *root = (OBJECT *)&obj_rootlist[OT_PLAYER];
	OBJECT *obj = root->next;
	while (obj != root)
	{
		hit_check_list(obj, obj->next, root);
		HITCHECK(obj, OT_ATTACH);
		HITCHECK(obj, OT_ITEM);
		HITCHECK(obj, OT_ENEMYA);
		HITCHECK(obj, OT_ENEMYB);
		HITCHECK(obj, OT_MOVEBG);
		HITCHECK(obj, OT_ATTACK);
		obj = obj->next;
	}
}

static void hit_check_enemyb(void)
{
	OBJECT *root = (OBJECT *)&obj_rootlist[OT_ENEMYB];
	OBJECT *obj = root->next;
	while (obj != root)
	{
		hit_check_list(obj, obj->next, root);
		obj = obj->next;
	}
}

static void hit_check_attack(void)
{
	OBJECT *root = (OBJECT *)&obj_rootlist[OT_ATTACK];
	OBJECT *obj = root->next;
	while (obj != root)
	{
		if (obj->o_pl_dist < 2000 && !(obj->flag & OBJ_0200))
		{
			hit_check_list(obj, obj->next, root);
			HITCHECK(obj, OT_ENEMYA);
			HITCHECK(obj, OT_ENEMYB);
			HITCHECK(obj, OT_MOVEBG);
		}
		obj = obj->next;
	}
}

void hit_check(void)
{
	hit_clear((OBJECT *)&obj_rootlist[OT_ATTACH]);
	hit_clear((OBJECT *)&obj_rootlist[OT_PLAYER]);
	hit_clear((OBJECT *)&obj_rootlist[OT_ENEMYB]);
	hit_clear((OBJECT *)&obj_rootlist[OT_ENEMYA]);
	hit_clear((OBJECT *)&obj_rootlist[OT_ITEM]);
	hit_clear((OBJECT *)&obj_rootlist[OT_MOVEBG]);
	hit_clear((OBJECT *)&obj_rootlist[OT_ATTACK]);
	hit_check_player();
	hit_check_attack();
	hit_check_enemyb();
}
