#include <sm64.h>

#ifdef ENGLISH
#include "en_us.h"
#endif

#define F_SELECT        -1

#define F_MIN           0
#define F_FILE          0
#define F_FILE_A        0
#define F_FILE_B        1
#define F_FILE_C        2
#define F_FILE_D        3
#define F_SCORE         4
#define F_COPY          5
#define F_ERASE         6
#define F_MAX           7

#define FS_MIN          7
#define FS_FILE         7
#define FS_FILE_A       7
#define FS_FILE_B       8
#define FS_FILE_C       9
#define FS_FILE_D       10
#define FS_SELECT       11
#define FS_COPY         12
#define FS_ERASE        13
#define FS_MAX          14

#define FC_MIN          14
#define FC_FILE         14
#define FC_FILE_A       14
#define FC_FILE_B       15
#define FC_FILE_C       16
#define FC_FILE_D       17
#define FC_SELECT       18
#define FC_SCORE        19
#define FC_ERASE        20
#define FC_MAX          21

#define FE_MIN          21
#define FE_FILE         21
#define FE_FILE_A       21
#define FE_FILE_B       22
#define FE_FILE_C       23
#define FE_FILE_D       24
#define FE_SELECT       25
#define FE_SCORE        26
#define FE_COPY         27
#define FE_MAX          28

#define F_OPTION        28
#define FO_MIN          29
#define FO_SOUND        29
#define FO_STEREO       29
#define FO_MONO         30
#define FO_PHONE        31
#define FO_MAX          32

#define TILE_CLOSED     0
#define TILE_OPEN       1
#define TILE_OPENED     2
#define TILE_CLOSE      3
#define TILE_CLICK      4
#define TILE_SELECT     5
#define TILE_DESELECT   6

extern Gfx gfx_print_1cyc_start[];
extern Gfx gfx_print_1cyc_end[];
extern Gfx gfx_lgfont_start[];
extern Gfx gfx_lgfont_end[];
extern unsigned char *course_name[];

extern Gfx gfx_smfont_start[];
extern Gfx gfx_smfont_end[];
extern Gfx gfx_select_cursor_0[];
extern Gfx gfx_select_cursor_1[];

static OBJECT *file_obj[32];
static s8 file_state = F_SELECT;
static s8 file_mode = 1;
static u8 file_alpha = 0;
static float cursor_pos[2] = {0, 0};
static s16 cursor_flag = 0;
static short click_pos[2] = {-10000, -10000};
static s8 click_file = -1;
static char click_flag = FALSE;
static s8 click_msg = 0;
static u8 click_alpha = 0;
static s16 click_timer = 0;
static s8 sound_flag = 0;
static u8 blink[2];
static s8 erase_flag = 0;
static char file_full = FALSE;
static s8 file_result = 0;
static s8 score_flag = 0;

void fileback_init(void)
{
	object->o_shape_ang_y = 0x8000;
	object->o_f5 = 9;
}

void fileback_proc(void)
{
	object_set_scale(9);
}

static int file_isclick(SHORT x, SHORT y, float z)
{
	float scale = (float)52.4213;
	float ortho_x = SCREEN_WD/2.0 * (float)x / (scale     * z);
	float ortho_y = SCREEN_HT/2.0 * (float)y / (scale*3/4 * z);
	SHORT xh = ortho_x + 25;
	SHORT xl = ortho_x - 25;
	SHORT yh = ortho_y + 21;
	SHORT yl = ortho_y - 21;
	if (
		click_pos[0] < xh && click_pos[0] > xl &&
		click_pos[1] < yh && click_pos[1] > yl
	) return TRUE;
	return FALSE;
}

static void filetile_open_1(OBJECT *obj)
{
	if (                  obj->o_v1 < 16) obj->o_shape_ang_y += 0x800;
	if (obj->o_v1 <  8                  ) obj->o_shape_ang_x += 0x800;
	if (obj->o_v1 >= 8 && obj->o_v1 < 16) obj->o_shape_ang_x -= 0x800;
	obj->o_off_x -= obj->o_f2 / 16.0;
	obj->o_off_y -= obj->o_f3 / 16.0;
	if (obj->o_pos_z < obj->o_f4+17800.0) obj->o_off_z += 17800.0 / 16.0;
	obj->o_v1++;
	if (obj->o_v1 == 16)
	{
		obj->o_off_x = 0;
		obj->o_off_y = 0;
		obj->o_v0 = TILE_OPENED;
		obj->o_v1 = 0;
	}
}

static void filetile_close_1(OBJECT *obj)
{
	if (                  obj->o_v1 < 16) obj->o_shape_ang_y -= 0x800;
	if (obj->o_v1 <  8                  ) obj->o_shape_ang_x -= 0x800;
	if (obj->o_v1 >= 8 && obj->o_v1 < 16) obj->o_shape_ang_x += 0x800;
	obj->o_off_x += obj->o_f2 / 16.0;
	obj->o_off_y += obj->o_f3 / 16.0;
	if (obj->o_pos_z > obj->o_f4) obj->o_off_z -= 17800.0 / 16.0;
	obj->o_v1++;
	if (obj->o_v1 == 16)
	{
		obj->o_off_x = obj->o_f2;
		obj->o_off_y = obj->o_f3;
		obj->o_v0 = TILE_CLOSED;
		obj->o_v1 = 0;
	}
}

static void filetile_open_2(OBJECT *obj)
{
	if (                  obj->o_v1 < 16) obj->o_shape_ang_y += 0x800;
	if (obj->o_v1 <  8                  ) obj->o_shape_ang_x += 0x800;
	if (obj->o_v1 >= 8 && obj->o_v1 < 16) obj->o_shape_ang_x -= 0x800;
	obj->o_off_x -= obj->o_f2 / 16.0;
	obj->o_off_y -= obj->o_f3 / 16.0;
	obj->o_off_z -= 1860.0 / 16.0;
	obj->o_v1++;
	if (obj->o_v1 == 16)
	{
		obj->o_off_x = 0;
		obj->o_off_y = 0;
		obj->o_v0 = TILE_OPENED;
		obj->o_v1 = 0;
	}
}

static void filetile_close_2(OBJECT *obj)
{
	if (                  obj->o_v1 < 16) obj->o_shape_ang_y -= 0x800;
	if (obj->o_v1 <  8                  ) obj->o_shape_ang_x -= 0x800;
	if (obj->o_v1 >= 8 && obj->o_v1 < 16) obj->o_shape_ang_x += 0x800;
	obj->o_off_x += obj->o_f2 / 16.0;
	obj->o_off_y += obj->o_f3 / 16.0;
	if (obj->o_pos_z > obj->o_f4) obj->o_off_z += 1860.0 / 16.0;
	obj->o_v1++;
	if (obj->o_v1 == 16)
	{
		obj->o_off_x = obj->o_f2;
		obj->o_off_y = obj->o_f3;
		obj->o_v0 = TILE_CLOSED;
		obj->o_v1 = 0;
	}
}

