#include <sm64.h>

#define P_UCHAR         ((unsigned char *)p_pc)
#define P_SHORT         ((short *)p_pc)
#define P_USHORT        ((unsigned short *)p_pc)
#define P_INT           ((int *)p_pc)
#define P_LONG          ((long *)p_pc)
#define P_PTR           ((void **)p_pc)
#define P_CALL          ((PRGCALL **)p_pc)

#define P_CMD           P_UCHAR[0]
#define P_SIZE          P_UCHAR[1]

#define p_step()        (p_pc += P_SIZE)
#define p_push(x)       (*p_sp++ = (unsigned long)(x))
#define p_pull()        ((void *)*--p_sp)

static unsigned long p_stack[32];
static s16 p_state;
static long p_status;
static P_SCRIPT *p_pc;

static ARENA *p_arena = NULL;
static u16 p_sleep = 0;
static u16 p_freeze = 0;
static s16 p_scene = -1;
static unsigned long *p_sp = p_stack;
static unsigned long *p_fp = NULL;

static int p_cmp(CHAR cmp, long x)
{
	int result = 0;
	switch (cmp)
	{
	case P_CMP_AND:     result =  (p_status & x);   break;
	case P_CMP_NAND:    result = !(p_status & x);   break;
	case P_CMP_EQ:      result = p_status == x;     break;
	case P_CMP_NE:      result = p_status != x;     break;
	case P_CMP_LT:      result = p_status <  x;     break;
	case P_CMP_LE:      result = p_status <= x;     break;
	case P_CMP_GT:      result = p_status >  x;     break;
	case P_CMP_GE:      result = p_status >= x;     break;
	}
	return result;
}

static void p_cmd_execute(void)
{
	mem_push();
	mem_load_data(P_SHORT[1], P_PTR[1], P_PTR[2], MEM_ALLOC_L);
	p_push(p_pc + P_SIZE);
	p_push(p_fp);
	p_fp = p_sp;
	p_pc = segment_to_virtual(P_PTR[3]);
}

static void p_cmd_chain(void)
{
	void *pc = P_PTR[3];
	mem_pull();
	mem_push();
	mem_load_data(P_SHORT[1], P_PTR[1], P_PTR[2], MEM_ALLOC_L);
	p_sp = p_fp;
	p_pc = segment_to_virtual(pc);
}

static void p_cmd_exit(void)
{
	mem_pull();
	p_sp = p_fp;
	p_fp = p_pull();
	p_pc = p_pull();
}

static void p_cmd_sleep(void)
{
	p_state = 0;
	if (p_sleep == 0)
	{
		p_sleep = P_SHORT[1];
	}
	else if (--p_sleep == 0)
	{
		p_step();
		p_state = 1;
	}
}

static void p_cmd_freeze(void)
{
	p_state = -1;
	if (p_freeze == 0)
	{
		p_freeze = P_SHORT[1];
	}
	else if (--p_freeze == 0)
	{
		p_step();
		p_state = 1;
	}
}

static void p_cmd_jump(void)
{
	p_pc = segment_to_virtual(P_PTR[1]);
}

static void p_cmd_call(void)
{
	p_push(p_pc + P_SIZE);
	p_pc = segment_to_virtual(P_PTR[1]);
}

static void p_cmd_return(void)
{
	p_pc = p_pull();
}

static void p_cmd_for(void)
{
	p_push(p_pc + P_SIZE);
	p_push(P_SHORT[1]);
	p_step();
}

static void p_cmd_done(void)
{
	unsigned long count = p_sp[-1];
	if (count == 0)
	{
		p_pc = (void *)p_sp[-2];
	}
	else if (--count > 0)
	{
		p_sp[-1] = count;
		p_pc = (void *)p_sp[-2];
	}
	else
	{
		p_step();
		p_sp -= 2;
	}
}

static void p_cmd_repeat(void)
{
	p_push(p_pc + P_SIZE);
	p_push(0);
	p_step();
}

static void p_cmd_until(void)
{
	if (p_cmp(P_UCHAR[2], P_LONG[1]))
	{
		p_step();
		p_sp -= 2;
	}
	else
	{
		p_pc = (void *)p_sp[-2];
	}
}

