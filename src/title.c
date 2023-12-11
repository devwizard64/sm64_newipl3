#include <sm64.h>

static char str_stage[64][16] =
{
	"",
	"",
	"",
	"TERESA OBAKE",
	"YYAMA1 % YSLD1",
	"SELECT ROOM",
	"HORROR DUNGEON",
	"SABAKU % PYRMD",
	"BATTLE FIELD",
	"YUKIYAMA2",
	"POOL KAI",
	"WTDG % TINBOTU",
	"BIG WORLD",
	"CLOCK TOWER",
	"RAINBOW CRUISE",
	"MAIN MAP",
	"EXT1 YOKO SCRL",
	"EXT7 HORI MINI",
	"EXT2 TIKA LAVA",
	"EXT9 SUISOU",
	"EXT3 HEAVEN",
	"FIREB1 % INVLC",
	"WATER LAND",
	"MOUNTAIN",
	"ENDING",
	"URANIWA",
	"EXT4 MINI SLID",
	"IN THE FALL",
	"EXT6 MARIO FLY",
	"KUPPA1",
	"EXT8 BLUE SKY",
	"",
	"KUPPA2",
	"KUPPA3",
	"",
	"DONKEY % SLID2",
	"",
	"",
};

static int title_demo(int result)
{
	static u16 timer = 0;
	demop = NULL;
	if (result == 0)
	{
		if (cont1->held == 0 && cont1->d == 0)
		{
			if (++timer == 800)
			{
				bank_load(&demo_bank, demo_index);
				if (++demo_index == demo_bank.info->len) demo_index = 0;
				demop = (DEMO *)(demo_bank.buf+4);
				result = demo_bank.buf[0];
				file_index = 1;
				level_index = 1;
			}
		}
		else
		{
			timer = 0;
		}
	}
	return result;
}

static int title_debug(void)
{
	int flag = FALSE;
	if (cont1->down & A_BUTTON) stage_index +=  1, flag = TRUE;
	if (cont1->down & B_BUTTON) stage_index -=  1, flag = TRUE;
	if (cont1->down & U_JPAD)   stage_index -=  1, flag = TRUE;
	if (cont1->down & D_JPAD)   stage_index +=  1, flag = TRUE;
	if (cont1->down & L_JPAD)   stage_index -= 10, flag = TRUE;
	if (cont1->down & R_JPAD)   stage_index += 10, flag = TRUE;
	if (flag) Na_FixSePlay(NA_SE3_2B);
	if (stage_index > 38) stage_index =  1;
	if (stage_index <  1) stage_index = 38;
	file_index = 4;
	level_index = 6;
	dprintc(SCREEN_WD/2, 80, "SELECT STAGE");
	dprintc(SCREEN_WD/2, 30, "PRESS START BUTTON");
	dprintf(40, 60, "%2d", stage_index);
	dprint(80, 60, str_stage[stage_index-1]);
	if (cont1->down & START_BUTTON)
	{
		if (cont1->held == (Z_TRIG|START_BUTTON|L_CBUTTONS|R_CBUTTONS))
		{
			debug_stage = FALSE;
			return -1;
		}
		Na_FixSePlay(NA_SE7_1E);
		return stage_index;
	}
	return 0;
}

static int title_face(void)
{
	static short flag = TRUE;
	int result = 0;
	if (ISTRUE(flag))
	{
		if (gfx_frame <= 128)   Na_FixSePlay(NA_SE2_32);
		else                    Na_FixSePlay(NA_SE2_33);
		flag = FALSE;
	}
	scene_demo();
	if (cont1->down & START_BUTTON)
	{
		Na_FixSePlay(NA_SE7_1E);
		result = 100 + debug_stage;
		flag = TRUE;
	}
	return title_demo(result);
}

static int title_gameover(void)
{
	static short flag = TRUE;
	int result = 0;
	if (ISTRUE(flag))
	{
		Na_FixSePlay(NA_SE2_31);
		flag = FALSE;
	}
	scene_demo();
	if (cont1->down & START_BUTTON)
	{
		Na_FixSePlay(NA_SE7_1E);
		result = 100 + debug_stage;
		flag = TRUE;
	}
	return title_demo(result);
}

static int title_logo(void)
{
	bgm_play(NA_MODE_DEFAULT, NA_BGM_NULL, 0);
	Na_FixSePlay(NA_SE7_14);
	return 1;
}

long title_proc(SHORT code, UNUSED long status)
{
	long result;
	switch (code)
	{
	case 0: result = title_logo();      break;
	case 1: result = title_face();      break;
	case 2: result = title_gameover();  break;
	case 3: result = title_debug();     break;
#ifdef __GNUC__
	default: __builtin_unreachable();
#endif
	}
	return result;
}