static void filetile_click(OBJECT *obj)
{
	if (file_mode == 1)
	{
		if (obj->o_v1 <  4) obj->o_off_z -= 20;
		if (obj->o_v1 >= 4) obj->o_off_z += 20;
	}
	else
	{
		if (obj->o_v1 <  4) obj->o_off_z += 20;
		if (obj->o_v1 >= 4) obj->o_off_z -= 20;
	}
	obj->o_v1++;
	if (obj->o_v1 == 8)
	{
		obj->o_v0 = TILE_CLOSED;
		obj->o_v1 = 0;
	}
}

static void filetile_select(OBJECT *obj)
{
	obj->o_f5 += 0.0022;
	obj->o_v1++;
	if (obj->o_v1 == 10)
	{
		obj->o_v0 = TILE_CLOSED;
		obj->o_v1 = 0;
	}
}

static void filetile_deselect(OBJECT *obj)
{
	obj->o_f5 -= 0.0022;
	obj->o_v1++;
	if (obj->o_v1 == 10)
	{
		obj->o_v0 = TILE_CLOSED;
		obj->o_v1 = 0;
	}
}

void filetile_init(void)
{
	object->o_f2 = object->o_off_x;
	object->o_f3 = object->o_off_y;
}

void filetile_proc(void)
{
	switch (object->o_v0)
	{
	case 0:
		object->o_f4 = object->o_pos_z;
		break;
	case 1:
		if (file_mode == 1) filetile_open_1(object);
		if (file_mode == 2) filetile_open_2(object);
		file_alpha = 0;
		cursor_flag = 4;
		break;
	case 2:
		break;
	case 3:
		if (file_mode == 1) filetile_close_1(object);
		if (file_mode == 2) filetile_close_2(object);
		file_alpha = 0;
		cursor_flag = 4;
		break;
	case 4:
		filetile_click(object);
		cursor_flag = 4;
		break;
	case 5:
		filetile_select(object);
		cursor_flag = 4;
		break;
	case 6:
		filetile_deselect(object);
		cursor_flag = 4;
		break;
	}
	object_set_scale(object->o_f5);
}

extern O_SCRIPT o_filetile[];

#define filemenu_maketile(obj, shape, scale, posx, posy, posz, angy) \
	obj_make_rel( \
		obj, shape, o_filetile, (posx)/scale, (posy)/scale, posz, 0, angy, 0 \
	)
#define filemenu_inittile_sel(tile, shape, x, y) \
{ \
	file_obj[tile] = filemenu_maketile(object, shape, 1, x, y, 0, 0); \
	file_obj[tile]->o_f5 = (float)1/1; \
}
#define filemenu_inittile_sub(obj, tile, shape, x, y) \
{ \
	file_obj[tile] = filemenu_maketile(obj, shape, 9, x, y, -100, -0x8000); \
	file_obj[tile]->o_f5 = (float)1/9; \
}
#define filemenu_initfile_sel(i) \
{ \
	if (ISTRUE(save_file_isactive(i))) \
	{ \
		file_obj[F_FILE+i] = filemenu_maketile( \
			object, S_FILE_MARIO_S, 1, \
			(i & 1) ? +1500 : -6400, \
			(i & 2) ?     0 : +2800, \
			0, 0 \
		); \
	} \
	else \
	{ \
		file_obj[F_FILE+i] = filemenu_maketile( \
			object, S_FILE_NEW_S, 1, \
			(i & 1) ? +1500 : -6400, \
			(i & 2) ?     0 : +2800, \
			0, 0 \
		); \
	} \
	file_obj[F_FILE+i]->o_f5 = (float)1/1; \
}
#define filemenu_initfile_sub(obj, tile, i) \
{ \
	if (ISTRUE(save_file_isactive(i))) \
	{ \
		file_obj[tile+i] = filemenu_maketile( \
			obj, S_FILE_MARIO, 9, \
			(i & 1) ? -1500 : +6400, \
			(i & 2) ?     0 : +2800, \
			-100, -0x8000 \
		); \
	} \
	else \
	{ \
		file_obj[tile+i] = filemenu_maketile( \
			obj, S_FILE_NEW, 9, \
			(i & 1) ? -1500 : +6400, \
			(i & 2) ?     0 : +2800, \
			-100, -0x8000 \
		); \
	} \
	file_obj[tile+i]->o_f5 = (float)1/9; \
}

static void filemenu_scorefile(OBJECT *obj, CHAR back)
{
	if (obj->o_v0 == TILE_OPENED)
	{
		if (cursor_flag == 2)
		{
			Na_FixSePlay(NA_SE7_07);
			obj->o_v0 = TILE_CLOSE;
		}
	}
	if (obj->o_v0 == TILE_CLOSED)
	{
		file_state = back;
		if (file_mode == 2) file_mode = 1;
	}
}

static void filemenu_scoreinit(OBJECT *obj)
{
	filemenu_initfile_sub(obj, FS_FILE, 0);
	filemenu_initfile_sub(obj, FS_FILE, 1);
	filemenu_initfile_sub(obj, FS_FILE, 2);
	filemenu_initfile_sub(obj, FS_FILE, 3);
	filemenu_inittile_sub(obj, FS_SELECT, S_TILE_YELLOW, +6400, -3500);
	filemenu_inittile_sub(obj, FS_COPY,   S_TILE_BLUE,       0, -3500);
	filemenu_inittile_sub(obj, FS_ERASE,  S_TILE_RED,    -6400, -3500);
}

static void filemenu_scoreproc(OBJECT *obj)
{
	int i;
	if (obj->o_v0 == TILE_OPENED)
	{
		for (i = FS_MIN; i < FS_MAX; i++)
		{
			SHORT x = file_obj[i]->o_pos_x;
			SHORT y = file_obj[i]->o_pos_y;
			if (ISTRUE(file_isclick(x, y, 22)) && click_timer > 30)
			{
				if (i == FS_SELECT || i == FS_COPY || i == FS_ERASE)
				{
					Na_FixSePlay(NA_SE7_11);
					file_obj[i]->o_v0 = TILE_CLICK;
					file_state = i;
				}
				else if (click_timer > 30)
				{
					if (ISTRUE(save_file_isactive(i-FS_FILE)))
					{
						Na_FixSePlay(NA_SE7_06);
						file_obj[i]->o_v0 = TILE_OPEN;
						file_state = i;
					}
					else
					{
						Na_FixSePlay(NA_SE7_0E);
						file_obj[i]->o_v0 = TILE_CLICK;
						if (click_timer > 30)
						{
							click_flag = TRUE;
							click_timer = 0;
						}
					}
				}
				file_mode = 2;
				break;
			}
		}
	}
}

static void filemenu_copyinit(OBJECT *obj)
{
	filemenu_initfile_sub(obj, FC_FILE, 0);
	filemenu_initfile_sub(obj, FC_FILE, 1);
	filemenu_initfile_sub(obj, FC_FILE, 2);
	filemenu_initfile_sub(obj, FC_FILE, 3);
	filemenu_inittile_sub(obj, FC_SELECT, S_TILE_YELLOW, +6400, -3500);
	filemenu_inittile_sub(obj, FC_SCORE,  S_TILE_GREEN,      0, -3500);
	filemenu_inittile_sub(obj, FC_ERASE,  S_TILE_RED,    -6400, -3500);
}