static void p_cmd_jump_if(void)
{
	if (p_cmp(P_UCHAR[2], P_LONG[1]))
	{
		p_pc = segment_to_virtual(P_PTR[2]);
	}
	else
	{
		p_step();
	}
}

static void p_cmd_call_if(void)
{
	if (p_cmp(P_UCHAR[2], P_LONG[1]))
	{
		p_push(p_pc + P_SIZE);
		p_pc = segment_to_virtual(P_PTR[2]);
	}
	else
	{
		p_step();
	}
}

static void p_cmd_if(void)
{
	if (!p_cmp(P_UCHAR[2], P_LONG[1]))
	{
		do
		{
			p_step();
		}
		while (P_CMD == P_CMD_ELSE || P_CMD == P_CMD_ENDIF);
	}
	p_step();
}

static void p_cmd_else(void)
{
	do
	{
		p_step();
	}
	while (P_CMD == P_CMD_ENDIF);
	p_step();
}

static void p_cmd_endif(void)
{
	p_step();
}

static void p_cmd_callback(void)
{
	PRGCALL *callback = P_CALL[1];
	p_status = callback(P_SHORT[1], p_status);
	p_step();
}

static void p_cmd_process(void)
{
	PRGCALL *callback = P_CALL[1];
	p_status = callback(P_SHORT[1], p_status);
	if (p_status == 0)
	{
		p_state = 0;
	}
	else
	{
		p_state = 1;
		p_step();
	}
}

static void p_cmd_set(void)
{
	p_status = P_SHORT[1];
	p_step();
}

static void p_cmd_push(void)
{
	mem_push();
	p_step();
}

static void p_cmd_pull(void)
{
	mem_pull();
	p_step();
}

static void p_cmd_load_code(void)
{
	mem_load_code(P_PTR[1], P_PTR[2], P_PTR[3]);
	p_step();
}

static void p_cmd_load_data(void)
{
	mem_load_data(P_SHORT[1], P_PTR[1], P_PTR[2], MEM_ALLOC_L);
	p_step();
}

static void p_cmd_load_pres(void)
{
	mem_load_pres(P_SHORT[1], P_PTR[1], P_PTR[2]);
	p_step();
}

#define FACE_ALLOC 0xE1000

extern char _zimgSegmentStart[];
extern char _cimgSegmentStart[];

static void p_cmd_load_face(void)
{
	void *ptr;
	if ((ptr = mem_alloc(FACE_ALLOC, MEM_ALLOC_L)))
	{
		gdm_init(ptr, FACE_ALLOC);
		face_gfx_8019C418(_zimgSegmentStart, 2*SCREEN_WD*SCREEN_HT);
		face_gfx_8019C418(_cimgSegmentStart, 2*SCREEN_WD*SCREEN_HT*3);
		gdm_setup();
		gdm_maketestdl(P_SHORT[1]);
	}
	else
	{
	}
	p_step();
}

static void p_cmd_load_text(void)
{
	mem_load_text(P_SHORT[1], P_PTR[1], P_PTR[2]);
	p_step();
}

static void p_cmd_stage_init(void)
{
	s_create_empty(NULL, &sobj_list);
	object_init();
	scene_init();
	mem_push();
	p_step();
}

static void p_cmd_stage_exit(void)
{
	object_init();
	scene_exit();
	scene_init();
	mem_pull();
	p_step();
}

static void p_cmd_stage_start(void)
{
	if (!p_arena)
	{
		p_arena = arena_create(mem_available()-sizeof(ARENA), MEM_ALLOC_L);
	}
	p_step();
}

static void p_cmd_stage_end(void)
{
	int i;
	arena_resize(p_arena, p_arena->used);
	p_arena = NULL;
	for (i = 0; i < SCENE_MAX; i++)
	{
		if (scene_data[i].map)
		{
			map_init();
			break;
		}
	}
	p_step();
}

