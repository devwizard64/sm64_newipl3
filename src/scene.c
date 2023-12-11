#include <sm64.h>

ACTOR player_actor[1];
SHAPE *shape_data[SHAPE_MAX];
SCENE scene_data[SCENE_MAX];
ACTOR *mario_actor = &player_actor[0];
SHAPE **shape_table = shape_data;
SCENE *scene_table = scene_data;
SCENE *scenep = NULL;
STAFF *staffp = NULL;
WIPE wipe;

static Vp *scene_viewport = NULL;
static Vp *scene_scissor = NULL;
static s16 wipe_delay = 0;
static u32 scene_fill = 0;
static u32 blank_fill = 0;
static u8 blank_r = 0;
static u8 blank_g = 0;
static u8 blank_b = 0;

s16 file_index = 1;
s16 course_index;
s16 level_index;
s16 stage_index = 1;
s16 scene_index;
s16 prev_course;

s16 msg_status;
s16 msg_result;

#define RGBA16(r, g, b, a) \
	(((r) >> 3) << 11 | ((g) >> 3) << 6 | ((b) >> 3) << 1 | ((a) >> 7))

void scene_set_vp(Vp *viewport, Vp *scissor, UCHAR r, UCHAR g, UCHAR b)
{
	USHORT fill = RGBA16(r, g, b, 0xFF);
	scene_fill = fill << 16 | fill;
	scene_viewport = viewport;
	scene_scissor  = scissor;
}

static void scene_set_blank(UCHAR r, UCHAR g, UCHAR b)
{
	USHORT fill = RGBA16(r, g, b, 0xFF);
	blank_fill = fill << 16 | fill;
	blank_r = r;
	blank_g = g;
	blank_b = b;
}

void scene_demo(void)
{
	if ((gfx_frame & 31) < 20)
	{
		if (!cont_bitpattern)
		{
			dprintc(SCREEN_WD/2, 20, "NO CONTROLLER");
		}
		else
		{
			dprintc(60, 20+18*1, "PRESS");
			dprintc(60, 20+18*0, "START");
		}
	}
}

#define PORT_MAX    20

extern O_SCRIPT o_13000720[];
extern O_SCRIPT o_1300075C[];
extern O_SCRIPT o_13000780[];
extern O_SCRIPT o_130007A0[];
extern O_SCRIPT o_portdoor[];
extern O_SCRIPT o_13002F60[];
extern O_SCRIPT o_13002F64[];
extern O_SCRIPT o_13002F68[];
extern O_SCRIPT o_13002F6C[];
extern O_SCRIPT o_13002F70[];
extern O_SCRIPT o_13002F74[];
extern O_SCRIPT o_13002F78[];
extern O_SCRIPT o_13002F7C[];
extern O_SCRIPT o_13002F80[];
extern O_SCRIPT o_13002F84[];
extern O_SCRIPT o_13002F88[];
extern O_SCRIPT o_13002F8C[];
extern O_SCRIPT o_13002F90[];
extern O_SCRIPT o_13002F94[];
extern O_SCRIPT o_13003E3C[];

static O_SCRIPT *port_script[PORT_MAX] =
{
	o_portdoor,
	o_13003E3C,
	o_13000720,
	o_13000780,
	o_130007A0,
	o_1300075C,
	o_13002F60,
	o_13002F64,
	o_13002F68,
	o_13002F6C,
	o_13002F70,
	o_13002F74,
	o_13002F78,
	o_13002F94,
	o_13002F7C,
	o_13002F80,
	o_13002F88,
	o_13002F84,
	o_13002F8C,
	o_13002F90,
};

static u8 port_type[PORT_MAX] =
{
	ENTER_DOOR,
	ENTER_02,
	ENTER_03,
	ENTER_03,
	ENTER_03,
	ENTER_04,
	ENTER_10,
	ENTER_12,
	ENTER_13,
	ENTER_14,
	ENTER_15,
	ENTER_16,
	ENTER_17,
	ENTER_11,
	ENTER_20,
	ENTER_21,
	ENTER_22,
	ENTER_23,
	ENTER_24,
	ENTER_25,
};

