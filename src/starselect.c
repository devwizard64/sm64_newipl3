#include <sm64.h>

#ifdef ENGLISH
#include "en_us.h"
#endif

extern Gfx gfx_print_1cyc_start[];
extern Gfx gfx_print_1cyc_end[];
extern Gfx gfx_lgfont_start[];
extern Gfx gfx_lgfont_end[];
extern unsigned char *course_name[];
extern unsigned char *level_name[];

extern Gfx gfx_smfont_start[];
extern Gfx gfx_smfont_end[];
extern Gfx gfx_course[];

static OBJECT *star_obj[8];
static s8 star_result;
static u8 star_have;
static s8 star_count;
static u8 star_next;
static s8 star_option = 0;
static s8 star_cursor = 0;
static int star_timer = 0;

extern O_SCRIPT o_selectstar[];

void selectstar_proc(void)
{
	switch (object->o_v0)
	{
	case 0:
		object->o_f5 -= 0.1;
		if (object->o_f5 < 1.0) object->o_f5 = 1.0;
		object->o_shape_ang_y = 0;
		break;
	case 1:
		object->o_f5 += 0.1;
		if (object->o_f5 > 1.3) object->o_f5 = 1.3;
		object->o_shape_ang_y += 0x800;
		break;
	case 2:
		object->o_shape_ang_y += 0x800;
		break;
	}
	object_set_scale(object->o_f5);
	object->o_v1++;
}

static void starmenu_init_100(UCHAR star)
{
	if (star & 0100)
	{
		star_obj[6] = obj_make_abs(
			object, 0, S_POWERSTAR, o_selectstar, 370, 24, -300, 0, 0, 0
		);
		star_obj[6]->o_f5 = 0.8;
		star_obj[6]->o_v0 = 2;
	}
}

void starmenu_init(void)
{
	SHORT i = 0;
	int shape[10];
	UCHAR star = save_get_star(course_index-1);
	star_count = 0;
	while (i != star_have)
	{
		if (star & (1 << star_count))
		{
			shape[star_count] = S_POWERSTAR;
			i++;
		}
		else
		{
			shape[star_count] = S_SHADESTAR;
			if (star_next == 0)
			{
				star_next = star_count+1;
				star_cursor = star_count;
			}
		}
		star_count++;
	}
	if (star_count == star_have && star_count != 6)
	{
		shape[star_count] = S_SHADESTAR;
		star_next = star_count+1;
		star_cursor = star_count;
		star_count++;
	}
	if (star_have == 6) star_next = star_count;
	if (star_have == 0) star_next = 1;
	for (i = 0; i < star_count; i++)
	{
		star_obj[i] = obj_make_abs(
			object, 0, shape[i], o_selectstar,
			-75*(star_count-1) + 152*i, 248, -300, 0, 0, 0
		);
		star_obj[i]->o_f5 = 1;
	}
	starmenu_init_100(star);
}

void starmenu_proc(void)
{
	CHAR i;
	UCHAR count;
	UCHAR star = save_get_star(course_index-1);
	if (star_have != 6)
	{
		star_option = 0;
		cursor_proc(CURSOR_H, &star_cursor, 0, star_have);
		count = star_cursor;
		for (i = 0; i < star_count; i++)
		{
			if ((star & (1 << i)) || i == star_next-1)
			{
				if (count == 0)
				{
					star_option = i;
					break;
				}
				count--;
			}
		}
	}
	else
	{
		cursor_proc(CURSOR_H, &star_cursor, 0, star_count-1);
		star_option = star_cursor;
	}
	for (i = 0; i < star_count; i++)
	{
		if (star_option == i) star_obj[i]->o_v0 = 1;
		else                  star_obj[i]->o_v0 = 0;
	}
}

#define COURSE_X    (SCREEN_WD/2-2)
#define COURSE_Y    159