static void filemenu_copyfile(OBJECT *obj, int tile)
{
	switch (obj->o_v6)
	{
	case 0:
		if (ISTRUE(file_full)) return;
		if (ISTRUE(save_file_isactive(tile-FC_FILE)))
		{
			Na_FixSePlay(NA_SE7_11);
			file_obj[tile]->o_v0 = TILE_SELECT;
			click_file = tile-FC_FILE;
			obj->o_v6 = 1;
			click_flag = TRUE;
			click_timer = 0;
		}
		else
		{
			Na_FixSePlay(NA_SE7_0E);
			file_obj[tile]->o_v0 = TILE_CLICK;
			if (click_timer > 20)
			{
				click_flag = TRUE;
				click_timer = 0;
			}
		}
		break;
	case 1:
		file_obj[tile]->o_v0 = TILE_CLICK;
		if (ISFALSE(save_file_isactive(tile-FC_FILE)))
		{
			Na_FixSePlay(NA_SE7_1E);
			obj->o_v6 = 2;
			click_flag = TRUE;
			click_timer = 0;
			save_file_copy(click_file, tile-FC_FILE);
			file_obj[tile]->s.shape = shape_table[S_FILE_MARIO_S];
			file_obj[F_FILE + tile-FC_FILE]->s.shape =
				shape_table[S_FILE_MARIO_S];
		}
		else
		{
			if (tile == FC_FILE+click_file)
			{
				Na_FixSePlay(NA_SE7_0E);
				file_obj[FC_FILE+click_file]->o_v0 = TILE_DESELECT;
				obj->o_v6 = 0;
				click_flag = TRUE;
				return;
			}
			if (click_timer > 20)
			{
				click_flag = TRUE;
				click_timer = 0;
			}
		}
		break;
	}
}

static void filemenu_copyproc(OBJECT *obj)
{
	int i;
	if (obj->o_v0 == TILE_OPENED)
	{
		for (i = FC_MIN; i < FC_MAX; i++)
		{
			short x = file_obj[i]->o_pos_x;
			short y = file_obj[i]->o_pos_y;
			if (ISTRUE(file_isclick(x, y, 22)))
			{
				if (i == FC_SELECT || i == FC_SCORE || i == FC_ERASE)
				{
					if (obj->o_v6 == 0)
					{
						Na_FixSePlay(NA_SE7_11);
						file_obj[i]->o_v0 = TILE_CLICK;
						file_state = i;
					}
				}
				else
				{
					if (file_obj[i]->o_v0 == TILE_CLOSED && click_timer > 30)
					{
						filemenu_copyfile(obj, i);
					}
				}
				file_mode = 2;
				break;
			}
		}
		if (obj->o_v6 == 2 && click_timer > 30)
		{
			obj->o_v6 = 0;
			file_obj[FC_FILE+click_file]->o_v0 = TILE_DESELECT;
		}
	}
}

static void filemenu_eraseinit(OBJECT *obj)
{
	filemenu_initfile_sub(obj, FE_FILE, 0);
	filemenu_initfile_sub(obj, FE_FILE, 1);
	filemenu_initfile_sub(obj, FE_FILE, 2);
	filemenu_initfile_sub(obj, FE_FILE, 3);
	filemenu_inittile_sub(obj, FE_SELECT, S_TILE_YELLOW, +6400, -3500);
	filemenu_inittile_sub(obj, FE_SCORE,  S_TILE_GREEN,      0, -3500);
	filemenu_inittile_sub(obj, FE_COPY,   S_TILE_BLUE,   -6400, -3500);
}

static void filemenu_erasefile(OBJECT *obj, int tile)
{
	switch (obj->o_v6)
	{
	case 0:
		if (ISTRUE(save_file_isactive(tile-FE_FILE)))
		{
			Na_FixSePlay(NA_SE7_11);
			file_obj[tile]->o_v0 = TILE_SELECT;
			click_file = tile-FE_FILE;
			obj->o_v6 = 1;
			click_flag = TRUE;
			click_timer = 0;
		}
		else
		{
			Na_FixSePlay(NA_SE7_0E);
			file_obj[tile]->o_v0 = TILE_CLICK;
			if (click_timer > 20)
			{
				click_flag = TRUE;
				click_timer = 0;
			}
		}
		break;
	case 1:
		if (tile == FE_FILE+click_file)
		{
			Na_FixSePlay(NA_SE7_11);
			file_obj[FE_FILE+click_file]->o_v0 = TILE_DESELECT;
			obj->o_v6 = 0;
			click_flag = TRUE;
		}
		break;
	}
}

static void filemenu_eraseproc(OBJECT *obj)
{
	int i;
	if (obj->o_v0 == TILE_OPENED)
	{
		for (i = FE_MIN; i < FE_MAX; i++)
		{
			SHORT x = file_obj[i]->o_pos_x;
			SHORT y = file_obj[i]->o_pos_y;
			if (ISTRUE(file_isclick(x, y, 22)))
			{
				if (i == FE_SELECT || i == FE_SCORE || i == FE_COPY)
				{
					if (obj->o_v6 == 0)
					{
						Na_FixSePlay(NA_SE7_11);
						file_obj[i]->o_v0 = TILE_CLICK;
						file_state = i;
					}
				}
				else
				{
					if (click_timer > 30) filemenu_erasefile(obj, i);
				}
				file_mode = 2;
				break;
			}
		}
		if (obj->o_v6 == 2 && click_timer > 30)
		{
			obj->o_v6 = 0;
			file_obj[FE_FILE+click_file]->o_v0 = TILE_DESELECT;
		}
	}
}

static void filemenu_optioninit(OBJECT *obj)
{
	filemenu_inittile_sub(obj, FO_STEREO, S_TILE_BUTTON, +4800, 0);
	filemenu_inittile_sub(obj, FO_MONO,   S_TILE_BUTTON,     0, 0);
	filemenu_inittile_sub(obj, FO_PHONE,  S_TILE_BUTTON, -4800, 0);
	file_obj[FO_SOUND+sound_flag]->o_v0 = TILE_SELECT;
}

static void filemenu_optionproc(OBJECT *obj)
{
	int i;
	if (obj->o_v0 == TILE_OPENED)
	{
		for (i = FO_MIN; i < FO_MAX; i++)
		{
			SHORT x = file_obj[i]->o_pos_x;
			SHORT y = file_obj[i]->o_pos_y;
			if (ISTRUE(file_isclick(x, y, 22)))
			{
				if (i == FO_STEREO || i == FO_MONO || i == FO_PHONE)
				{
					if (obj->o_v6 == 0)
					{
						Na_FixSePlay(NA_SE7_11);
						file_obj[i]->o_v0 = TILE_CLICK;
						file_state = i;
						sound_flag = i-FO_SOUND;
						save_set_sound(sound_flag);
					}
				}
				file_mode = 2;
				break;
			}
		}
	}
}