static void p_cmd_scene_start(void)
{
	UCHAR i = P_UCHAR[2];
	S_SCRIPT *script = P_PTR[1];
	if (i < SCENE_MAX)
	{
		S_SCENE *shp = (S_SCENE *)s_process(p_arena, script);
		S_CAMERA *cam = (S_CAMERA *)shp->table[0];
		p_scene = i;
		shp->index = i;
		scene_table[i].shp = shp;
		if (cam)    scene_table[i].cam = (CAMERA *)cam->s.arg;
		else        scene_table[i].cam = NULL;
	}
	p_step();
}

static void p_cmd_scene_end(void)
{
	p_scene = -1;
	p_step();
}

static void p_cmd_shape_gfx(void)
{
	SHORT index = P_SHORT[1] & 0xFFF;
	SHORT layer = P_USHORT[1] >> 12;
	Gfx *gfx = P_PTR[1];
	if (index < SHAPE_MAX)
	{
		shape_table[index] = &s_create_gfx(p_arena, NULL, layer, gfx)->s;
	}
	p_step();
}

static void p_cmd_shape_script(void)
{
	SHORT index = P_SHORT[1];
	S_SCRIPT *script = P_PTR[1];
	if (index < SHAPE_MAX)
	{
		shape_table[index] = s_process(p_arena, script);
	}
	p_step();
}

static void p_cmd_shape_scale(void)
{
	union {int i; float f;} scale;
	SHORT index = P_SHORT[1] & 0xFFF;
	SHORT layer = P_USHORT[1] >> 12;
	Gfx *gfx = P_PTR[1];
	scale.i = P_INT[2];
	if (index < SHAPE_MAX)
	{
		shape_table[index] =
			&s_create_scale(p_arena, NULL, layer, gfx, scale.f)->s.s;
	}
	p_step();
}

static void p_cmd_player(void)
{
	vecs_set(mario_actor->pos, 0, 0, 0);
	vecs_set(mario_actor->ang, 0, 0, 0);
	mario_actor->group = -1;
	mario_actor->scene = 0;
	mario_actor->info = P_INT[1];
	mario_actor->script = P_PTR[2];
	mario_actor->shape = shape_table[P_UCHAR[3]];
	mario_actor->next = NULL;
	p_step();
}

static void p_cmd_object(void)
{
	UCHAR mask = 1 << (level_index-1);
	if (p_scene != -1)
	{
		if ((P_UCHAR[2] & mask) || P_UCHAR[2] == 037)
		{
			USHORT shape = P_UCHAR[3];
			ACTOR *actor = arena_alloc(p_arena, sizeof(ACTOR));
			actor->pos[0] = P_SHORT[2];
			actor->pos[1] = P_SHORT[3];
			actor->pos[2] = P_SHORT[4];
			actor->ang[0] = P_SHORT[5] * 0x8000/180;
			actor->ang[1] = P_SHORT[6] * 0x8000/180;
			actor->ang[2] = P_SHORT[7] * 0x8000/180;
			actor->scene = p_scene;
			actor->group = p_scene;
			actor->info = P_INT[4];
			actor->script = P_PTR[5];
			actor->shape = shape_table[shape];
			actor->next = scene_table[p_scene].actor;
			scene_table[p_scene].actor = actor;
		}
	}
	p_step();
}

static void p_cmd_port(void)
{
	if (p_scene != -1)
	{
		PORT *port = arena_alloc(p_arena, sizeof(PORT));
		port->p.attr = P_UCHAR[2];
		port->p.stage = P_UCHAR[3] + P_UCHAR[6];
		port->p.scene = P_UCHAR[4];
		port->p.port = P_UCHAR[5];
		port->obj = NULL;
		port->next = scene_table[p_scene].port;
		scene_table[p_scene].port = port;
	}
	p_step();
}

static void p_cmd_connect(void)
{
	int i;
	CONNECT *connect;
	if (p_scene != -1)
	{
		if (!scene_table[p_scene].connect)
		{
			scene_table[p_scene].connect =
				arena_alloc(p_arena, sizeof(CONNECT)*4);
			for (i = 0; i < 4; i++)
			{
				scene_table[p_scene].connect[i].flag = FALSE;
			}
		}
		connect = &scene_table[p_scene].connect[P_UCHAR[2]];
		connect->flag = TRUE;
		connect->scene = P_UCHAR[3];
		connect->offset[0] = P_SHORT[2];
		connect->offset[1] = P_SHORT[3];
		connect->offset[2] = P_SHORT[4];
	}
	p_step();
}

