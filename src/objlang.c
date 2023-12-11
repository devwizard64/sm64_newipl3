#include <sm64.h>

#define O_UCHARA(i)     (object_pc[i] >> 24)
#define O_UCHARB(i)     ((u8)(object_pc[i] >> 16 & 0xFF))
#define O_UCHARC(i)     ((u8)(object_pc[i] >>  8 & 0xFF))
#define O_UCHARD(i)     ((u8)(object_pc[i] >>  0 & 0xFF))
#define O_SHORTH(i)     ((short)(object_pc[i] >> 16))
#define O_SHORTL(i)     ((short)(object_pc[i] & 0xFFFF))
#define O_INT(i)        ((int)object_pc[i])
#define O_PTR(i)        ((void *)object_pc[i])
#define O_CALL(i)       ((OBJCALL *)object_pc[i])

#define O_CMD           O_UCHARA(0)

UNUSED
static void o_jump(O_SCRIPT *script)
{
	object_pc = segment_to_virtual(script);
	object->sp = 0;
}

u16 rand(void)
{
	static u16 seed;
	USHORT a, b;
	if (seed == 0x560A) seed = 0;
	a = (seed & 0xFF) << 8;
	a ^= seed;
	seed = ((a & 0x00FF) << 8) + ((a & 0xFF00) >> 8);
	a = ((a & 0xFF) << 1) ^ seed;
	b = (a >> 1) ^ 0xFF80;
	if ((a & 1) == 0)
	{
		if (b == 0xAA55)    seed = 0;
		else                seed = b ^ 0x1FF4;
	}
	else
	{
		seed = b ^ 0x8180;
	}
	return seed;
}

float randf(void)
{
	float x = rand();
	return x / 65536.0;
}

int randsign(void)
{
	if (rand() >= 0x7FFF)   return 1;
	else                    return -1;
}

static void obj_set_shapecoord(OBJECT *obj)
{
	obj->s.pos[0] = obj->o_pos_x;
	obj->s.pos[1] = obj->o_pos_y + obj->o_shape_offset;
	obj->s.pos[2] = obj->o_pos_z;
	obj->s.ang[0] = obj->o_shape_ang_x & 0xFFFF;
	obj->s.ang[1] = obj->o_shape_ang_y & 0xFFFF;
	obj->s.ang[2] = obj->o_shape_ang_z & 0xFFFF;
}

static void o_push(unsigned long x)
{
	object->stack[object->sp] = x;
	object->sp++;
}

static unsigned long o_pull(void)
{
	unsigned long x;
	object->sp--;
	x = object->stack[object->sp];
	return x;
}

UNUSED
static void o_error(void)
{
	for (;;);
}

static int o_cmd_shapehide(void)
{
	objlib_8029F6BC();
	object_pc += 1;
	return 0;
}

static int o_cmd_shapedisable(void)
{
	object->s.s.flag &= ~SHP_ACTIVE;
	object_pc += 1;
	return 0;
}

static int o_cmd_billboard(void)
{
	object->s.s.flag |= SHP_BILLBOARD;
	object_pc += 1;
	return 0;
}

static int o_cmd_shape(void)
{
	int index = O_SHORTL(0);
	object->s.shape = shape_table[index];
	object_pc += 1;
	return 0;
}

static int o_cmd_makeobj(void)
{
	int shape = O_INT(1);
	O_SCRIPT *script = O_PTR(2);
	OBJECT *obj = obj_make(object, 0, shape, script);
	objlib_8029F0E0(obj, object);
	object_pc += 3;
	return 0;
}

static int o_cmd_makechild(void)
{
	int shape = O_INT(1);
	O_SCRIPT *script = O_PTR(2);
	OBJECT *obj = obj_make(object, 0, shape, script);
	objlib_8029F0E0(obj, object);
	object->child = obj;
	object_pc += 3;
	return 0;
}