int port_get_type(OBJECT *obj)
{
	int i;
	O_SCRIPT *script = virtual_to_segment(SEG_OBJECT, obj->script);
	for (i = 0; i < PORT_MAX; i++)
	{
		if (port_script[i] == script) return port_type[i];
	}
	return 0;
}

PORT *port_get(UCHAR index)
{
	PORT *port = NULL;
	for (port = scenep->port; port; port = port->next)
	{
		if (port->p.attr == index) break;
	}
	return port;
}

static PORT *obj_get_port(OBJECT *obj)
{
	UCHAR index = obj_get_code(obj);
	return port_get(index);
}

static void port_init(void)
{
	PORT *port;
	SHAPE *shape = sobj_list.child;
	do
	{
		OBJECT *obj = (OBJECT *)shape;
		if (obj->flag && port_get_type(obj) != 0)
		{
			if ((port = obj_get_port(obj))) port->obj = obj;
		}
	}
	while ((shape = shape->next) != sobj_list.child);
}

void scene_init(void)
{
	int i;
	scenep = NULL;
	wipe.active = FALSE;
	wipe.blank = FALSE;
	mario_actor->scene = -1;
	for (i = 0; i < SCENE_MAX; i++)
	{
		scene_data[i].index     = i;
		scene_data[i].flag      = 0;
		scene_data[i].env       = 0;
		scene_data[i].shp       = NULL;
		scene_data[i].map       = NULL;
		scene_data[i].area      = NULL;
		scene_data[i].tag       = NULL;
		scene_data[i].port      = NULL;
		scene_data[i].bgport    = NULL;
		scene_data[i].connect   = NULL;
		scene_data[i].actor     = NULL;
		scene_data[i].cam       = NULL;
		scene_data[i]._28       = NULL;
		scene_data[i].jet[0]    = NULL;
		scene_data[i].jet[1]    = NULL;
		scene_data[i].msg[0]    = 0xFF;
		scene_data[i].msg[1]    = 0xFF;
		scene_data[i].bgm_mode  = NA_MODE_DEFAULT;
		scene_data[i].bgm       = NA_BGM_NULL;
	}
}

void scene_exit(void)
{
	int i;
	if (scenep)
	{
		s_scene_notify(scenep->shp, SC_CLOSE);
		scenep = NULL;
		wipe.active = FALSE;
	}
	for (i = 0; i < SCENE_MAX; i++)
	{
		if (scene_data[i].shp)
		{
			s_scene_notify(scene_data[i].shp, SC_EXIT);
			scene_data[i].shp = NULL;
		}
	}
}

void scene_open(int index)
{
	if (!scenep && scene_data[index].shp)
	{
		scenep = &scene_data[index];
		scene_index = scenep->index;
		if (scenep->map)
		{
			map_load(index, scenep->map, scenep->area, scenep->tag);
		}
		if (scenep->actor) object_open(0, scenep->actor);
		port_init();
		s_scene_notify(scenep->shp, SC_OPEN);
	}
}

void scene_close(void)
{
	if (scenep)
	{
		object_close(0, scenep->index);
		s_scene_notify(scenep->shp, SC_CLOSE);
		scenep->flag = 0;
		scenep = NULL;
		wipe.active = FALSE;
	}
}

void scene_player_open(void)
{
	Na_SeClear();
	scene_open(mario_actor->scene);
	if (scenep->index == mario_actor->scene)
	{
		scenep->flag |= SN_ACTIVE;
		object_open(0, mario_actor);
	}
}

void scene_player_close(void)
{
	if (scenep && (scenep->flag & SN_ACTIVE))
	{
		object_close(0, mario_actor->group);
		scenep->flag &= ~SN_ACTIVE;
		if (!scenep->flag) scene_close();
	}
}

void scene_set(int index)
{
	int flag = scenep->flag;
	if (scene_index != index)
	{
		scene_close();
		scene_open(index);
		scenep->flag = flag;
		mario_obj->o_effect = 0;
	}
	if (flag & SN_ACTIVE)
	{
		mario_obj->s.scene = index, mario_actor->scene = index;
	}
}

