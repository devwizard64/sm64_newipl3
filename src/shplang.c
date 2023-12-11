#include <sm64.h>

#define S_UCHAR         ((unsigned char *)s_pc)
#define S_SHORT         ((short *)s_pc)
#define S_USHORT        ((unsigned short *)s_pc)
#define S_INT           ((int *)s_pc)
#define S_UINT          ((unsigned int *)s_pc)
#define S_PTR           ((void **)s_pc)
#define S_CALL          ((SHPCALL **)s_pc)

#define S_CMD           S_UCHAR[0]

static ARENA *s_arena;
static SHAPE *shp_root;
UNUSED static SHAPE *shp_8038BCA8;
static SHAPE **shp_table;
static u16 shp_count;
static unsigned long s_stack[16];
static SHAPE *shp_stack[32];
static s16 shp_sp;
static s16 s_sp;
UNUSED static s16 shp_fp;
static s16 s_fp;
static S_SCRIPT *s_pc;

SHAPE sobj_list;

static short *s_read_vecf(VECF dst, short *src)
{
	dst[0] = *src++;
	dst[1] = *src++;
	dst[2] = *src++;
	return src;
}

static short *s_read_vecs(VECS dst, short *src)
{
	dst[0] = *src++;
	dst[1] = *src++;
	dst[2] = *src++;
	return src;
}

static short *s_read_ang(VECS dst, short *src)
{
	dst[0] = *src++ * 0x8000/180;
	dst[1] = *src++ * 0x8000/180;
	dst[2] = *src++ * 0x8000/180;
	return src;
}

static void s_link(SHAPE *shape)
{
	if (shape)
	{
		shp_stack[shp_sp] = shape;
		if (shp_sp == 0)
		{
			if (!shp_root) shp_root = shape;
		}
		else if (shp_stack[shp_sp-1]->type == ST_LIST)
		{
			((S_LIST *)shp_stack[shp_sp-1])->shape = shape;
		}
		else
		{
			shape_link(shp_stack[shp_sp-1], shape);
		}
	}
}

static void s_cmd_execute(void)
{
	s_stack[s_sp++] = (unsigned long)(s_pc+2);
	s_stack[s_sp++] = (shp_sp << 16) + s_fp;
	s_fp = s_sp;
	s_pc = segment_to_virtual(S_PTR[1]);
}

static void s_cmd_exit(void)
{
	s_sp = s_fp;
	s_fp = s_stack[--s_sp] & 0xFFFF;
	shp_sp = s_stack[s_sp] >> 16;
	s_pc = (void *)s_stack[--s_sp];
}

static void s_cmd_jump(void)
{
	if (S_UCHAR[1] == 1) s_stack[s_sp++] = (unsigned long)(s_pc+2);
	s_pc = segment_to_virtual(S_PTR[1]);
}

static void s_cmd_return(void)
{
	s_pc = (void *)s_stack[--s_sp];
}

static void s_cmd_start(void)
{
	shp_stack[shp_sp+1] = shp_stack[shp_sp];
	shp_sp++;
	s_pc += 1;
}

static void s_cmd_end(void)
{
	shp_sp--;
	s_pc += 1;
}

static void s_cmd_store(void)
{
	USHORT index = S_SHORT[1];
	if (index < shp_count) shp_table[index] = shp_stack[shp_sp];
	s_pc += 1;
}

static void s_cmd_flag(void)
{
	USHORT mode = S_UCHAR[1];
	u16 flag = S_SHORT[1];
	switch (mode)
	{
	case 0: shp_stack[shp_sp]->flag = flag; break;
	case 1: shp_stack[shp_sp]->flag |= flag; break;
	case 2: shp_stack[shp_sp]->flag &= ~flag; break;
	}
	s_pc += 1;
}

static void s_cmd_scene(void)
{
	int i;
	S_SCENE *shp;
	SHORT x = S_SHORT[2];
	SHORT y = S_SHORT[3];
	SHORT w = S_SHORT[4];
	SHORT h = S_SHORT[5];
	shp_count = S_SHORT[1] + 2;
	shp = s_create_scene(s_arena, NULL, 0, x, y, w, h);
	shp_table = arena_alloc(s_arena, sizeof(SHAPE *)*shp_count);
	shp->table = shp_table;
	shp->count = shp_count;
	for (i = 0; i < shp_count; i++) shp_table[i] = NULL;;
	s_link(&shp->s);
	s_pc += 3;
}

static void s_cmd_ortho(void)
{
	S_ORTHO *shp;
	float scale = (float)S_SHORT[1] / 100;
	shp = s_create_ortho(s_arena, NULL, scale);
	s_link(&shp->s);
	s_pc += 1;
}