static int o_cmd_makeobjcode(void)
{
	int code = O_SHORTL(0);
	int shape = O_INT(1);
	O_SCRIPT *script = O_PTR(2);
	OBJECT *obj = obj_make(object, 0, shape, script);
	objlib_8029F0E0(obj, object);
	obj->o_code = code;
	object_pc += 3;
	return 0;
}

static int o_cmd_destroy(void)
{
	object->flag = 0;
	return 1;
}

static int o_cmd_exit(void)
{
	return 1;
}

static int o_cmd_end(void)
{
	return 1;
}

static int o_cmd_call(void)
{
	O_SCRIPT *pc;
	object_pc += 1;
	o_push((unsigned long)(object_pc+1));
	pc = segment_to_virtual(O_PTR(0));
	object_pc = pc;
	return 0;
}

static int o_cmd_return(void)
{
	object_pc = (void *)o_pull();
	return 0;
}

static int o_cmd_sleep(void)
{
	SHORT time = O_SHORTL(0);
	if (object->sleep < time-1)
	{
		object->sleep++;
	}
	else
	{
		object->sleep = 0;
		object_pc += 1;
	}
	return 1;
}

static int o_cmd_memsleep(void)
{
	UCHAR mem = O_UCHARB(0);
	int time = object->mem[mem].i;
	if (object->sleep < time-1)
	{
		object->sleep++;
	}
	else
	{
		object->sleep = 0;
		object_pc += 1;
	}
	return 1;
}

static int o_cmd_jump(void)
{
	object_pc += 1;
	object_pc = segment_to_virtual(O_PTR(0));
	return 0;
}

static int o_cmd_for2(void)
{
	unsigned long count = O_UCHARB(0);
	o_push((unsigned long)(object_pc+1));
	o_push(count);
	object_pc += 1;
	return 0;
}

static int o_cmd_for(void)
{
	unsigned long count = O_SHORTL(0);
	o_push((unsigned long)(object_pc+1));
	o_push(count);
	object_pc += 1;
	return 0;
}

static int o_cmd_fend(void)
{
	unsigned long count = o_pull();
	count--;
	if (count > 0)
	{
		object_pc = (void *)o_pull();
		o_push((unsigned long)object_pc);
		o_push(count);
	}
	else
	{
		o_pull();
		object_pc += 1;
	}
	return 1;
}

static int o_cmd_fcontinue(void)
{
	unsigned long count = o_pull();
	count--;
	if (count > 0)
	{
		object_pc = (void *)o_pull();
		o_push((unsigned long)object_pc);
		o_push(count);
	}
	else
	{
		o_pull();
		object_pc += 1;
	}
	return 0;
}

static int o_cmd_while(void)
{
	o_push((unsigned long)(object_pc+1));
	object_pc += 1;
	return 0;
}

static int o_cmd_wend(void)
{
	object_pc = (void *)o_pull();
	o_push((unsigned long)object_pc);
	return 1;
}

static int o_cmd_callback(void)
{
	OBJCALL *callback = O_CALL(1);
	callback();
	object_pc += 2;
	return 0;
}

static int o_cmd_setf(void)
{
	UCHAR mem = O_UCHARB(0);
	float x = O_SHORTL(0);
	object->mem[mem].f = x;
	object_pc += 1;
	return 0;
}

static int o_cmd_seti(void)
{
	UCHAR mem = O_UCHARB(0);
	SHORT x = O_SHORTL(0);
	object->mem[mem].i = x;
	object_pc += 1;
	return 0;
}

static int o_cmd_sets(void)
{
	UCHAR mem = O_UCHARB(0);
	int x = O_SHORTL(1);
	object->mem[mem].i = x;
	object_pc += 2;
	return 0;
}

static int o_cmd_setrandf(void)
{
	UCHAR mem = O_UCHARB(0);
	float add = O_SHORTL(0);
	float mul = O_SHORTH(1);
	object->mem[mem].f = add + mul*randf();
	object_pc += 2;
	return 0;
}