void scene_proc(void)
{
	draw_timer++;
	object_proc(0);
}

void scene_wipe(SHORT type, SHORT frame, UCHAR r, UCHAR g, UCHAR b)
{
	wipe.active = TRUE;
	wipe.type   = type;
	wipe.frame  = frame;
	wipe.blank  = FALSE;
	if (WIPE_ISOUT(type))   scene_set_blank(r, g, b);
	else                    r = blank_r, g = blank_g, b = blank_b;
	if (type < WIPE_FADE_MAX)
	{
		wipe.data.fade.r = r;
		wipe.data.fade.g = g;
		wipe.data.fade.b = b;
	}
	else
	{
		wipe.data.window.r = r;
		wipe.data.window.g = g;
		wipe.data.window.b = b;
		wipe.data.window.sx = SCREEN_WD/2;
		wipe.data.window.sy = SCREEN_HT/2;
		wipe.data.window.ex = SCREEN_WD/2;
		wipe.data.window.ey = SCREEN_HT/2;
		wipe.data.window.ang_vel = 0;
		if (WIPE_ISOUT(type))
		{
			wipe.data.window.ssize = SCREEN_WD;
			wipe.data.window.esize = type >= WIPE_UNKNOWN_OUT ? 16 : 0;
		}
		else
		{
			wipe.data.window.ssize = type >= WIPE_UNKNOWN_IN ? 16 : 0;
			wipe.data.window.esize = SCREEN_WD;
		}
	}
}

void scene_wipe_delay(
	SHORT type, SHORT frame, UCHAR r, UCHAR g, UCHAR b, SHORT delay
)
{
	wipe_delay = delay;
	scene_wipe(type, frame, r, g, b);
}

void scene_draw(void)
{
	if (scenep && !wipe.blank)
	{
		static Vp vp =
		{{
			{4*(SCREEN_WD/2), 4*(SCREEN_HT/2), G_MAXZ/2, 0},
			{4*(SCREEN_WD/2), 4*(SCREEN_HT/2), G_MAXZ/2, 0},
		}};
		draw_scene(scenep->shp, scene_viewport, scene_scissor, scene_fill);
		gSPViewport(glistp++, K0_TO_PHYS(&vp));
		gDPSetScissor(
			glistp++, G_SC_NON_INTERLACE,
			0, BORDER_HT, SCREEN_WD, SCREEN_HT-BORDER_HT
		);
		hud_draw();
#if BORDER_HT > 0
		gDPSetScissor(glistp++, G_SC_NON_INTERLACE, 0, 0, SCREEN_WD, SCREEN_HT);
#endif
		dprint_draw();
		caption_draw();
		staff_draw();
#if BORDER_HT > 0
		gDPSetScissor(
			glistp++, G_SC_NON_INTERLACE,
			0, BORDER_HT, SCREEN_WD, SCREEN_HT-BORDER_HT
		);
#endif
		if ((msg_status = message_proc()) != 0) msg_result = msg_status;
		if (scene_scissor) gfx_vp_scissor(scene_scissor);
		else gDPSetScissor(
			glistp++, G_SC_NON_INTERLACE,
			0, BORDER_HT, SCREEN_WD, SCREEN_HT-BORDER_HT
		);
		if (wipe.active)
		{
			if (wipe_delay == 0)
			{
				wipe.active = !wipe_draw(0, wipe.type, wipe.frame, &wipe.data);
				if (!wipe.active)
				{
					if (WIPE_ISOUT(wipe.type))  wipe.blank = TRUE;
					else                        scene_set_blank(0, 0, 0);
				}
			}
			else
			{
				wipe_delay--;
			}
		}
	}
	else
	{
		dprint_draw();
		if (scene_scissor)  gfx_vp_clear(scene_scissor, blank_fill);
		else                gfx_clear(blank_fill);
	}
	scene_viewport = NULL;
	scene_scissor  = NULL;
}