static void filemenu_openfile(OBJECT *obj, int file)
{
	if (obj->o_v0 == TILE_OPENED) file_result = file;
}

static void filemenu_openselect(SHORT tile, OBJECT *obj)
{
	int i;
	if (obj->o_v0 == TILE_CLOSED && file_obj[tile]->o_v0 == TILE_OPENED)
	{
		Na_FixSePlay(NA_SE7_07);
		file_obj[tile]->o_v0 = TILE_CLOSE;
		file_mode = 1;
	}
	if (file_obj[tile]->o_v0 == TILE_CLOSED)
	{
		file_state = -1;
		if (tile == F_SCORE)
		{
			for (i = FS_MIN; i < FS_MAX; i++) obj_destroy(file_obj[i]);
		}
		if (tile == F_COPY)
		{
			for (i = FC_MIN; i < FC_MAX; i++) obj_destroy(file_obj[i]);
		}
		if (tile == F_ERASE)
		{
			for (i = FE_MIN; i < FE_MAX; i++) obj_destroy(file_obj[i]);
		}
		if (tile == F_OPTION)
		{
			for (i = FO_MIN; i < FO_MAX; i++) obj_destroy(file_obj[i]);
		}
	}
}

static void filemenu_openscore(SHORT tile, OBJECT *obj)
{
	int i;
	if (obj->o_v0 == TILE_CLOSED && file_obj[tile]->o_v0 == TILE_OPENED)
	{
		Na_FixSePlay(NA_SE7_07);
		file_obj[tile]->o_v0 = TILE_CLOSE;
		file_mode = 1;
	}
	if (file_obj[tile]->o_v0 == TILE_CLOSED)
	{
		if (tile == F_SCORE)
		{
			for (i = FS_MIN; i < FS_MAX; i++) obj_destroy(file_obj[i]);
		}
		if (tile == F_COPY)
		{
			for (i = FC_MIN; i < FC_MAX; i++) obj_destroy(file_obj[i]);
		}
		if (tile == F_ERASE)
		{
			for (i = FE_MIN; i < FE_MAX; i++) obj_destroy(file_obj[i]);
		}
		file_state = F_SCORE;
		Na_FixSePlay(NA_SE7_06);
		file_obj[F_SCORE]->o_v0 = TILE_OPEN;
		filemenu_scoreinit(file_obj[F_SCORE]);
	}
}

static void filemenu_opencopy(SHORT tile, OBJECT *obj)
{
	int i;
	if (obj->o_v0 == TILE_CLOSED && file_obj[tile]->o_v0 == TILE_OPENED)
	{
		Na_FixSePlay(NA_SE7_07);
		file_obj[tile]->o_v0 = TILE_CLOSE;
		file_mode = 1;
	}
	if (file_obj[tile]->o_v0 == TILE_CLOSED)
	{
		if (tile == F_SCORE)
		{
			for (i = FS_MIN; i < FS_MAX; i++) obj_destroy(file_obj[i]);
		}
		if (tile == F_COPY)
		{
			for (i = FC_MIN; i < FC_MAX; i++) obj_destroy(file_obj[i]);
		}
		if (tile == F_ERASE)
		{
			for (i = FE_MIN; i < FE_MAX; i++) obj_destroy(file_obj[i]);
		}
		file_state = F_COPY;
		Na_FixSePlay(NA_SE7_06);
		file_obj[F_COPY]->o_v0 = TILE_OPEN;
		filemenu_copyinit(file_obj[F_COPY]);
	}
}

static void filemenu_openerase(SHORT tile, OBJECT *obj)
{
	int i;
	if (obj->o_v0 == TILE_CLOSED && file_obj[tile]->o_v0 == TILE_OPENED)
	{
		Na_FixSePlay(NA_SE7_07);
		file_obj[tile]->o_v0 = TILE_CLOSE;
		file_mode = 1;
	}
	if (file_obj[tile]->o_v0 == TILE_CLOSED)
	{
		if (tile == F_SCORE)
		{
			for (i = FS_MIN; i < FS_MAX; i++) obj_destroy(file_obj[i]);
		}
		if (tile == F_COPY)
		{
			for (i = FC_MIN; i < FC_MAX; i++) obj_destroy(file_obj[i]);
		}
		if (tile == F_ERASE)
		{
			for (i = FE_MIN; i < FE_MAX; i++) obj_destroy(file_obj[i]);
		}
		file_state = F_ERASE;
		Na_FixSePlay(NA_SE7_06);
		file_obj[F_ERASE]->o_v0 = TILE_OPEN;
		filemenu_eraseinit(file_obj[F_ERASE]);
	}
}

void filemenu_init(void)
{
	filemenu_initfile_sel(0);
	filemenu_initfile_sel(1);
	filemenu_initfile_sel(2);
	filemenu_initfile_sel(3);
	filemenu_inittile_sel(F_SCORE,  S_TILE_GREEN,  -6400, -3500);
	filemenu_inittile_sel(F_COPY,   S_TILE_BLUE,   -2134, -3500);
	filemenu_inittile_sel(F_ERASE,  S_TILE_RED,    +2134, -3500);
	filemenu_inittile_sel(F_OPTION, S_TILE_PURPLE, +6400, -3500);
	file_alpha = 0;
}

static void filemenu_select(void)
{
	CHAR i;
	if (ISTRUE(file_isclick(
		file_obj[F_OPTION]->o_pos_x, file_obj[F_OPTION]->o_pos_y, 200
	)))
	{
		file_obj[F_OPTION]->o_v0 = TILE_OPEN;
		file_state = F_OPTION;
	}
	else
	{
		for (i = F_FILE; i < F_FILE+7; i++)
		{
			SHORT x = file_obj[i]->o_pos_x;
			SHORT y = file_obj[i]->o_pos_y;
			if (ISTRUE(file_isclick(x, y, 200)))
			{
				file_obj[i]->o_v0 = TILE_OPEN;
				file_state = i;
				break;
			}
		}
	}
	switch (file_state)
	{
	case F_FILE_A: Na_FixSePlay(NA_SE7_23); break;
	case F_FILE_B: Na_FixSePlay(NA_SE7_23); break;
	case F_FILE_C: Na_FixSePlay(NA_SE7_23); break;
	case F_FILE_D: Na_FixSePlay(NA_SE7_23); break;
	case F_SCORE:
		Na_FixSePlay(NA_SE7_06);
		filemenu_scoreinit(file_obj[F_SCORE]);
		break;
	case F_COPY:
		Na_FixSePlay(NA_SE7_06);
		filemenu_copyinit(file_obj[F_COPY]);
		break;
	case F_ERASE:
		Na_FixSePlay(NA_SE7_06);
		filemenu_eraseinit(file_obj[F_ERASE]);
		break;
	case F_OPTION:
		Na_FixSePlay(NA_SE7_06);
		filemenu_optioninit(file_obj[F_OPTION]);
		break;
	}
}