static void p_cmd_env(void)
{
	if (p_scene != -1)
	{
		scene_table[p_scene].env |= P_SHORT[1];
	}
	p_step();
}

static void p_cmd_bgport(void)
{
	int i;
	BGPORT *bgport;
	if (p_scene != -1)
	{
		if (!scene_table[p_scene].bgport)
		{
			scene_table[p_scene].bgport =
				arena_alloc(p_arena, sizeof(BGPORT)*45);
			for (i = 0; i < 45; i++)
			{
				scene_table[p_scene].bgport[i].p.attr = FALSE;
			}
		}
		bgport = &scene_table[p_scene].bgport[P_UCHAR[2]];
		bgport->p.attr = TRUE;
		bgport->p.stage = P_UCHAR[3] + P_UCHAR[6];
		bgport->p.scene = P_UCHAR[4];
		bgport->p.port = P_UCHAR[5];
	}
	p_step();
}

static void p_cmd_58(void)
{
	SCENE28 *_28;
	if (p_scene != -1)
	{
		if (!(_28 = scene_table[p_scene]._28))
		{
			_28 = scene_table[p_scene]._28 =
				arena_alloc(p_arena, sizeof(SCENE28));
		}
		_28->_00 = P_SHORT[1];
		_28->_02 = P_SHORT[2];
		_28->_04 = P_SHORT[3];
		_28->_06 = P_SHORT[4];
		_28->_08 = P_SHORT[5];
	}
	p_step();
}

static void p_cmd_jet(void)
{
	JET *jet;
	int index = P_UCHAR[2];
	int flag = (save_get_flag() & (SAVE_KEY2|SAVE_KEYDOOR2)) != 0;
	if (
		(P_UCHAR[3] == 0) ||
		(P_UCHAR[3] == 1 && !flag) ||
		(P_UCHAR[3] == 2 && flag) ||
		(P_UCHAR[3] == 3 && level_index > 1)
	)
	{
		if (p_scene != -1)
		{
			if (index < 2)
			{
				if (!(jet = scene_table[p_scene].jet[index]))
				{
					jet = arena_alloc(p_arena, sizeof(JET));
					scene_table[p_scene].jet[index] = jet;
				}
				vecs_set(jet->pos, P_SHORT[2], P_SHORT[3], P_SHORT[4]);
				jet->attr = P_SHORT[5];
			}
		}
	}
	p_step();
}

static void p_cmd_vi_black(void)
{
	osViBlack(P_UCHAR[2]);
	p_step();
}

static void p_cmd_vi_gamma(void)
{
	osViSetSpecialFeatures(!P_UCHAR[2] ? OS_VI_GAMMA_OFF : OS_VI_GAMMA_ON);
	p_step();
}

static void p_cmd_map(void)
{
	if (p_scene != -1)
	{
		scene_table[p_scene].map = segment_to_virtual(P_PTR[1]);
	}
	p_step();
}

static void p_cmd_area(void)
{
	if (p_scene != -1)
	{
		scene_table[p_scene].area = segment_to_virtual(P_PTR[1]);
	}
	p_step();
}

static void p_cmd_tag(void)
{
	if (p_scene != -1)
	{
		scene_table[p_scene].tag = segment_to_virtual(P_PTR[1]);
	}
	p_step();
}

static void p_cmd_scene_open(void)
{
	SHORT index = P_UCHAR[2];
	UNUSED void *sp18 = p_pc + 4;
	Na_SeClear();
	scene_open(index);
	p_step();
}

static void p_cmd_scene_close(void)
{
	scene_close();
	p_step();
}

static void p_cmd_player_open(void)
{
	mario_actor->scene = P_UCHAR[2];
	vecs_cpy(mario_actor->pos, P_SHORT+3);
	vecs_set(mario_actor->ang, 0, P_SHORT[2] * 0x8000/180, 0);
	p_step();
}

static void p_cmd_player_close(void)
{
	scene_player_close();
	p_step();
}

static void p_cmd_scene_proc(void)
{
	scene_proc();
	p_step();
}

