#include <sm64.h>

static void shape_init(SHAPE *shape, int type)
{
	shape->type = type;
	shape->flag = SHP_ACTIVE;
	shape->prev = shape;
	shape->next = shape;
	shape->parent = NULL;
	shape->child = NULL;
}

S_SCENE *s_create_scene(
	ARENA *arena, S_SCENE *shp, SHORT index, SHORT x, SHORT y, SHORT w, SHORT h
)
{
	if (arena) shp = arena_alloc(arena, sizeof(S_SCENE));
	if (shp)
	{
		shape_init(&shp->s, ST_SCENE);
		shp->index = index;
		shp->screen = 0;
		shp->x = x;
		shp->y = y;
		shp->w = w;
		shp->h = h;
		shp->table = NULL;
		shp->count = 0;
	}
	return shp;
}

S_ORTHO *s_create_ortho(ARENA *arena, S_ORTHO *shp, float scale)
{
	if (arena) shp = arena_alloc(arena, sizeof(S_ORTHO));
	if (shp)
	{
		shape_init(&shp->s, ST_ORTHO);
		shp->scale = scale;
	}
	return shp;
}

S_PERSP *s_create_persp(
	ARENA *arena, S_PERSP *shp, float fovy, SHORT near, SHORT far,
	SHPCALL *callback, unsigned long arg
)
{
	if (arena) shp = arena_alloc(arena, sizeof(S_PERSP));
	if (shp)
	{
		shape_init(&shp->s.s, ST_PERSP);
		shp->fovy = fovy;
		shp->near = near;
		shp->far = far;
		shp->s.callback = callback;
		shp->s.arg = arg;
		if (callback) callback(SC_INIT, &shp->s.s, arena);
	}
	return shp;
}

SHAPE *s_create_empty(ARENA *arena, SHAPE *shp)
{
	if (arena) shp = arena_alloc(arena, sizeof(SHAPE));
	if (shp)
	{
		shape_init(shp, ST_EMPTY);
	}
	return shp;
}

S_LAYER *s_create_layer(ARENA *arena, S_LAYER *shp, SHORT zb)
{
	if (arena) shp = arena_alloc(arena, sizeof(S_LAYER));
	if (shp)
	{
		shape_init(&shp->s, ST_LAYER);
		if (zb) shp->s.flag |= SHP_ZBUFFER;
	}
	return shp;
}

S_LOD *s_create_lod(ARENA *arena, S_LOD *shp, SHORT min, SHORT max)
{
	if (arena) shp = arena_alloc(arena, sizeof(S_LOD));
	if (shp)
	{
		shape_init(&shp->s, ST_LOD);
		shp->min = min;
		shp->max = max;
	}
	return shp;
}

S_SELECT *s_create_select(
	ARENA *arena, S_SELECT *shp, SHORT code, SHORT index,
	SHPCALL *callback, unsigned long arg
)
{
	if (arena) shp = arena_alloc(arena, sizeof(S_SELECT));
	if (shp)
	{
		shape_init(&shp->s.s, ST_SELECT);
		shp->code = code;
		shp->index = index;
		shp->s.callback = callback;
		shp->s.arg = arg;
		if (callback) callback(SC_INIT, &shp->s.s, arena);
	}
	return shp;
}

S_CAMERA *s_create_camera(
	ARENA *arena, S_CAMERA *shp, VECF eye, VECF look,
	SHPCALL *callback, unsigned long arg
)
{
	if (arena) shp = arena_alloc(arena, sizeof(S_CAMERA));
	if (shp)
	{
		shape_init(&shp->s.s, ST_CAMERA);
		vecf_cpy(shp->eye, eye);
		vecf_cpy(shp->look, look);
		shp->s.callback = callback;
		shp->s.arg = arg;
		shp->angz_m = 0;
		shp->angz_p = 0;
		if (callback) callback(SC_INIT, &shp->s.s, arena);
	}
	return shp;
}

S_COORD *s_create_coord(
	ARENA *arena, S_COORD *shp, int layer, Gfx *gfx, VECS pos, VECS ang
)
{
	if (arena) shp = arena_alloc(arena, sizeof(S_COORD));
	if (shp)
	{
		shape_init(&shp->s.s, ST_COORD);
		vecs_cpy(shp->pos, pos);
		vecs_cpy(shp->ang, ang);
		shape_set_layer(&shp->s.s, layer);
		shp->s.gfx = gfx;
	}
	return shp;
}