static int o_cmd_setrandi(void)
{
	UCHAR mem = O_UCHARB(0);
	int add = O_SHORTL(0);
	int mul = O_SHORTH(1);
	object->mem[mem].i = add + (int)(mul*randf());
	object_pc += 2;
	return 0;
}

static int o_cmd_setranda(void)
{
	UCHAR mem = O_UCHARB(0);
	int add = O_SHORTL(0);
	int shift = O_SHORTH(1);
	object->mem[mem].i = add + (rand() >> shift);
	object_pc += 2;
	return 0;
}

static int o_cmd_addrandf(void)
{
	UCHAR mem = O_UCHARB(0);
	float add = O_SHORTL(0);
	float mul = O_SHORTH(1);
	object->mem[mem].f = object->mem[mem].f + add + mul*randf();
	object_pc += 2;
	return 0;
}

static int o_cmd_addranda(void)
{
	UCHAR mem = O_UCHARB(0);
	int add = O_SHORTL(0);
	int shift = O_SHORTH(1);
	int x = rand();
	object->mem[mem].i = object->mem[mem].i + add + (x >> shift);
	object_pc += 2;
	return 0;
}

static int o_cmd_addf(void)
{
	UCHAR mem = O_UCHARB(0);
	float val = O_SHORTL(0);
	object->mem[mem].f += val;
	object_pc += 1;
	return 0;
}

static int o_cmd_addi(void)
{
	UCHAR mem = O_UCHARB(0);
	SHORT val = O_SHORTL(0);
	object->mem[mem].i += val;
	object_pc += 1;
	return 0;
}

static int o_cmd_setflag(void)
{
	UCHAR mem = O_UCHARB(0);
	int flag = O_SHORTL(0);
	flag &= 0xFFFF;
	object->mem[mem].i |= flag;
	object_pc += 1;
	return 0;
}

static int o_cmd_clrflag(void)
{
	UCHAR mem = O_UCHARB(0);
	int flag = O_SHORTL(0);
	flag = (flag & 0xFFFF) ^ 0xFFFF;
	object->mem[mem].i &= flag;
	object_pc += 1;
	return 0;
}

static int o_cmd_ptr(void)
{
	UCHAR mem = O_UCHARB(0);
	object->mem[mem].p = O_PTR(1);
	object_pc += 2;
	return 0;
}

static int o_cmd_anime(void)
{
	int index = O_UCHARB(0);
	ANIME **anime = object->o_anime;
	sobj_set_anime(&object->s, &anime[index]);
	object_pc += 1;
	return 0;
}

static int o_cmd_ground(void)
{
	float x = object->o_pos_x;
	float y = object->o_pos_y;
	float z = object->o_pos_z;
	float ground_y = bg_check_ground_y(x, y+200, z);
	object->o_pos_y = ground_y;
	object->o_move_status |= OM_TOUCH;
	object_pc += 1;
	return 0;
}

static int o_cmd_24(void)
{
	UNUSED UCHAR mem = O_UCHARB(0);
	object_pc += 1;
	return 0;
}

static int o_cmd_26(void)
{
	UNUSED UCHAR mem = O_UCHARB(0);
	object_pc += 1;
	return 0;
}

static int o_cmd_25(void)
{
	UNUSED UCHAR mem = O_UCHARB(0);
	object_pc += 1;
	return 0;
}

static int o_cmd_memaddf(void)
{
	int mem = O_UCHARB(0);
	int a = O_UCHARC(0);
	int b = O_UCHARD(0);
	object->mem[mem].f = object->mem[a].f + object->mem[b].f;
	object_pc += 1;
	return 0;
}

static int o_cmd_memaddi(void)
{
	int mem = O_UCHARB(0);
	int a = O_UCHARC(0);
	int b = O_UCHARD(0);
	object->mem[mem].i = object->mem[a].i + object->mem[b].i;
	object_pc += 1;
	return 0;
}