static void s_cmd_persp(void)
{
	S_PERSP *shp;
	SHPCALL *callback = NULL;
	SHORT fovy = S_SHORT[1];
	SHORT near = S_SHORT[2];
	SHORT far = S_SHORT[3];
	if (S_UCHAR[1])
	{
		callback = S_CALL[2];
		s_pc += 1;
	}
	shp = s_create_persp(s_arena, NULL, fovy, near, far, callback, 0);
	s_link(&shp->s.s);
	s_pc += 2;
}

static void s_cmd_empty(void)
{
	SHAPE *shape;
	shape = s_create_empty(s_arena, NULL);
	s_link(shape);
	s_pc += 1;
}

static void s_cmd_31(void)
{
	s_pc += 4;
}

static void s_cmd_layer(void)
{
	S_LAYER *shp;
	shp = s_create_layer(s_arena, NULL, S_UCHAR[1]);
	s_link(&shp->s);
	s_pc += 1;
}

static void s_cmd_lod(void)
{
	S_LOD *shp;
	SHORT min = S_SHORT[2];
	SHORT max = S_SHORT[3];
	shp = s_create_lod(s_arena, NULL, min, max);
	s_link(&shp->s);
	s_pc += 2;
}

static void s_cmd_select(void)
{
	S_SELECT *shp;
	shp = s_create_select(s_arena, NULL, S_SHORT[1], 0, S_CALL[1], 0);
	s_link(&shp->s.s);
	s_pc += 2;
}

static void s_cmd_camera(void)
{
	S_CAMERA *shp;
	void *pc = S_SHORT+2;
	VECF eye;
	VECF look;
	pc = s_read_vecf(eye, pc);
	pc = s_read_vecf(look, pc);
	shp = s_create_camera(s_arena, NULL, eye, look, S_CALL[4], S_SHORT[1]);
	s_link(&shp->s.s);
	shp_table[0] = &shp->s.s;
	s_pc += 5;
}

static void s_cmd_coord(void)
{
	S_COORD *shp;
	VECS pos;
	VECS ang;
	Gfx *gfx = NULL;
	SHORT layer = 0;
	SHORT flag = S_UCHAR[1];
	void *pc = s_pc;
	switch ((flag & 0x70) >> 4)
	{
	case 0:
		pc = s_read_vecs(pos, (short *)pc+2);
		pc = s_read_ang(ang, pc);
		break;
	case 1:
		pc = s_read_vecs(pos, (short *)pc+1);
		vecs_cpy(ang, vecs_0);
		break;
	case 2:
		pc = s_read_ang(ang, (short *)pc+1);
		vecs_cpy(pos, vecs_0);
		break;
	case 3:
		vecs_cpy(pos, vecs_0);
		vecs_set(ang, 0, ((short *)pc)[1] * 0x8000/180, 0);
		pc = (S_SCRIPT *)pc + 1;
		break;
	}
	if (flag & 0x80)
	{
		gfx = *(void **)pc;
		layer = flag & 15;
		pc = (S_SCRIPT *)pc + 1;
	}
	shp = s_create_coord(s_arena, NULL, layer, gfx, pos, ang);
	s_link(&shp->s.s);
	s_pc = pc;
}

static void s_cmd_pos(void)
{
	S_POS *shp;
	VECS pos;
	SHORT layer = 0;
	SHORT flag = S_UCHAR[1];
	void *pc = s_pc;
	Gfx *gfx = NULL;
	pc = s_read_vecs(pos, (short *)pc+1);
	if (flag & 0x80)
	{
		gfx = *(void **)pc;
		layer = flag & 15;
		pc = (S_SCRIPT *)pc + 1;
	}
	shp = s_create_pos(s_arena, NULL, layer, gfx, pos);
	s_link(&shp->s.s);
	s_pc = pc;
}

static void s_cmd_ang(void)
{
	S_ANG *shp;
	VECS ang;
	SHORT layer = 0;
	SHORT flag = S_UCHAR[1];
	void *pc = s_pc;
	Gfx *gfx = NULL;
	pc = s_read_ang(ang, (short *)pc+1);
	if (flag & 0x80)
	{
		gfx = *(void **)pc;
		layer = flag & 15;
		pc = (S_SCRIPT *)pc + 1;
	}
	shp = s_create_ang(s_arena, NULL, layer, gfx, ang);
	s_link(&shp->s.s);
	s_pc = pc;
}

static void s_cmd_scale(void)
{
	S_SCALE *shp;
	SHORT layer = 0;
	SHORT flag = S_UCHAR[1];
	float scale = (float)S_UINT[1] / 0x10000;
	Gfx *gfx = NULL;
	if (flag & 0x80)
	{
		gfx = S_PTR[2];
		layer = flag & 15;
		s_pc += 1;
	}
	shp = s_create_scale(s_arena, NULL, layer, gfx, scale);
	s_link(&shp->s.s);
	s_pc += 2;
}

static void s_cmd_30(void)
{
	s_pc += 2;
}