static void star_draw_course(void)
{
	unsigned char buf[4];
	gfx_translate(GFX_PUSH, COURSE_X, SCREEN_HT-COURSE_Y, 0);
	gSPDisplayList(glistp++, gfx_course);
	gSPPopMatrix(glistp++, G_MTX_MODELVIEW);
	gSPDisplayList(glistp++, gfx_print_1cyc_start);
	gDPSetEnvColor(glistp++, 0xFF, 0xFF, 0xFF, 0xFF);
	itostr(course_index, buf);
	if (course_index < 10) print_16(FONT_GLB, COURSE_X-12/2, COURSE_Y-1, buf);
	else                   print_16(FONT_GLB, COURSE_X-30/2, COURSE_Y-1, buf);
	gSPDisplayList(glistp++, gfx_print_1cyc_end);
}

static void star_draw(void)
{
	STATIC unsigned char str_myscore[] = {STR_MYSCORE};
	unsigned char str_number[] = {0, CH_NUL};
	unsigned char **coursetab = segment_to_virtual(course_name);
	unsigned char *coursename = segment_to_virtual(coursetab[course_index-1]);
	unsigned char **leveltab = segment_to_virtual(level_name);
	unsigned char *levelname;
	SHORT course_x, level_x;
	CHAR i;
	gfx_screenproj();
	gSPDisplayList(glistp++, gfx_print_1cyc_start);
	gDPSetEnvColor(glistp++, 0xFF, 0xFF, 0xFF, 0xFF);
	print_coin(1, file_index-1, course_index-1, SCREEN_WD/2-5, 106);
	gSPDisplayList(glistp++, gfx_print_1cyc_end);
	gSPDisplayList(glistp++, gfx_lgfont_start);
	gDPSetEnvColor(glistp++, 0x00, 0x00, 0x00, 0xFF);
	if (save_get_coin(course_index-1) != 0)
	{
		print_lg(SCREEN_WD/2-58, SCREEN_HT-122, str_myscore);
	}
	course_x = str_center_x(SCREEN_WD/2, &coursename[3], 10);
	print_lg(course_x, SCREEN_HT-16-(COURSE_Y+32), &coursename[3]);
	gSPDisplayList(glistp++, gfx_lgfont_end);
	star_draw_course();
	gSPDisplayList(glistp++, gfx_smfont_start);
	gDPSetEnvColor(glistp++, 0x00, 0x00, 0x00, 0xFF);
	if (star_count != 0)
	{
		levelname = segment_to_virtual(leveltab[
			6*(course_index-1) + star_option
		]);
		level_x = str_center_x(SCREEN_WD/2+3, levelname, 8);
		print_sm(level_x, 81, levelname);
	}
	for (i = 1; i <= star_count; i++)
	{
		str_number[0] = CH_0 + i;
		print_sm(SCREEN_WD/2-4 - 17*(star_count-1) + 34*(i-1), 38, str_number);
	}
	gSPDisplayList(glistp++, gfx_smfont_end);
}

long starselect_draw(SHORT code, UNUSED long status)
{
	if (code == SC_DRAW) star_draw();
	return 0;
}

long starselect_init(UNUSED SHORT code, UNUSED long status)
{
	UCHAR star = save_get_star(course_index-1);
	star_result = 0;
	star_next = 0;
	star_count = 0;
	star_timer = 0;
	star_have = save_star_count(course_index-1);
	if (star & 0100) star_have--;
#ifndef sgi
	return 1;
#endif
}

long starselect_proc(UNUSED SHORT code, UNUSED long status)
{
	if (star_timer > 10 && (
		(contp->down & A_BUTTON) ||
		(contp->down & START_BUTTON) ||
		(contp->down & B_BUTTON)
	))
	{
		Na_FixSePlay(NA_SE7_24);
		if (star_next >= star_option+1) star_result = star_option+1;
		else                            star_result = star_next;
		pausemenu_level = star_option+1;
	}
	scene_proc();
	star_timer++;
	return star_result;
}