static int o_cmd_hit(void)
{
	SHORT radius = O_SHORTH(1);
	SHORT height = O_SHORTL(1);
	object->hit_r = radius;
	object->hit_h = height;
	object_pc += 2;
	return 0;
}

static int o_cmd_dmg(void)
{
	SHORT radius = O_SHORTH(1);
	SHORT height = O_SHORTL(1);
	object->dmg_r = radius;
	object->dmg_h = height;
	object_pc += 2;
	return 0;
}

static int o_cmd_hitoff(void)
{
	SHORT radius = O_SHORTH(1);
	SHORT height = O_SHORTL(1);
	SHORT offset = O_SHORTH(2);
	object->hit_r = radius;
	object->hit_h = height;
	object->hit_offset = offset;
	object_pc += 3;
	return 0;
}

static int o_cmd_36(void)
{
	UNUSED SHORT mem = O_UCHARB(0);
	UNUSED SHORT x = O_SHORTL(0);
	object_pc += 1;
	return 0;
}

extern O_SCRIPT o_signpost[];
extern O_SCRIPT o_13004FD4[];
extern O_SCRIPT o_13005024[];

static int o_cmd_init(void)
{
	if (objlib_802A14FC(o_13004FD4)) objlib_802A4120();
	if (objlib_802A14FC(o_13005024)) objlib_802A4120();
	if (objlib_802A14FC(o_signpost)) object->o_check_dist = 150;
	object_pc += 1;
	return 0;
}

UNUSED
static void o_setrandtbl(int len)
{
	UCHAR mem = O_UCHARB(0);
	int table[16];
	int i;
	for (i = 0; i <= len/2; i += 2)
	{
		table[i+0] = O_SHORTH(1+i);
		table[i+1] = O_SHORTL(1+i);
	}
	object->mem[mem].i = table[(int)(randf() * len)];
}

static int o_cmd_map(void)
{
	MAP *map = segment_to_virtual(O_PTR(1));
	object->map = map;
	object_pc += 2;
	return 0;
}

static int o_cmd_savepos(void)
{
	object->o_save_x = object->o_pos_x;
	object->o_save_y = object->o_pos_y;
	object->o_save_z = object->o_pos_z;
	object_pc += 1;
	return 0;
}

static int o_cmd_hitcode(void)
{
	object->o_hit_code = O_INT(1);
	object_pc += 2;
	return 0;
}

static int o_cmd_hitflag(void)
{
	object->o_hit_flag = O_INT(1);
	object_pc += 2;
	return 0;
}

static int o_cmd_scale(void)
{
	UNUSED UCHAR mem = O_UCHARB(0);
	SHORT scale = O_SHORTL(0);
	object_set_scale((float)scale / 100);
	object_pc += 1;
	return 0;
}

static int o_cmd_physics(void)
{
	UNUSED float g, h;
	object->o_wall_r    = O_SHORTH(1);
	object->o_gravity   = O_SHORTL(1) / (float)100;
	object->o_bounce    = O_SHORTH(2) / (float)100;
	object->o_drag      = O_SHORTL(2) / (float)100;
	object->o_friction  = O_SHORTH(3) / (float)100;
	object->o_density   = O_SHORTL(3) / (float)100;
	g                   = O_SHORTH(4) / (float)100;
	h                   = O_SHORTL(4) / (float)100;
	object_pc += 5;
	return 0;
}

static int o_cmd_memclrparentflag(void)
{
	UCHAR mem = O_UCHARB(0);
	int flag = O_INT(1);
	flag ^= 0xFFFFFFFF;
	object->parent->mem[mem].i &= flag;
	object_pc += 2;
	return 0;
}

static int o_cmd_splash(void)
{
	OBJ_SPLASH *splash = O_PTR(1);
	objlib_8029EB04(object, splash);
	object_pc += 2;
	return 0;
}

