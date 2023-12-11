#include <sm64.h>

static const char *db_edit_effectinfo[] =
{
	"  a0 %d",
	"  a1 %d",
	"  a2 %d",
	"  a3 %d",
	"  a4 %d",
	"  a5 %d",
	"  a6 %d",
	"  a7 %d",
	"A",
};

static const char *db_edit_enemyinfo[] =
{
	"  b0 %d",
	"  b1 %d",
	"  b2 %d",
	"  b3 %d",
	"  b4 %d",
	"  b5 %d",
	"  b6 %d",
	"  b7 %d",
	"B",
};

static int db_button = 0;
static int db_repeat = 0;
static char db_init_flag = 0;
static s8 db_page = 0;
static char db_hideinfo = FALSE;
static char db_edit_flag = 0;
static s8 db_line = 0;

static DEBUG debug_out;
static DEBUG debug_err;

UNUSED static
void _802CA370(void)
{
}

UNUSED static
void _802CA380(void)
{
}

UNUSED static
void _802CA390(void)
{
}

UNUSED static
void _802CA3A0(void)
{
}

OSTime db_time_start(void)
{
	OSTime t = 0;
	return t;
}

OSTime db_time_count(UNUSED OSTime start)
{
	OSTime t = 0;
	return t;
}

static void db_init(
	DEBUG *db, SHORT x, SHORT y, SHORT min_y, SHORT max_y, SHORT height
)
{
	db->flag = 0;
	db->x = x;
	db->y = y;
	db->min_y = min_y;
	db->max_y = max_y;
	db->height = height;
}

static void db_print(DEBUG *db, const char *fmt, int value)
{
	if (!db->flag)
	{
		if (db->y < db->min_y || db->max_y < db->y)
		{
			dprint(db->x, db->y, "DPRINT OVER");
			db->flag++;
		}
		else
		{
			dprintf(db->x, db->y, fmt, value);
			db->y += db->height;
		}
	}
}

void db_offset(int off_x, int off_ln)
{
	DEBUG *db = &debug_out;
	db->x += off_x;
	db->y += off_ln * db->height;
}

void db_put_err(const char *fmt, int value)
{
	if (debug_flag & DEBUG_SHOW) db_print(&debug_err, fmt, value);
}

void db_put(const char *fmt, int value)
{
	if (debug_flag & DEBUG_SHOW)
	{
		if (db_page == 0) db_print(&debug_out, fmt, value);
	}
}

void db_put_info(const char *fmt, int value)
{
	if (db_hideinfo) return;
	if (debug_flag & DEBUG_SHOW) db_print(&debug_out, fmt, value);
}

void db_put_title(const char *fmt, int value)
{
	if (debug_flag & DEBUG_SHOW) db_print(&debug_out, fmt, value);
}

static void db_player_mapinfo(void)
{
	BGFACE *ground;
	float ground_y, water_y;
	int area, ang_y;
	ang_y = object->o_ang_y / 182.044;
	area =
		(((int)object->o_pos_x+MAP_HALF)/BGAREA_SIZE) +
		(((int)object->o_pos_z+MAP_HALF)/BGAREA_SIZE)*BGAREA_N;
	ground_y = bg_check_ground(
		object->o_pos_x, object->o_pos_y, object->o_pos_z, &ground
	);
	water_y = bg_check_water(object->o_pos_x, object->o_pos_z);
	db_put_title("mapinfo", 0);
	db_put_info("area %x", area);
	db_put_info("wx   %d", object->o_pos_x);
	db_put_info("wy	  %d", object->o_pos_y);
	db_put_info("wz   %d", object->o_pos_z);
	db_put_info("bgY  %d", ground_y);
	db_put_info("angY %d", ang_y);
	if (ground)
	{
		db_put_info("bgcode   %d", ground->code);
		db_put_info("bgstatus %d", ground->flag);
		db_put_info("bgarea   %d", ground->area);
	}
	if (object->o_pos_y < water_y) db_put_info("water %d", water_y);
}

static void db_player_checkinfo(void)
{
	db_put_title("checkinfo", 0);
}

static void db_result_checkinfo(void)
{
	bgcheck_debug(mario_obj->o_pos_x, mario_obj->o_pos_z);
}

static void db_player_stageinfo(void)
{
	db_put_title("stageinfo", 0);
	db_put_title("stage param %d", object_80361258);
}

static void db_put_edit(const char *fmt[])
{
	int i;
	if (!db_edit_flag)
	{
		db_edit_flag++;
		for (i = 0; i < 8; i++) db_put_info(fmt[i], db_work[db_page][i]);
		db_offset(0, -(8-db_line));
		db_put_info(fmt[8], 0);
		db_offset(0, +(8-db_line)-1);
	}
}

static void db_result_effectinfo(void)
{
	db_put_title("effectinfo", 0);
	db_put_edit(db_edit_effectinfo);
}

static void db_result_enemyinfo(void)
{
	db_put_title("enemyinfo", 0);
	db_put_edit(db_edit_enemyinfo);
}

static void db_proc_button(void)
{
	int held = cont1->held & (U_JPAD|D_JPAD|L_JPAD|R_JPAD);
	if (!held)
	{
		db_repeat = 0;
		db_button = 0;
	}
	else
	{
		if      (db_repeat == 0)    db_button = held;
		else if (db_repeat == 6)    db_button = held;
		else                        db_button = 0;
		db_repeat++;
		if (db_repeat > 7) db_repeat = 6;
	}
}

void debug_init(void)
{
	if (!db_init_flag)
	{
		db_init_flag++;
		if (!debug_stage)   debug_flag = 0;
		else                debug_flag = DEBUG_2;
		bgdebug.ground = 0;
		bgdebug.roof = 0;
		bgdebug.wall = 0;
	}
}