S_POS *s_create_pos(ARENA *arena, S_POS *shp, int layer, Gfx *gfx, VECS pos)
{
	if (arena) shp = arena_alloc(arena, sizeof(S_POS));
	if (shp)
	{
		shape_init(&shp->s.s, ST_POS);
		vecs_cpy(shp->pos, pos);
		shape_set_layer(&shp->s.s, layer);
		shp->s.gfx = gfx;
	}
	return shp;
}

S_ANG *s_create_ang(ARENA *arena, S_ANG *shp, int layer, Gfx *gfx, VECS ang)
{
	if (arena) shp = arena_alloc(arena, sizeof(S_ANG));
	if (shp)
	{
		shape_init(&shp->s.s, ST_ANG);
		vecs_cpy(shp->ang, ang);
		shape_set_layer(&shp->s.s, layer);
		shp->s.gfx = gfx;
	}
	return shp;
}

S_SCALE *s_create_scale(
	ARENA *arena, S_SCALE *shp, int layer, Gfx *gfx, float scale
)
{
	if (arena) shp = arena_alloc(arena, sizeof(S_SCALE));
	if (shp)
	{
		shape_init(&shp->s.s, ST_SCALE);
		shape_set_layer(&shp->s.s, layer);
		shp->scale = scale;
		shp->s.gfx = gfx;
	}
	return shp;
}

S_OBJECT *s_create_object(
	ARENA *arena, S_OBJECT *shp, SHAPE *shape, VECF pos, VECS ang, VECF scale
)
{
	if (arena) shp = arena_alloc(arena, sizeof(S_OBJECT));
	if (shp)
	{
		shape_init(&shp->s, ST_OBJECT);
		vecf_cpy(shp->pos, pos);
		vecf_cpy(shp->scale, scale);
		vecs_cpy(shp->ang, ang);
		shp->shape = shape;
		shp->mf = NULL;
		shp->skel.index = 0;
		shp->skel.anime = NULL;
		shp->skel.frame = 0;
		shp->skel.vframe = 0;
		shp->skel.vspeed = 1 << 16;
		shp->skel.stamp = 0;
		shp->s.flag |= SHP_ANIME;
	}
	return shp;
}

S_CULL *s_create_cull(ARENA *arena, S_CULL *shp, SHORT dist)
{
	if (arena) shp = arena_alloc(arena, sizeof(S_CULL));
	if (shp)
	{
		shape_init(&shp->s, ST_CULL);
		shp->dist = dist;
	}
	return shp;
}

S_JOINT *s_create_joint(
	ARENA *arena, S_JOINT *shp, int layer, Gfx *gfx, VECS pos
)
{
	if (arena) shp = arena_alloc(arena, sizeof(S_JOINT));
	if (shp)
	{
		shape_init(&shp->s.s, ST_JOINT);
		vecs_cpy(shp->pos, pos);
		shape_set_layer(&shp->s.s, layer);
		shp->s.gfx = gfx;
	}
	return shp;
}

S_BILLBOARD *s_create_billboard(
	ARENA *arena, S_BILLBOARD *shp, int layer, Gfx *gfx, VECS pos
)
{
	if (arena) shp = arena_alloc(arena, sizeof(S_BILLBOARD));
	if (shp)
	{
		shape_init(&shp->s.s, ST_BILLBOARD);
		vecs_cpy(shp->pos, pos);
		shape_set_layer(&shp->s.s, layer);
		shp->s.gfx = gfx;
	}
	return shp;
}

S_GFX *s_create_gfx(ARENA *arena, S_GFX *shp, int layer, Gfx *gfx)
{
	if (arena) shp = arena_alloc(arena, sizeof(S_GFX));
	if (shp)
	{
		shape_init(&shp->s, ST_GFX);
		shape_set_layer(&shp->s, layer);
		shp->gfx = gfx;
	}
	return shp;
}

S_SHADOW *s_create_shadow(
	ARENA *arena, S_SHADOW *shp, SHORT size, UCHAR alpha, UCHAR type
)
{
	if (arena) shp = arena_alloc(arena, sizeof(S_SHADOW));
	if (shp)
	{
		shape_init(&shp->s, ST_SHADOW);
		shp->size = size;
		shp->alpha = alpha;
		shp->type = type;
	}
	return shp;
}

S_LIST *s_create_list(ARENA *arena, S_LIST *shp, SHAPE *shape)
{
	if (arena) shp = arena_alloc(arena, sizeof(S_LIST));
	if (shp)
	{
		shape_init(&shp->s, ST_LIST);
		shp->shape = shape;
	}
	return shp;
}

S_CALLBACK *s_create_callback(
	ARENA *arena, S_CALLBACK *shp, SHPCALL *callback, unsigned long arg
)
{
	if (arena) shp = arena_alloc(arena, sizeof(S_CALLBACK));
	if (shp)
	{
		shape_init(&shp->s, ST_CALLBACK);
		shp->callback = callback;
		shp->arg = arg;
		if (callback) callback(SC_INIT, &shp->s, arena);
	}
	return shp;
}