static int o_cmd_inc(void)
{
	UCHAR mem = O_UCHARB(0);
	SHORT period = O_SHORTL(0);
	if (gfx_frame % period == 0) object->mem[mem].i++;
	object_pc += 1;
	return 0;
}

static int (*o_cmd_table[])(void) =
{
	o_cmd_init,
	o_cmd_sleep,
	o_cmd_call,
	o_cmd_return,
	o_cmd_jump,
	o_cmd_for,
	o_cmd_fend,
	o_cmd_fcontinue,
	o_cmd_while,
	o_cmd_wend,
	o_cmd_exit,
	o_cmd_end,
	o_cmd_callback,
	o_cmd_addf,
	o_cmd_setf,
	o_cmd_addi,
	o_cmd_seti,
	o_cmd_setflag,
	o_cmd_clrflag,
	o_cmd_setranda,
	o_cmd_setrandf,
	o_cmd_setrandi,
	o_cmd_addrandf,
	o_cmd_addranda,
	o_cmd_24,
	o_cmd_25,
	o_cmd_26,
	o_cmd_shape,
	o_cmd_makeobj,
	o_cmd_destroy,
	o_cmd_ground,
	o_cmd_memaddf,
	o_cmd_memaddi,
	o_cmd_billboard,
	o_cmd_shapehide,
	o_cmd_hit,
	o_cmd_36,
	o_cmd_memsleep,
	o_cmd_for2,
	o_cmd_ptr,
	o_cmd_anime,
	o_cmd_makeobjcode,
	o_cmd_map,
	o_cmd_hitoff,
	o_cmd_makechild,
	o_cmd_savepos,
	o_cmd_dmg,
	o_cmd_hitcode,
	o_cmd_physics,
	o_cmd_hitflag,
	o_cmd_scale,
	o_cmd_memclrparentflag,
	o_cmd_inc,
	o_cmd_shapedisable,
	o_cmd_sets,
	o_cmd_splash,
};

void o_init(void)
{
}

void o_execute(void)
{
	UNUSED int i;
	SHORT flag = object->o_flag;
	float dist;
	int (*cmd)(void);
	int result;
	if (flag & OF_0040)
	{
		object->o_pl_dist = objlib_8029E2F8(object, mario_obj);
		dist = object->o_pl_dist;
	}
	else
	{
		dist = 0;
	}
	if (flag & OF_2000)
	{
		object->o_pl_ang = objlib_8029E694(object, mario_obj);
	}
	if (object->o_state != object->o_prevstate)
	{
		object->o_timer = 0, object->o_mode = 0,
		object->o_prevstate = object->o_state;
	}
	object_pc = object->pc;
	do
	{
		cmd = o_cmd_table[O_CMD];
		result = cmd();
	}
	while (result == 0);
	object->pc = object_pc;
	if (object->o_timer < 0x3FFFFFFF) object->o_timer++;
	if (object->o_state != object->o_prevstate)
	{
		object->o_timer = 0, object->o_mode = 0,
		object->o_prevstate = object->o_state;
	}
	flag = object->o_flag;
	if (flag & OF_0010) objlib_8029F8EC(object);
	if (flag & OF_0008) object->o_shape_ang_y = object->o_ang_y;
	if (flag & OF_0002) objlib_802A120C();
	if (flag & OF_0004) objlib_802A12A4();
	if (flag & OF_0200) objlib_802A2A84(object);
	if (flag & OF_0800) objlib_802A2A18(object);
	if (flag & OF_0001) obj_set_shapecoord(object);
	if (object->o_area != -1)
	{
		objlib_802A4210();
	}
	else if (flag & OF_0040)
	{
		if (!(object->map || (flag & OF_0080)))
		{
			if (dist > object->o_shape_dist)
			{
				object->s.s.flag &= ~SHP_ACTIVE;
				object->flag |= OBJ_0002;
			}
			else if (object->o_hold == 0)
			{
				object->s.s.flag |= SHP_ACTIVE;
				object->flag &= ~OBJ_0002;
			}
		}
	}
}
