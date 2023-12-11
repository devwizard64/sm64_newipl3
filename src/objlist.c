#include <sm64.h>

UNUSED static
void list_init(LIST *root, LIST *free, LIST *data, size_t size, int count)
{
	int i;
	LIST *item = data;
	root->next = root;
	root->prev = root;
	free->next = data;
	for (i = 0; i < count-1; i++)
	{
		item = (LIST *)((char *)item + size);
		data->next = item;
		data = item;
	}
	data->next = NULL;
}

UNUSED static
LIST *list_alloc(LIST *root, LIST *free)
{
	LIST *item;
	if ((item = free->next))
	{
		free->next = item->next;
		item->prev = root->prev;
		item->next = root;
		root->prev->next = item;
		root->prev = item;
	}
	return item;
}

static OBJECT *objlist_alloc(OBJLIST *root, OBJLIST *free)
{
	OBJECT *obj;
	if ((obj = free->next))
	{
		free->next = obj->next;
		obj->prev = root->prev;
		obj->next = (OBJECT *)root;
		root->prev->next = obj;
		root->prev = obj;
	}
	else
	{
		return NULL;
	}
	shape_unlink(&obj->s.s);
	shape_link(&sobj_list, &obj->s.s);
	return obj;
}

UNUSED static
void list_free(LIST *free, LIST *item)
{
	item->next->prev = item->prev;
	item->prev->next = item->next;
	item->next = free->next;
	free->next = item;
}

static void objlist_free(OBJLIST *free, OBJECT *obj)
{
	obj->next->prev = obj->prev;
	obj->prev->next = obj->next;
	obj->next = free->next;
	free->next = obj;
}

void obj_freelist_init(void)
{
	int i;
	int count = OBJECT_MAX;
	OBJECT *obj = object_data;
	obj_freelist.next = obj;
	for (i = 0; i < count-1; i++)
	{
		obj->next = obj+1;
		obj++;
	}
	obj->next = NULL;
}

void obj_rootlist_init(OBJLIST *root)
{
	int i;
	for (i = 0; i < OT_MAX; i++)
	{
		root[i].next = (OBJECT *)&root[i];
		root[i].prev = (OBJECT *)&root[i];
	}
}

UNUSED static
void objlist_802C9AD8(SHAPE *shape)
{
	SHAPE *child;
	SHAPE *next;
	SHAPE *first = shape;
	if ((child = shape->child)) objlist_802C9AD8(child);
	else obj_destroy((OBJECT *)shape);
	while ((next = shape->next) == first)
	{
		objlist_802C9AD8(next);
		shape = next->next;
	}
}

void obj_free(OBJECT *obj)
{
	obj->flag = 0;
	obj->child = NULL;
	obj->s.mf = NULL;
	Na_ObjSeKill(obj);
	shape_unlink(&obj->s.s);
	shape_link(&sobj_list, &obj->s.s);
	obj->s.s.flag &= ~SHP_BILLBOARD;
	obj->s.s.flag &= ~SHP_ACTIVE;
	objlist_free(&obj_freelist, obj);
}

static OBJECT *obj_alloc(OBJLIST *root)
{
	int i;
	OBJECT *obj;
	if (!(obj = objlist_alloc(root, &obj_freelist)))
	{
		OBJECT *o;
		if (!(o = objlib_8029FB1C()))
		{
			for (;;);
		}
		else
		{
			obj_free(o);
			obj = objlist_alloc(root, &obj_freelist);
			if (object == obj)
			{
			}
		}
	}
	obj->flag = OBJ_0001 | OBJ_0100;
	obj->parent = obj;
	obj->child = NULL;
	obj->hit_status = 0;
	obj->hit_count = 0;
	for (i = 0; i < OBJ_MEM_MAX; i++) obj->mem[i].i = 0;
	obj->_1C8 = NULL;
	obj->sp = 0;
	obj->sleep = 0;
	obj->hit_r = 50;
	obj->hit_h = 100;
	obj->dmg_r = 0;
	obj->dmg_h = 0;
	obj->hit_offset = 0;
	obj->_210 = NULL;
	obj->ride = NULL;
	obj->map = NULL;
	obj->o_hit_timer = -1;
	obj->o_ap = 0;
	obj->o_hp = 2048;
	obj->o_check_dist = 1000;
	if (stage_index == STAGE_TTC)   obj->o_shape_dist = 2000;
	else                            obj->o_shape_dist = 4000;
	mtxf_identity(obj->mf);
	obj->actor_type = ACTORTYPE_NULL;
	obj->actor_flag = NULL;
	obj->o_pl_dist = 19000; /* T:def */
	obj->o_area = -1;
	obj->s.s.flag &= ~SHP_OBJHIDE;
	obj->s.pos[0] = -10000;
	obj->s.pos[1] = -10000;
	obj->s.pos[2] = -10000;
	obj->s.mf = NULL;
	return obj;
}

static void obj_init_ground(OBJECT *obj)
{
	BGFACE *ground;
	obj->o_ground_y = bg_check_ground(
		obj->o_pos_x, obj->o_pos_y, obj->o_pos_z, &ground
	);
	if (obj->o_ground_y+2 > obj->o_pos_y && obj->o_ground_y-10 < obj->o_pos_y)
	{
		obj->o_pos_y = obj->o_ground_y;
		obj->o_move_status |= OM_TOUCH;
	}
}

OBJECT *obj_create(O_SCRIPT *script)
{
	int i;
	OBJECT *obj;
	OBJLIST *root;
	O_SCRIPT *s = script;
	if (script[0] >> 24 == 0)   i = script[0] >> 16 & 0xFFFF; /* T:enum */
	else                        i = OT_DEFAULT;
	root = &obj_rootlist[i];
	obj = obj_alloc(root);
	obj->pc = script;
	obj->script = s;
	if (i == OT_EFFECT) obj->flag |= OBJ_0010;
	switch (i)
	{
	case OT_ENEMYA:
	case OT_ENEMYB:
	case OT_ATTACH:
		obj_init_ground(obj);
		break;
	default:
		break;
	}
	return obj;
}

void obj_destroy(OBJECT *obj)
{
	obj->flag = 0;
}