S_BACK *s_create_back(
	ARENA *arena, S_BACK *shp, USHORT code, SHPCALL *callback, unsigned long arg
)
{
	if (arena) shp = arena_alloc(arena, sizeof(S_BACK));
	if (shp)
	{
		shape_init(&shp->s.s, ST_BACK);
		shp->code = code << 16 | (u16)code;
		shp->s.callback = callback;
		shp->s.arg = arg;
		if (callback) callback(SC_INIT, &shp->s.s, arena);
	}
	return shp;
}

S_HAND *s_create_hand(
	ARENA *arena, S_HAND *shp, S_OBJECT *obj, VECS pos,
	SHPCALL *callback, unsigned long arg
)
{
	if (arena) shp = arena_alloc(arena, sizeof(S_HAND));
	if (shp)
	{
		shape_init(&shp->s.s, ST_HAND);
		vecs_cpy(shp->pos, pos);
		shp->obj = obj;
		shp->s.callback = callback;
		shp->s.arg = arg;
		if (callback) callback(SC_INIT, &shp->s.s, arena);
	}
	return shp;
}

SHAPE *shape_link(SHAPE *parent, SHAPE *shape)
{
	if (shape)
	{
		SHAPE *child;
		shape->parent = parent;
		if (!(child = parent->child))
		{
			parent->child = shape;
			shape->prev = shape;
			shape->next = shape;
		}
		else
		{
			SHAPE *prev = child->prev;
			shape->prev = prev;
			shape->next = child;
			child->prev = shape;
			prev->next = shape;
		}
	}
	return shape;
}

SHAPE *shape_unlink(SHAPE *shape)
{
	SHAPE *parent = shape->parent;
	SHAPE **child = &parent->child;
	shape->prev->next = shape->next;
	shape->next->prev = shape->prev;
	if (*child == shape)
	{
		if (shape->next == shape)   *child = NULL;
		else                        *child = shape->next;
	}
	return parent;
}

SHAPE *shape_makefirst(SHAPE *shape)
{
	SHAPE *prev;
	SHAPE *parent = shape->parent;
	SHAPE **child = &parent->child;
	if (*child != shape)
	{
		if ((*child)->prev != shape)
		{
			shape->prev->next = shape->next;
			shape->next->prev = shape->prev;
			prev = (*child)->prev;
			shape->prev = prev;
			shape->next = *child;
			(*child)->prev = shape;
			prev->next = shape;
		}
		*child = shape;
	}
	return parent;
}

static void shape_notify(SHAPE *shape, int code)
{
	SHAPE **sptr;
	SHAPE *shp = shape;
	do
	{
		S_CALLBACK *cb = (S_CALLBACK *)shp;
		if (shp->type & SF_CALLBACK)
		{
			if (cb->callback) cb->callback(code, shp, NULL);
		}
		if (shp->child)
		{
			switch (shp->type)
			{
			case ST_LAYER:  sptr = (SHAPE **)&s_layer;  break;
			case ST_PERSP:  sptr = (SHAPE **)&s_persp;  break;
			case ST_CAMERA: sptr = (SHAPE **)&s_camera; break;
			case ST_OBJECT: sptr = (SHAPE **)&s_object; break;
			default:        sptr = NULL;                break;
			}
			if (sptr) *sptr = shp;
			shape_notify(shp->child, code);
			if (sptr) *sptr = NULL;
		}
	}
	while ((shp = shp->next) != shape);
}

void s_scene_notify(S_SCENE *shp, int code)
{
	if (shp->s.flag & SHP_ACTIVE)
	{
		s_scene = shp;
		if (shp->s.child) shape_notify(shp->s.child, code);
		s_scene = 0;
	}
}

void sobj_init(S_OBJECT *shp)
{
	s_create_object(NULL, shp, NULL, vecf_0, vecs_0, vecf_1);
	shape_link(&sobj_list, &shp->s);
	shp->s.flag &= ~SHP_ACTIVE;
}

void sobj_enter(S_OBJECT *shp, SHAPE *shape, VECF pos, VECS ang)
{
	vecf_set(shp->scale, 1, 1, 1);
	vecf_cpy(shp->pos, pos);
	vecs_cpy(shp->ang, ang);
	shp->shape = shape;
	shp->actor = NULL;
	shp->mf = NULL;
	shp->skel.anime = NULL;
	shp->s.flag |= SHP_ACTIVE;
	shp->s.flag &= ~SHP_OBJHIDE;
	shp->s.flag |= SHP_ANIME;
	shp->s.flag &= ~SHP_BILLBOARD;
}