void filemenu_proc(void)
{
	switch (file_state)
	{
	case F_SELECT:  filemenu_select(); break;
	case F_FILE_A:  filemenu_openfile(file_obj[F_FILE_A], 1); break;
	case F_FILE_B:  filemenu_openfile(file_obj[F_FILE_B], 2); break;
	case F_FILE_C:  filemenu_openfile(file_obj[F_FILE_C], 3); break;
	case F_FILE_D:  filemenu_openfile(file_obj[F_FILE_D], 4); break;
	case F_SCORE:   filemenu_scoreproc(file_obj[F_SCORE]); break;
	case F_COPY:    filemenu_copyproc (file_obj[F_COPY]);  break;
	case F_ERASE:   filemenu_eraseproc(file_obj[F_ERASE]); break;
	case FS_FILE_A: filemenu_scorefile(file_obj[FS_FILE_A], F_SCORE); break;
	case FS_FILE_B: filemenu_scorefile(file_obj[FS_FILE_B], F_SCORE); break;
	case FS_FILE_C: filemenu_scorefile(file_obj[FS_FILE_C], F_SCORE); break;
	case FS_FILE_D: filemenu_scorefile(file_obj[FS_FILE_D], F_SCORE); break;
	case FS_SELECT: filemenu_openselect(F_SCORE, file_obj[FS_SELECT]); break;
	case FS_COPY:   filemenu_opencopy  (F_SCORE, file_obj[FS_COPY]);   break;
	case FS_ERASE:  filemenu_openerase (F_SCORE, file_obj[FS_ERASE]);  break;
	case FC_FILE_A: break;
	case FC_FILE_B: break;
	case FC_FILE_C: break;
	case FC_FILE_D: break;
	case FC_SELECT: filemenu_openselect(F_COPY, file_obj[FC_SELECT]); break;
	case FC_SCORE:  filemenu_openscore (F_COPY, file_obj[FC_SCORE]);  break;
	case FC_ERASE:  filemenu_openerase (F_COPY, file_obj[FC_ERASE]);  break;
	case FE_FILE_A: break;
	case FE_FILE_B: break;
	case FE_FILE_C: break;
	case FE_FILE_D: break;
	case FE_SELECT: filemenu_openselect(F_ERASE, file_obj[FE_SELECT]); break;
	case FE_SCORE:  filemenu_openscore (F_ERASE, file_obj[FE_SCORE]);  break;
	case FE_COPY:   filemenu_opencopy  (F_ERASE, file_obj[FE_COPY]);   break;
	case F_OPTION:  filemenu_optionproc(file_obj[F_OPTION]); break;
	case FO_STEREO: filemenu_openselect(F_OPTION, file_obj[FO_STEREO]); break;
	case FO_MONO:   filemenu_openselect(F_OPTION, file_obj[FO_MONO]);   break;
	case FO_PHONE:  filemenu_openselect(F_OPTION, file_obj[FO_PHONE]);  break;
	}
	click_pos[0] = -10000;
	click_pos[1] = -10000;
}

static unsigned char str_return[] = {STR_RETURN};
static unsigned char str_check_score[] = {STR_CHECK_SCORE};
static unsigned char str_copy_file[] = {STR_COPY_FILE};
static unsigned char str_erase_file[] = {STR_ERASE_FILE};
static unsigned char str_sound[][8] =
{
	{STR_STEREO},
	{STR_MONO},
	{STR_HEADSET},
};
static unsigned char str_mario_a[] = {STR_MARIO_A};
static unsigned char str_mario_b[] = {STR_MARIO_B};
static unsigned char str_mario_c[] = {STR_MARIO_C};
static unsigned char str_mario_d[] = {STR_MARIO_D};
static unsigned char str_new[] = {STR_NEW};

static void file_proc_click(void)
{
	if (
		file_state == FS_FILE_A ||
		file_state == FS_FILE_B ||
		file_state == FS_FILE_C ||
		file_state == FS_FILE_D
	) 
	{
		if (contp->down & (B_BUTTON|START_BUTTON))
		{
			click_pos[0] = cursor_pos[0];
			click_pos[1] = cursor_pos[1];
			cursor_flag = 1;
		}
		else if (contp->down & A_BUTTON)
		{
			score_flag = 1 - score_flag;
			Na_FixSePlay(NA_SE7_11);
		}
	}
	else
	{
		if (contp->down & (A_BUTTON|B_BUTTON|START_BUTTON))
		{
			click_pos[0] = cursor_pos[0];
			click_pos[1] = cursor_pos[1];
			cursor_flag = 1;
		}
	}
}

static void file_proc_cursor(void)
{
	SHORT x = contp->stick_x;
	SHORT y = contp->stick_y;
	if (y > -2 && y < +2) y = 0;
	if (x > -2 && x < +2) x = 0;
	cursor_pos[0] += x/8;
	cursor_pos[1] += y/8;
	if (cursor_pos[0] > +132) cursor_pos[0] = +132;
	if (cursor_pos[0] < -132) cursor_pos[0] = -132;
	if (cursor_pos[1] >  +90) cursor_pos[1] =  +90;
	if (cursor_pos[1] <  -90) cursor_pos[1] =  -90;
	if (cursor_flag == 0) file_proc_click();
}

static void file_draw_cursor(void)
{
	file_proc_cursor();
#ifdef sgi
	gfx_translate(GFX_PUSH, cursor_pos[0]+160-5.0, cursor_pos[1]+120-25.0, 0);
#else
	gfx_translate(GFX_PUSH, cursor_pos[0]+160-5, cursor_pos[1]+120-25, 0);
#endif
	if (cursor_flag == 0) gSPDisplayList(glistp++, gfx_select_cursor_0);
	if (cursor_flag != 0) gSPDisplayList(glistp++, gfx_select_cursor_1);
	gSPPopMatrix(glistp++, G_MTX_MODELVIEW);
	if (cursor_flag != 0)
	{
		cursor_flag++;
		if (cursor_flag == 5) cursor_flag = 0;
	}
}

static void file_print_16(CHAR font, SHORT x, SHORT y, const unsigned char *str)
{
	gSPDisplayList(glistp++, gfx_print_1cyc_start);
	gDPSetEnvColor(glistp++, 0xFF, 0xFF, 0xFF, file_alpha-click_alpha);
	print_16(font, x, y, str);
	gSPDisplayList(glistp++, gfx_print_1cyc_end);
}

static void file_print_lg(SHORT x, SHORT y, const unsigned char *str)
{
	gSPDisplayList(glistp++, gfx_lgfont_start);
	gDPSetEnvColor(glistp++, 0xFF, 0xFF, 0xFF, file_alpha-click_alpha);
	print_lg(x, y, str);
	gSPDisplayList(glistp++, gfx_lgfont_end);
}