void debug_clear(void)
{
	nullbg_count = 0;
	wall_count = 0;
	obj_count = 0;
	db_edit_flag = 0;
	object_80361252 = 0;
	object_80361254 = 0;
	db_init(&debug_out, 20, 185, 40, 200, -15);
	db_init(&debug_err, 180, 30, 0, 150, 15);
	db_proc_button();
}

UNUSED static
void debug_proc_seq(void)
{
	static s8 index = 0;
	static s16 seqdata[] = {U_CBUTTONS, L_CBUTTONS, D_CBUTTONS, R_CBUTTONS, -1};
	s16 *seq = seqdata;
	SHORT x;
	if (!(cont1->held & L_TRIG))
	{
		index = 0;
	}
	else if ((x = cont1->down & (U_CBUTTONS|D_CBUTTONS|L_CBUTTONS|R_CBUTTONS)))
	{
		if (seq[index] == x)
		{
			index++;
			if (seq[index] == -1)
			{
				if (debug_flag == DEBUG_ALL)    debug_flag = DEBUG_2;
				else                            debug_flag = DEBUG_ALL;
			}
		}
		else
		{
			index = 0;
		}
	}
}

UNUSED static
void debug_proc_page(void)
{
	if (debug_flag & DEBUG_SHOW)
	{
		if ((cont1->down & L_JPAD) && (cont1->held & (L_TRIG|R_TRIG)))
		{
			db_page++;
		}
		if ((cont1->down & R_JPAD) && (cont1->held & (L_TRIG|R_TRIG)))
		{
			db_page--;
		}
		if (db_page > 5) db_page = 0;
		if (db_page < 0) db_page = 5;
	}
}

UNUSED static
void debug_proc_edit(void)
{
	if (cont1->down & Z_TRIG) db_hideinfo ^= TRUE;
	if (!(cont1->held & (L_TRIG|R_TRIG)) && !db_hideinfo)
	{
		int step = 1;
		if (cont1->held & B_BUTTON) step = 100;
		if (db_button & U_JPAD)
		{
			db_line--;
			if (db_line < 0) db_line = 0;
		}
		if (db_button & D_JPAD)
		{
			db_line++;
			if (db_line > 7) db_line = 7;
		}
		if (db_button & L_JPAD)
		{
			if (cont1->held & A_BUTTON)
			{
				db_work[db_page][db_line] = db_save[db_page][db_line];
			}
			else
			{
				db_work[db_page][db_line] -= step;
			}
		}
		if (db_button & R_JPAD)
		{
			db_work[db_page][db_line] += step;
		}
	}
}

void debug_exec(void)
{
}

void debug_result(void)
{
	if (mario_obj)
	{
		switch (db_page)
		{
		case 1: db_result_checkinfo(); break;
		case 4: db_result_effectinfo(); break;
		case 5: db_result_enemyinfo(); break;
		default: break;
		}
	}
	db_put_info("obj  %d", obj_count);
	if (nullbg_count != 0) db_put_err("NULLBG %d", nullbg_count);
	if (wall_count != 0) db_put_err("WALL   %d", wall_count);
}

void debug_player(void)
{
	switch (db_page)
	{
	case 0: break;
	case 1: db_player_checkinfo(); break;
	case 2: db_player_mapinfo(); break;
	case 3: db_player_stageinfo(); break;
	default: break;
	}
}

extern O_SCRIPT o_13000708[];
extern O_SCRIPT o_13001650[];
extern O_SCRIPT o_13001F3C[];

void debug_proc(void)
{
	UNUSED int i;
	if (db_page == 3 && db_work[5][7] == 1)
	{
		if (cont1->down & R_JPAD)
		{
			obj_make_off(0, 0, 100, 200, object, S_SHELL, o_13001F3C);
		}
		if (cont1->down & L_JPAD)
		{
			obj_make_off(0, 0, 100, 200, object, S_CRATE, o_13001650);
		}
		if (cont1->down & D_JPAD)
		{
			obj_make_off(0, 0, 100, 200, object, S_SHELL, o_13000708);
		}
	}
}

UNUSED static
void debug_putmovestat(void)
{
	if (object->o_move_status & OM_BOUND)
	{
		db_put("BOUND   %x", object->o_move_status);
	}
	if (object->o_move_status & OM_TOUCH)
	{
		db_put("TOUCH   %x", object->o_move_status);
	}
	if (object->o_move_status & OM_TAKEOFF)
	{
		db_put("TAKEOFF %x", object->o_move_status);
	}
	if (object->o_move_status & OM_DIVE)
	{
		db_put("DIVE    %x", object->o_move_status);
	}
	if (object->o_move_status & OM_S_WATER)
	{
		db_put("S WATER %x", object->o_move_status);
	}
	if (object->o_move_status & OM_U_WATER)
	{
		db_put("U WATER %x", object->o_move_status);
	}
	if (object->o_move_status & OM_B_WATER)
	{
		db_put("B WATER %x", object->o_move_status);
	}
	if (object->o_move_status & OM_SKY)
	{
		db_put("SKY     %x", object->o_move_status);
	}
	if (object->o_move_status & OM_OUT_SCOPE)
	{
		db_put("OUT SCOPE %x", object->o_move_status);
	}
}

UNUSED static
void debug_sethit(OBJ_HIT *hit)
{
	hit->hit_r = db_work[5][1];
	hit->hit_h = db_work[5][2];
	hit->dmg_r = db_work[5][3];
	hit->dmg_h = db_work[5][4];
}