void sobj_actor(S_OBJECT *shp, ACTOR *actor)
{
	vecf_set(shp->scale, 1, 1, 1);
	vecs_cpy(shp->ang, actor->ang);
	shp->pos[0] = actor->pos[0];
	shp->pos[1] = actor->pos[1];
	shp->pos[2] = actor->pos[2];
	shp->scene = actor->scene;
	shp->group = actor->group;
	shp->shape = actor->shape;
	shp->actor = actor;
	shp->mf = NULL;
	shp->skel.anime = NULL;
	shp->s.flag |= SHP_ACTIVE;
	shp->s.flag &= ~SHP_OBJHIDE;
	shp->s.flag |= SHP_ANIME;
	shp->s.flag &= ~SHP_BILLBOARD;
}

void sobj_set_anime(S_OBJECT *shp, ANIME **animep)
{
	ANIME **ap = segment_to_virtual(animep);
	ANIME *anime = segment_to_virtual(*ap);
	if (shp->skel.anime != anime)
	{
		shp->skel.anime = anime;
		shp->skel.frame =
			anime->start + ((anime->flag & ANIME_REVERSE) ? 1 : -1);
		shp->skel.vspeed = 0;
		shp->skel.waist = 0;
	}
}

void sobj_set_animev(S_OBJECT *shp, ANIME **animep, int speed)
{
	ANIME **ap = segment_to_virtual(animep);
	ANIME *anime = segment_to_virtual(*ap);
	if (shp->skel.anime != anime)
	{
		shp->skel.anime = anime;
		shp->skel.waist = 0;
		shp->skel.vframe =
			(anime->start << 16) +
			((anime->flag & ANIME_REVERSE) ? speed : -speed);
		shp->skel.frame = shp->skel.vframe >> 16;
	}
	shp->skel.vspeed = speed;
}

int anime_index(int frame, u16 **tbl)
{
	int index;
	if (frame < (*tbl)[0])  index = (*tbl)[1] + frame;
	else                    index = (*tbl)[1] + (*tbl)[0]-1;
	*tbl += 2;
	return index;
}

#ifdef sgi
#define GETFRAME()  (*(s16 *)&frame)
#define SETFRAME(x) (*(s16 *)&frame = (x))
#else
#define GETFRAME()  (frame >> 16)
#define SETFRAME(x) (frame = (frame & 0xFFFF) | (x) << 16)
#endif
int skel_step(SKELETON *skel, s32 *vframe)
{
	s32 frame;
	ANIME *anime = skel->anime;
	if (skel->stamp == draw_timer || (anime->flag & ANIME_NOSTEP))
	{
		if (vframe) *vframe = skel->vframe;
		return skel->frame;
	}
	if (anime->flag & ANIME_REVERSE)
	{
		if (skel->vspeed != 0)  frame = skel->vframe - skel->vspeed;
		else                    frame = (skel->frame-1) << 16;
		if (GETFRAME() < anime->loop)
		{
			if (anime->flag & ANIME_NOLOOP) SETFRAME(anime->loop);
			else                            SETFRAME(anime->frame-1);
		}
	}
	else
	{
		if (skel->vspeed != 0)  frame = skel->vframe + skel->vspeed;
		else                    frame = (skel->frame+1) << 16;
		if (GETFRAME() >= anime->frame)
		{
			if (anime->flag & ANIME_NOLOOP) SETFRAME(anime->frame-1);
			else                            SETFRAME(anime->loop);
		}
	}
	if (vframe) *vframe = frame;
	return GETFRAME();
}
#undef GETFRAME
#undef SETFRAME

UNUSED static
void sobj_get_animepos(S_OBJECT *shp, VECF pos)
{
	ANIME *anime = shp->skel.anime;
	if (anime)
	{
		u16 *tbl = segment_to_virtual(anime->tbl);
		short *val = segment_to_virtual(anime->val);
		SHORT frame = shp->skel.frame;
		if (frame < 0) frame = 0;
		pos[0] = val[anime_index(frame, &tbl)];
		pos[1] = val[anime_index(frame, &tbl)];
		pos[2] = val[anime_index(frame, &tbl)];
	}
	else
	{
		vecf_set(pos, 0, 0, 0);
	}
}

UNUSED static
S_SCENE *shape_get_scene(SHAPE *shape)
{
	S_SCENE *shp = NULL;
	while (shape->parent) shape = shape->parent;
	if (shape->type == ST_SCENE) shp = (S_SCENE *)shape;
	return shp;
}