static int click_fade(void)
{
	if (ISTRUE(click_flag))
	{
		click_alpha += 50;
		if (click_alpha == 250)
		{
			click_flag = FALSE;
			return TRUE;
		}
	}
	else
	{
		if (click_alpha > 0) click_alpha -= 50;
	}
	return FALSE;
}

static void file_draw_select_file(CHAR file, SHORT x, SHORT y)
{
	static unsigned char str_star[] = {CH16_STAR, CH_NUL};
	static unsigned char str_cross[] = {CH16_CROSS, CH_NUL};
	unsigned char buf[4];
	CHAR offset = 0;
	if (ISTRUE(save_file_isactive(file)))
	{
		SHORT total = save_file_star_total(file);
		print_16(FONT_GLB, x, y, str_star);
		if (total < 100)
		{
			print_16(FONT_GLB, x+16, y, str_cross);
			offset = 16;
		}
		itostr(total, buf);
		print_16(FONT_GLB, x+16+offset, y, buf);
	}
	else
	{
		print_16(FONT_GLB, x, y, str_new);
	}
}

static void file_draw_select(void)
{
	static unsigned char str_select_file[] = {STR_SELECT_FILE};
	static unsigned char str_score[] = {STR_SCORE};
	static unsigned char str_copy[] = {STR_COPY};
	static unsigned char str_erase[] = {STR_ERASE};
#ifdef sgi
	static short sound_x;
#else
	SHORT sound_x;
#endif
	gSPDisplayList(glistp++, gfx_print_1cyc_start);
	gDPSetEnvColor(glistp++, 0xFF, 0xFF, 0xFF, file_alpha);
	print_16(FONT_GLB, 93, 35, str_select_file);
	file_draw_select_file(0,  92,  78);
	file_draw_select_file(1, 209,  78);
	file_draw_select_file(2,  92, 118);
	file_draw_select_file(3, 209, 118);
	gSPDisplayList(glistp++, gfx_print_1cyc_end);
	gSPDisplayList(glistp++, gfx_lgfont_start);
	gDPSetEnvColor(glistp++, 0xFF, 0xFF, 0xFF, file_alpha);
	print_lg( 52, 39, str_score);
	print_lg(117, 39, str_copy);
	print_lg(177, 39, str_erase);
	sound_x = str_center_x(254, str_sound[sound_flag], 10);
	print_lg(sound_x, 39, str_sound[sound_flag]);
	gSPDisplayList(glistp++, gfx_lgfont_end);
	gSPDisplayList(glistp++, gfx_smfont_start);
	gDPSetEnvColor(glistp++, 0xFF, 0xFF, 0xFF, file_alpha);
	print_sm( 92,  65, str_mario_a);
	print_sm(207,  65, str_mario_b);
	print_sm( 92, 105, str_mario_c);
	print_sm(207, 105, str_mario_d);
	gSPDisplayList(glistp++, gfx_smfont_end);
}

static void file_draw_score_msg(CHAR msg)
{
	static unsigned char str_check_file[] = {STR_CHECK_FILE};
	static unsigned char str_no_saved_data_exists[] =
		{STR_NO_SAVED_DATA_EXISTS};
	switch (msg)
	{
	case 0: file_print_16(FONT_GLB, 95, 35, str_check_file); break;
	case 1: file_print_lg(99, 190, str_no_saved_data_exists); break;
	}
}

static void file_draw_score(void)
{
	if (click_timer == 20) click_flag = TRUE;
	if (ISTRUE(click_fade()))
	{
		if (click_msg == 0) click_msg = 1;
		else                click_msg = 0;
	}
	file_draw_score_msg(click_msg);
	gSPDisplayList(glistp++, gfx_print_1cyc_start);
	gDPSetEnvColor(glistp++, 0xFF, 0xFF, 0xFF, file_alpha);
	file_draw_select_file(0,  90,  76);
	file_draw_select_file(1, 211,  76);
	file_draw_select_file(2,  90, 119);
	file_draw_select_file(3, 211, 119);
	gSPDisplayList(glistp++, gfx_print_1cyc_end);
	gSPDisplayList(glistp++, gfx_lgfont_start);
	gDPSetEnvColor(glistp++, 0xFF, 0xFF, 0xFF, file_alpha);
	print_lg( 44, 35, str_return);
	print_lg(135, 35, str_copy_file);
	print_lg(231, 35, str_erase_file);
	gSPDisplayList(glistp++, gfx_lgfont_end);
	gSPDisplayList(glistp++, gfx_smfont_start);
	gDPSetEnvColor(glistp++, 0xFF, 0xFF, 0xFF, file_alpha);
	print_sm( 89,  62, str_mario_a);
	print_sm(211,  62, str_mario_b);
	print_sm( 89, 105, str_mario_c);
	print_sm(211, 105, str_mario_d);
	gSPDisplayList(glistp++, gfx_smfont_end);
}

static void file_draw_copy_msg(CHAR msg)
{
	static unsigned char str_copy_file[] = {STR_COPY_FILE};
	static unsigned char str_copy_it_to_where[] = {STR_COPY_IT_TO_WHERE};
	static unsigned char str_no_saved_data_exists[] =
		{STR_NO_SAVED_DATA_EXISTS};
	static unsigned char str_copying_completed[] = {STR_COPYING_COMPLETED};
	static unsigned char str_saved_data_exists[] = {STR_SAVED_DATA_EXISTS};
	static unsigned char str_no_empty_file[] = {STR_NO_EMPTY_FILE};
	switch (msg)
	{
	case 0:
		if (ISTRUE(file_full))
		{
			file_print_lg(119, 190, str_no_empty_file);
		}
		else
		{
			file_print_16(FONT_GLB, 104, 35, str_copy_file);
		}
		break;
	case 1:
		file_print_lg(109, 190, str_copy_it_to_where);
		break;
	case 2:
		file_print_lg(101, 190, str_no_saved_data_exists);
		break;
	case 3:
		file_print_lg(110, 190, str_copying_completed);
		break;
	case 4:
		file_print_lg(110, 190, str_saved_data_exists);
		break;
	}
}

static void file_proc_copy(void)
{
	switch (file_obj[F_COPY]->o_v6)
	{
	case 0:
		if (click_timer == 20) click_flag = TRUE;
		if (ISTRUE(click_fade()))
		{
			if (click_msg == 0) click_msg = 2;
			else                click_msg = 0;
		}
		break;
	case 1:
		if (click_timer == 20 && click_msg == 4) click_flag = TRUE;
		if (ISTRUE(click_fade()))
		{
			if (click_msg != 1) click_msg = 1;
			else                click_msg = 4;
		}
		break;
	case 2:
		if (click_timer == 20) click_flag = TRUE;
		if (ISTRUE(click_fade()))
		{
			if (click_msg != 3) click_msg = 3;
			else                click_msg = 0;
		}
		break;
	}
}