static void p_cmd_wipe(void)
{
	if (scenep)
	{
		scene_wipe(P_UCHAR[2], P_UCHAR[3], P_UCHAR[4], P_UCHAR[5], P_UCHAR[6]);
	}
	p_step();
}

static void p_cmd_50(void)
{
	p_step();
}

static void p_cmd_msg(void)
{
	if (p_scene != -1)
	{
		if (P_UCHAR[2] < 2) scene_table[p_scene].msg[P_UCHAR[2]] = P_UCHAR[3];
	}
	p_step();
}

static void p_cmd_bgm(void)
{
	if (p_scene != -1)
	{
		scene_table[p_scene].bgm_mode = P_SHORT[1];
		scene_table[p_scene].bgm = P_SHORT[2];
	}
	p_step();
}

static void p_cmd_bgm_play(void)
{
	bgm_play(0, P_SHORT[1], 0);
	p_step();
}

static void p_cmd_aud_fadeout(void)
{
	aud_fadeout(P_SHORT[1]);
	p_step();
}

static void p_cmd_var(void)
{
	if (P_UCHAR[2] == 0)
	{
		switch (P_UCHAR[3])
		{
		case P_VAR_FILE:    file_index      = p_status; break;
		case P_VAR_COURSE:  course_index    = p_status; break;
		case P_VAR_LEVEL:   level_index     = p_status; break;
		case P_VAR_STAGE:   stage_index     = p_status; break;
		case P_VAR_SCENE:   scene_index     = p_status; break;
		}
	}
	else
	{
		switch (P_UCHAR[3])
		{
		case P_VAR_FILE:    p_status = file_index;      break;
		case P_VAR_COURSE:  p_status = course_index;    break;
		case P_VAR_LEVEL:   p_status = level_index;     break;
		case P_VAR_STAGE:   p_status = stage_index;     break;
		case P_VAR_SCENE:   p_status = scene_index;     break;
		}
	}
	p_step();
}

static void (*p_cmd_table[])(void) =
{
	p_cmd_execute,
	p_cmd_chain,
	p_cmd_exit,
	p_cmd_sleep,
	p_cmd_freeze,
	p_cmd_jump,
	p_cmd_call,
	p_cmd_return,
	p_cmd_for,
	p_cmd_done,
	p_cmd_repeat,
	p_cmd_until,
	p_cmd_jump_if,
	p_cmd_call_if,
	p_cmd_if,
	p_cmd_else,
	p_cmd_endif,
	p_cmd_callback,
	p_cmd_process,
	p_cmd_set,
	p_cmd_push,
	p_cmd_pull,
	p_cmd_load_code,
	p_cmd_load_data,
	p_cmd_load_pres,
	p_cmd_load_face,
	p_cmd_load_text,
	p_cmd_stage_init,
	p_cmd_stage_exit,
	p_cmd_stage_start,
	p_cmd_stage_end,
	p_cmd_scene_start,
	p_cmd_scene_end,
	p_cmd_shape_gfx,
	p_cmd_shape_script,
	p_cmd_shape_scale,
	p_cmd_object,
	p_cmd_player,
	p_cmd_port,
	p_cmd_bgport,
	p_cmd_connect,
	p_cmd_scene_open,
	p_cmd_scene_close,
	p_cmd_player_open,
	p_cmd_player_close,
	p_cmd_scene_proc,
	p_cmd_map,
	p_cmd_area,
	p_cmd_msg,
	p_cmd_env,
	p_cmd_50,
	p_cmd_wipe,
	p_cmd_vi_black,
	p_cmd_vi_gamma,
	p_cmd_bgm,
	p_cmd_bgm_play,
	p_cmd_aud_fadeout,
	p_cmd_tag,
	p_cmd_58,
	p_cmd_jet,
	p_cmd_var,
};

P_SCRIPT *p_execute(P_SCRIPT *pc)
{
	p_state = 1;
	p_pc = pc;
	while (p_state == 1) p_cmd_table[P_CMD]();
	time_gfxcpu(TIME_GFXCPU_ENDPRC);
	gfx_start();
	scene_draw();
	gfx_end();
	gfx_alloc(0);
	return p_pc;
}