static void s_cmd_joint(void)
{
	S_JOINT *shp;
	VECS pos;
	int layer = S_UCHAR[1];
	Gfx *gfx = S_PTR[2];
	void *pc = s_pc;
	s_read_vecs(pos, (short *)pc+1);
	shp = s_create_joint(s_arena, NULL, layer, gfx, pos);
	s_link(&shp->s.s);
	s_pc += 3;
}

static void s_cmd_billboard(void)
{
	S_BILLBOARD *shp;
	VECS pos;
	SHORT layer = 0;
	SHORT flag = S_UCHAR[1];
	void *pc = s_pc;
	Gfx *gfx = NULL;
	pc = s_read_vecs(pos, (short *)pc+1);
	if (flag & 0x80)
	{
		gfx = *(void **)pc;
		layer = flag & 15;
		pc = (S_SCRIPT *)pc + 1;
	}
	shp = s_create_billboard(s_arena, NULL, layer, gfx, pos);
	s_link(&shp->s.s);
	s_pc = pc;
}

static void s_cmd_gfx(void)
{
	S_GFX *shp;
	int layer = S_UCHAR[1];
	Gfx *gfx = S_PTR[1];
	shp = s_create_gfx(s_arena, NULL, layer, gfx);
	s_link(&shp->s);
	s_pc += 2;
}

static void s_cmd_shadow(void)
{
	S_SHADOW *shp;
	UCHAR type = S_SHORT[1];
	UCHAR alpha = S_SHORT[2];
	SHORT size = S_SHORT[3];
	shp = s_create_shadow(s_arena, NULL, size, alpha, type);
	s_link(&shp->s);
	s_pc += 2;
}

static void s_cmd_object(void)
{
	S_LIST *shp;
	shp = s_create_list(s_arena, NULL, &sobj_list);
	s_link(&shp->s);
	s_pc += 1;
}

static void s_cmd_callback(void)
{
	S_CALLBACK *shp;
	shp = s_create_callback(s_arena, NULL, S_CALL[1], S_SHORT[1]);
	s_link(&shp->s);
	s_pc += 2;
}

static void s_cmd_back(void)
{
	S_BACK *shp;
	shp = s_create_back(s_arena, NULL, S_SHORT[1], S_CALL[1], 0);
	s_link(&shp->s.s);
	s_pc += 2;
}

static void s_cmd_26(void)
{
	s_pc += 2;
}

static void s_cmd_load(void)
{
	S_LIST *shp;
	SHAPE *shape = NULL;
	SHORT index = S_SHORT[1];
	if (index >= 0)
	{
		shape = shp_table[index];
		if (shape->type == ST_LIST) shape = ((S_LIST *)shape)->shape;
		else                            shape = NULL;
	}
	shp = s_create_list(s_arena, NULL, shape);
	s_link(&shp->s);
	s_pc += 1;
}

static void s_cmd_hand(void)
{
	S_HAND *shp;
	VECS pos;
	s_read_vecs(pos, S_SHORT+1);
	shp = s_create_hand(s_arena, NULL, NULL, pos, S_CALL[2], S_UCHAR[1]);
	s_link(&shp->s.s);
	s_pc += 3;
}

static void s_cmd_cull(void)
{
	S_CULL *shp;
	shp = s_create_cull(s_arena, NULL, S_SHORT[1]);
	s_link(&shp->s);
	s_pc += 1;
}

static void (*s_cmd_table[])(void) =
{
	s_cmd_execute,
	s_cmd_exit,
	s_cmd_jump,
	s_cmd_return,
	s_cmd_start,
	s_cmd_end,
	s_cmd_store,
	s_cmd_flag,
	s_cmd_scene,
	s_cmd_ortho,
	s_cmd_persp,
	s_cmd_empty,
	s_cmd_layer,
	s_cmd_lod,
	s_cmd_select,
	s_cmd_camera,
	s_cmd_coord,
	s_cmd_pos,
	s_cmd_ang,
	s_cmd_joint,
	s_cmd_billboard,
	s_cmd_gfx,
	s_cmd_shadow,
	s_cmd_object,
	s_cmd_callback,
	s_cmd_back,
	s_cmd_26,
	s_cmd_load,
	s_cmd_hand,
	s_cmd_scale,
	s_cmd_30,
	s_cmd_31,
	s_cmd_cull,
};

SHAPE *s_process(ARENA *arena, S_SCRIPT *script)
{
	shp_root = NULL;
	shp_count = 0;
	shp_stack[0] = NULL;
	shp_sp = 0;
	s_sp = 2;
	s_fp = 2;
	s_pc = segment_to_virtual(script);
	s_arena = arena;
	s_stack[0] = 0;
	s_stack[1] = 0;
	while (s_pc) s_cmd_table[S_CMD]();
	return shp_root;
}