static void file_draw_copy(void)
{
	file_proc_copy();
	file_draw_copy_msg(click_msg);
	gSPDisplayList(glistp++, gfx_print_1cyc_start);
	gDPSetEnvColor(glistp++, 0xFF, 0xFF, 0xFF, file_alpha);
	file_draw_select_file(0,  90,  76);
	file_draw_select_file(1, 211,  76);
	file_draw_select_file(2,  90, 119);
	file_draw_select_file(3, 211, 119);
	gSPDisplayList(glistp++, gfx_print_1cyc_end);
	gSPDisplayList(glistp++, gfx_lgfont_start);
	gDPSetEnvColor(glistp++, 0xFF, 0xFF, 0xFF, file_alpha);
	print_lg( 44, 35, str_return);
	print_lg(128, 35, str_check_score);
	print_lg(230, 35, str_erase_file);
	gSPDisplayList(glistp++, gfx_lgfont_end);
	gSPDisplayList(glistp++, gfx_smfont_start);
	gDPSetEnvColor(glistp++, 0xFF, 0xFF, 0xFF, file_alpha);
	print_sm( 89,  62, str_mario_a);
	print_sm(211,  62, str_mario_b);
	print_sm( 89, 105, str_mario_c);
	print_sm(211, 105, str_mario_d);
	gSPDisplayList(glistp++, gfx_smfont_end);
}

static void file_draw_erase_prompt(SHORT x, SHORT y)
{
	static unsigned char str_yes[] = {STR_YES};
	static unsigned char str_no[] = {STR_NO};
	SHORT theta = 0x1000*gfx_frame;
	SHORT posx = cursor_pos[0] + (x+70);
	SHORT posy = cursor_pos[1] + 120;
	if (posx < 169 && posx > 139 && posy < 210 && posy > 190)
	{
		blink[0] = 0xFF-50 + 50*SIN(theta);
		blink[1] = 150;
		erase_flag = 1;
	}
	else if (posx < 218 && posx > 188 && posy < 210 && posy > 190)
	{
		blink[0] = 150;
		blink[1] = 0xFF-50 + 50*SIN(theta);
		erase_flag = 2;
	}
	else
	{
		blink[0] = 150;
		blink[1] = 150;
		erase_flag = 0;
	}
	if (cursor_flag == 2)
	{
		if (erase_flag == 1)
		{
			Na_FixSePlay(NA_SE2_10);
			file_obj[F_ERASE]->o_v6 = 2;
			click_flag = TRUE;
			click_timer = 0;
			save_file_erase(click_file);
			file_obj[FE_FILE+click_file]->s.shape = shape_table[S_FILE_NEW_S];
			file_obj[F_FILE+click_file]->s.shape = shape_table[S_FILE_NEW_S];
			erase_flag = 0;
		}
		else if (erase_flag == 2)
		{
			Na_FixSePlay(NA_SE7_11);
			file_obj[FE_FILE+click_file]->o_v0 = TILE_DESELECT;
			file_obj[F_ERASE]->o_v6 = 0;
			click_flag = TRUE;
			click_timer = 0;
			erase_flag = 0;
		}
	}
	gSPDisplayList(glistp++, gfx_lgfont_start);
	gDPSetEnvColor(glistp++, blink[0], blink[0], blink[0], file_alpha);
	print_lg(x+56, y, str_yes);
	gDPSetEnvColor(glistp++, blink[1], blink[1], blink[1], file_alpha);
	print_lg(x+98, y, str_no);
	gSPDisplayList(glistp++, gfx_lgfont_end);
}

static void file_draw_erase_msg(CHAR msg)
{
	STATIC unsigned char str_erase_file[] = {STR_ERASE_FILE};
	STATIC unsigned char str_sure[] = {STR_SURE};
	STATIC unsigned char str_no_saved_data_exists[] =
		{STR_NO_SAVED_DATA_EXISTS};
	STATIC unsigned char str_mario_a_just_erased[] = {STR_MARIO_A_JUST_ERASED};
	STATIC unsigned char str_saved_data_exists[] = {STR_SAVED_DATA_EXISTS};
	switch (msg)
	{
	case 0:
		file_print_16(FONT_GLB, 98, 35, str_erase_file);
		break;
	case 1:
		file_print_lg(90, 190, str_sure);
		file_draw_erase_prompt(90, 190);
		break;
	case 2:
		file_print_lg(100, 190, str_no_saved_data_exists);
		break;
	case 3:
		str_mario_a_just_erased[6] = CH_A + click_file;
		file_print_lg(100, 190, str_mario_a_just_erased);
		break;
	case 4:
		file_print_lg(100, 190, str_saved_data_exists);
		break;
	}
}

static void file_proc_erase(void)
{
	switch (file_obj[F_ERASE]->o_v6)
	{
	case 0:
		if (click_timer == 20 && click_msg == 2) click_flag = TRUE;
		if (ISTRUE(click_fade()))
		{
			if (click_msg == 0) click_msg = 2;
			else                click_msg = 0;
		}
		break;
	case 1:
		if (ISTRUE(click_fade()))
		{
			if (click_msg != 1) click_msg = 1;
			cursor_pos[0] = 43;
			cursor_pos[1] = 80;
		}
		break;
	case 2:
		if (click_timer == 20) click_flag = TRUE;
		if (ISTRUE(click_fade()))
		{
			if (click_msg != 3) click_msg = 3;
			else                click_msg = 0;
		}
		break;
	}
}

static void file_draw_erase(void)
{
	file_proc_erase();
	file_draw_erase_msg(click_msg);
	gSPDisplayList(glistp++, gfx_print_1cyc_start);
	gDPSetEnvColor(glistp++, 0xFF, 0xFF, 0xFF, file_alpha);
	file_draw_select_file(0,  90,  76);
	file_draw_select_file(1, 211,  76);
	file_draw_select_file(2,  90, 119);
	file_draw_select_file(3, 211, 119);
	gSPDisplayList(glistp++, gfx_print_1cyc_end);
	gSPDisplayList(glistp++, gfx_lgfont_start);
	gDPSetEnvColor(glistp++, 0xFF, 0xFF, 0xFF, file_alpha);
	print_lg( 44, 35, str_return);
	print_lg(127, 35, str_check_score);
	print_lg(233, 35, str_copy_file);
	gSPDisplayList(glistp++, gfx_lgfont_end);
	gSPDisplayList(glistp++, gfx_smfont_start);
	gDPSetEnvColor(glistp++, 0xFF, 0xFF, 0xFF, file_alpha);
	print_sm( 89,  62, str_mario_a);
	print_sm(211,  62, str_mario_b);
	print_sm( 89, 105, str_mario_c);
	print_sm(211, 105, str_mario_d);
	gSPDisplayList(glistp++, gfx_smfont_end);
}

static void file_draw_option(void)
{
	int i;
	SHORT x;
	UNUSED u8 alpha;
	STATIC unsigned char str_sound_select[] = {STR_SOUND_SELECT};
	gSPDisplayList(glistp++, gfx_print_1cyc_start);
	gDPSetEnvColor(glistp++, 0xFF, 0xFF, 0xFF, file_alpha);
	print_16(FONT_GLB, 88, 35, str_sound_select);
	gSPDisplayList(glistp++, gfx_print_1cyc_end);
	gSPDisplayList(glistp++, gfx_lgfont_start);
	for (i = 0; i < 3; i++)
	{
		if (i == sound_flag)
		{
			gDPSetEnvColor(glistp++, 0xFF, 0xFF, 0xFF, file_alpha);
		}
		else
		{
			gDPSetEnvColor(glistp++, 0x00, 0x00, 0x00, file_alpha);
		}
		x = str_center_x(87 + 74*i, str_sound[i], 10);
		print_lg(x, 87, str_sound[i]);
	}
	gSPDisplayList(glistp++, gfx_lgfont_end);
}

static void file_draw_extra_star(CHAR file, SHORT x, SHORT y)
{
	unsigned char buf[20];
	static unsigned char str_star_x[] = {CH_STAR, CH_CROSS, CH_NUL};
	print_sm(x, y, str_star_x);
	itostr(save_file_star_extra(file), buf);
	print_sm(x+16, y, buf);
}

static void file_draw_course_score(CHAR file, SHORT course, SHORT x, SHORT y)
{
	unsigned char buf[20];
	UCHAR star = save_file_get_star(file, course);
	STATIC unsigned char str_coin_x[] = {CH_COIN, CH_CROSS, CH_NUL};
	STATIC unsigned char str_star[] = {CH_STAR, CH_NUL};
	STATIC unsigned char str_file[][8] =
	{
		{STR_FILE_NULL},
		{STR_FILE_A},
		{STR_FILE_B},
		{STR_FILE_C},
		{STR_FILE_D},
	};
	if (score_flag == 0)
	{
		print_sm(x+25, y, str_coin_x);
		itostr(save_file_get_coin(file, course), buf);
		print_sm(x+41, y, buf);
		if (star & 0100) print_sm(x+70, y, str_star);
	}
	else
	{
		print_sm(x+18, y, str_coin_x);
		itostr(save_hiscore_coin(course), buf);
		print_sm(x+34, y, buf);
		print_sm(x+60, y, str_file[save_hiscore_file(course)]);
	}
}

static void file_draw_course_star(CHAR file, SHORT course, SHORT x, SHORT y)
{
	SHORT i = 0;
	unsigned char buf[20];
	UCHAR star = save_file_get_star(file, course);
	CHAR count = save_file_star_count(file, course);
	if (star & 0100) count--;
	for (i = 0; i < count; i++) buf[i] = CH_STAR;
	buf[i] = CH_NUL;
	print_sm(x, y, buf);
}

#define file_print_course(coursetab, i) \
{ \
	print_sm(23+3*(i<9), 35+12*i, segment_to_virtual(coursetab[i])); \
	file_draw_course_star(file, i, 171, 35+12*i); \
	file_draw_course_score(file, i, 213, 35+12*i); \
}

static void file_draw_score_file(CHAR file)
{
	STATIC unsigned char str_mario[] = {STR_MARIO};
	STATIC unsigned char str_hi_score[] = {STR_HI_SCORE};
	STATIC unsigned char str_my_score[] = {STR_MY_SCORE};
	unsigned char str_number[] = {0, CH_NUL};
	unsigned char **coursetab = segment_to_virtual(course_name);
	str_number[0] = CH_A + file;
	gSPDisplayList(glistp++, gfx_print_1cyc_start);
	gDPSetEnvColor(glistp++, 0xFF, 0xFF, 0xFF, file_alpha);
	print_16(FONT_GLB, 25, 15, str_mario);
	print_16(FONT_GLB, 95, 15, str_number);
	file_draw_select_file(file, 124, 15);
	gSPDisplayList(glistp++, gfx_print_1cyc_end);
	gSPDisplayList(glistp++, gfx_smfont_start);
	gDPSetEnvColor(glistp++, 0xFF, 0xFF, 0xFF, file_alpha);
	file_print_course(coursetab, 0);
	file_print_course(coursetab, 1);
	file_print_course(coursetab, 2);
	file_print_course(coursetab, 3);
	file_print_course(coursetab, 4);
	file_print_course(coursetab, 5);
	file_print_course(coursetab, 6);
	file_print_course(coursetab, 7);
	file_print_course(coursetab, 8);
	file_print_course(coursetab, 9);
	file_print_course(coursetab, 10);
	file_print_course(coursetab, 11);
	file_print_course(coursetab, 12);
	file_print_course(coursetab, 13);
	file_print_course(coursetab, 14);
	print_sm(29, 215, segment_to_virtual(coursetab[25]));
	file_draw_extra_star(file, 171, 215);
	if (score_flag == 0)    print_sm(238, 24, str_my_score);
	else                    print_sm(231, 24, str_hi_score);
	gSPDisplayList(glistp++, gfx_smfont_end);
}

static void file_draw(void)
{
	UNUSED int i;
	gfx_screenproj();
	switch (file_state)
	{
	case F_SELECT:  file_draw_select(); break;
	case F_SCORE:   file_draw_score(); score_flag = 0; break;
	case F_COPY:    file_draw_copy();   break;
	case F_ERASE:   file_draw_erase();  break;
	case FS_FILE_A: file_draw_score_file(0);  break;
	case FS_FILE_B: file_draw_score_file(1);  break;
	case FS_FILE_C: file_draw_score_file(2);  break;
	case FS_FILE_D: file_draw_score_file(3);  break;
	case F_OPTION:  file_draw_option(); break;
	}
	if (
		ISTRUE(save_file_isactive(0)) &&
		ISTRUE(save_file_isactive(1)) &&
		ISTRUE(save_file_isactive(2)) &&
		ISTRUE(save_file_isactive(3))
	) file_full = TRUE;
	else file_full = FALSE;
	if (file_alpha < 250) file_alpha += 10;
	if (click_timer < 1000) click_timer++;
}

void *fileselect_draw(int code, UNUSED SHAPE *shape, UNUSED void *data)
{
	if (code == SC_DRAW)
	{
		file_draw();
		file_draw_cursor();
	}
	return NULL;
}

long fileselect_init(UNUSED SHORT code, UNUSED long status)
{
	file_state = -1;
	file_mode = 1;
	file_alpha = 0;
	switch (file_index)
	{
	case 1: cursor_pos[0] = -94; cursor_pos[1] =  46; break;
	case 2: cursor_pos[0] =  24; cursor_pos[1] =  46; break;
	case 3: cursor_pos[0] = -94; cursor_pos[1] =   5; break;
	case 4: cursor_pos[0] =  24; cursor_pos[1] =   5; break;
	}
	click_pos[0] = -10000;
	click_pos[1] = -10000;
	cursor_flag = 0;
	file_result = 0;
	click_file = -1;
	click_flag = FALSE;
	click_msg = 0;
	click_alpha = 0;
	click_timer = 0;
	erase_flag = 0;
	sound_flag = save_get_sound();
#ifndef sgi
	return 1;
#endif
}

long fileselect_proc(UNUSED SHORT code, UNUSED long status)
{
	scene_proc();
	return file_result;
}
