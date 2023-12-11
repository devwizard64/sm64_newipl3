#include <sm64/shplang.h>

#define SCRIPT

extern void *s_inside_mirror(int code, SHAPE *shape, void *data);
extern void *s_objshape_802D2360(int code, SHAPE *shape, void *data);

S_SCRIPT s_inside_208_209_213_214[] =
{
	sCull(400),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x0703BFA8),
	sEnd(),
	sExit(),
};

S_SCRIPT s_inside_53[] =
{
	sCull(600),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x0703BCB8),
	sEnd(),
	sExit(),
};

static S_SCRIPT s_inside1_1[] =
{
	sEmpty(),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x07028FD0),
		sGfx(LAYER_TEX_EDGE, (void *)0x07029578),
		sGfx(LAYER_OPA_SURF, (void *)0x0702A650),
		sGfx(LAYER_XLU_DECAL, (void *)0x0702AA10),
		sGfx(LAYER_TEX_EDGE, (void *)0x0702AB20),
		sCallback(0, s_objshape_802D2360),
	sEnd(),
	sReturn(),
};

static S_SCRIPT s_inside1_2[] =
{
	sEmpty(),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x0702E408),
	sEnd(),
	sReturn(),
};

static S_SCRIPT s_inside1_3[] =
{
	sEmpty(),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x0702FD30),
		sGfx(LAYER_OPA_SURF, (void *)0x07023DB0),
	sEnd(),
	sReturn(),
};

static S_SCRIPT s_inside1_4[] =
{
	sEmpty(),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x07031588),
		sGfx(LAYER_TEX_EDGE, (void *)0x07031720),
		sGfx(LAYER_TEX_EDGE, (void *)0x07031830),
	sEnd(),
	sReturn(),
};

static S_SCRIPT s_inside1_5[] =
{
	sEmpty(),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x07032FC0),
		sGfx(LAYER_TEX_EDGE, (void *)0x07033158),
		sCallback(0, s_wave_802D5D0C),
		sCallback(256, s_wave_802D5B98),
	sEnd(),
	sReturn(),
};

static S_SCRIPT s_inside1_6[] =
{
	sEmpty(),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x07034D88),
		sGfx(LAYER_TEX_EDGE, (void *)0x07035178),
		sGfx(LAYER_TEX_EDGE, (void *)0x07035288),
		sCallback(0, s_wave_802D5D0C),
		sCallback(258, s_wave_802D5B98),
	sEnd(),
	sReturn(),
};

static S_SCRIPT s_inside1_7[] =
{
	sEmpty(),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x07036D88),
		sGfx(LAYER_OPA_SURF, (void *)0x07037988),
		sGfx(LAYER_OPA_SURF, (void *)0x07037BF8),
		sGfx(LAYER_XLU_SURF, (void *)0x07037DE8),
		sGfx(LAYER_XLU_SURF, (void *)0x07038240),
		sGfx(LAYER_TEX_EDGE, (void *)0x07038350),
		sCallback(0, s_wave_802D5D0C),
		sCallback(259, s_wave_802D5B98),
	sEnd(),
	sReturn(),
};

static S_SCRIPT s_inside1_8[] =
{
	sEmpty(),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x0703A6C8),
		sGfx(LAYER_TEX_EDGE, (void *)0x0703A808),
		sGfx(LAYER_OPA_SURF, (void *)0x070234C0),
		sGfx(LAYER_OPA_SURF, (void *)0x07023520),
		sCallback(0, s_wave_802D5D0C),
		sCallback(257, s_wave_802D5B98),
	sEnd(),
	sReturn(),
};

static S_SCRIPT s_inside1_9[] =
{
	sEmpty(),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x07028FD0),
		sGfx(LAYER_TEX_EDGE, (void *)0x07029578),
		sGfx(LAYER_OPA_SURF, (void *)0x0702A650),
		sGfx(LAYER_XLU_DECAL, (void *)0x0702AA10),
		sGfx(LAYER_TEX_EDGE, (void *)0x0702AB20),
		sCallback(0, s_objshape_802D2360),
		sGfx(LAYER_OPA_SURF, (void *)0x0703BA08),
	sEnd(),
	sReturn(),
};

static S_SCRIPT s_inside1_10[] =
{
	sEmpty(),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x07028FD0),
		sGfx(LAYER_TEX_EDGE, (void *)0x07029578),
		sGfx(LAYER_OPA_SURF, (void *)0x0702A650),
		sGfx(LAYER_XLU_DECAL, (void *)0x0702AA10),
		sGfx(LAYER_TEX_EDGE, (void *)0x0702AB20),
		sCallback(0, s_objshape_802D2360),
		sGfx(LAYER_OPA_SURF, (void *)0x0702E408),
	sEnd(),
	sReturn(),
};

static S_SCRIPT s_inside1_11[] =
{
	sEmpty(),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x07028FD0),
		sGfx(LAYER_TEX_EDGE, (void *)0x07029578),
		sGfx(LAYER_OPA_SURF, (void *)0x0702A650),
		sGfx(LAYER_XLU_DECAL, (void *)0x0702AA10),
		sGfx(LAYER_TEX_EDGE, (void *)0x0702AB20),
		sCallback(0, s_objshape_802D2360),
		sGfx(LAYER_OPA_SURF, (void *)0x0702FD30),
		sGfx(LAYER_OPA_SURF, (void *)0x07023DB0),
	sEnd(),
	sReturn(),
};

static S_SCRIPT s_inside1_12[] =
{
	sEmpty(),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x07028FD0),
		sGfx(LAYER_TEX_EDGE, (void *)0x07029578),
		sGfx(LAYER_OPA_SURF, (void *)0x0702A650),
		sGfx(LAYER_XLU_DECAL, (void *)0x0702AA10),
		sGfx(LAYER_TEX_EDGE, (void *)0x0702AB20),
		sCallback(0, s_objshape_802D2360),
		sGfx(LAYER_OPA_SURF, (void *)0x07031588),
		sGfx(LAYER_TEX_EDGE, (void *)0x07031720),
		sGfx(LAYER_TEX_EDGE, (void *)0x07031830),
	sEnd(),
	sReturn(),
};

static S_SCRIPT s_inside1_13[] =
{
	sEmpty(),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x07028FD0),
		sGfx(LAYER_TEX_EDGE, (void *)0x07029578),
		sGfx(LAYER_OPA_SURF, (void *)0x0702A650),
		sGfx(LAYER_XLU_DECAL, (void *)0x0702AA10),
		sGfx(LAYER_TEX_EDGE, (void *)0x0702AB20),
		sCallback(0, s_objshape_802D2360),
		sGfx(LAYER_OPA_SURF, (void *)0x07032FC0),
		sGfx(LAYER_TEX_EDGE, (void *)0x07033158),
		sCallback(0, s_wave_802D5D0C),
		sCallback(256, s_wave_802D5B98),
	sEnd(),
	sReturn(),
};

static S_SCRIPT s_inside1_14[] =
{
	sEmpty(),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x07028FD0),
		sGfx(LAYER_TEX_EDGE, (void *)0x07029578),
		sGfx(LAYER_OPA_SURF, (void *)0x0702A650),
		sGfx(LAYER_XLU_DECAL, (void *)0x0702AA10),
		sGfx(LAYER_TEX_EDGE, (void *)0x0702AB20),
		sCallback(0, s_objshape_802D2360),
		sGfx(LAYER_OPA_SURF, (void *)0x07034D88),
		sGfx(LAYER_TEX_EDGE, (void *)0x07035178),
		sGfx(LAYER_TEX_EDGE, (void *)0x07035288),
		sCallback(0, s_wave_802D5D0C),
		sCallback(258, s_wave_802D5B98),
	sEnd(),
	sReturn(),
};

static S_SCRIPT s_inside1_15[] =
{
	sEmpty(),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x07028FD0),
		sGfx(LAYER_TEX_EDGE, (void *)0x07029578),
		sGfx(LAYER_OPA_SURF, (void *)0x0702A650),
		sGfx(LAYER_XLU_DECAL, (void *)0x0702AA10),
		sGfx(LAYER_TEX_EDGE, (void *)0x0702AB20),
		sCallback(0, s_objshape_802D2360),
		sGfx(LAYER_OPA_SURF, (void *)0x07036D88),
		sGfx(LAYER_OPA_SURF, (void *)0x07037988),
		sGfx(LAYER_OPA_SURF, (void *)0x07037BF8),
		sGfx(LAYER_XLU_SURF, (void *)0x07037DE8),
		sGfx(LAYER_XLU_SURF, (void *)0x07038240),
		sGfx(LAYER_TEX_EDGE, (void *)0x07038350),
		sCallback(0, s_wave_802D5D0C),
		sCallback(259, s_wave_802D5B98),
	sEnd(),
	sReturn(),
};

static S_SCRIPT s_inside1_16[] =
{
	sEmpty(),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x07028FD0),
		sGfx(LAYER_TEX_EDGE, (void *)0x07029578),
		sGfx(LAYER_OPA_SURF, (void *)0x0702A650),
		sGfx(LAYER_XLU_DECAL, (void *)0x0702AA10),
		sGfx(LAYER_TEX_EDGE, (void *)0x0702AB20),
		sCallback(0, s_objshape_802D2360),
		sGfx(LAYER_OPA_SURF, (void *)0x0703A6C8),
		sGfx(LAYER_TEX_EDGE, (void *)0x0703A808),
		sGfx(LAYER_OPA_SURF, (void *)0x070234C0),
		sGfx(LAYER_OPA_SURF, (void *)0x07023520),
		sCallback(0, s_wave_802D5D0C),
		sCallback(257, s_wave_802D5B98),
	sEnd(),
	sReturn(),
};

static S_SCRIPT s_inside1_17[] =
{
	sEmpty(),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x07028FD0),
		sGfx(LAYER_TEX_EDGE, (void *)0x07029578),
		sGfx(LAYER_OPA_SURF, (void *)0x0702A650),
		sGfx(LAYER_XLU_DECAL, (void *)0x0702AA10),
		sGfx(LAYER_TEX_EDGE, (void *)0x0702AB20),
		sCallback(0, s_objshape_802D2360),
		sGfx(LAYER_OPA_SURF, (void *)0x0703BA08),
	sEnd(),
	sReturn(),
};

S_SCRIPT s_inside1[] =
{
	sScene(160, 120, 160, 120, 10),
	sStart(),
		sLayer(FALSE),
		sStart(),
			sOrtho(100),
			sStart(),
				sBackground(GPACK_RGBA5551(0x00, 0x00, 0x00, 1), NULL),
			sEnd(),
		sEnd(),
		sLayer(TRUE),
		sStart(),
			sPerspective(64, 50, 7000, s_stage_perspective),
			sStart(),
				sCamera(13, 0, 2000, 6000, 0, 0, 0, s_stage_camera),
				sStart(),
					sSelect(17, s_objlib_8029DBD4),
					sStart(),
						sCall(s_inside1_1),
						sCall(s_inside1_2),
						sCall(s_inside1_3),
						sCall(s_inside1_4),
						sCall(s_inside1_5),
						sCall(s_inside1_6),
						sCall(s_inside1_7),
						sCall(s_inside1_8),
						sCall(s_inside1_9),
						sCall(s_inside1_10),
						sCall(s_inside1_11),
						sCall(s_inside1_12),
						sCall(s_inside1_13),
						sCall(s_inside1_14),
						sCall(s_inside1_15),
						sCall(s_inside1_16),
						sCall(s_inside1_17),
					sEnd(),
					sObject(),
					sCallback(WEATHER_NULL, s_stage_weather),
				sEnd(),
			sEnd(),
		sEnd(),
	sEnd(),
	sExit(),
};

S_SCRIPT s_inside_57[] =
{
	sCull(600),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x070512F8),
	sEnd(),
	sExit(),
};

S_SCRIPT s_inside_55[] =
{
	sCull(300),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x07058950),
	sEnd(),
	sExit(),
};

S_SCRIPT s_inside_56[] =
{
	sCull(300),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x07059190),
	sEnd(),
	sExit(),
};

static S_SCRIPT s_inside2_1[] =
{
	sEmpty(),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x0703E6F0),
	sEnd(),
	sReturn(),
};

static S_SCRIPT s_inside2_2[] =
{
	sEmpty(),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x07043028),
		sGfx(LAYER_OPA_SURF, (void *)0x07043B48),
		sGfx(LAYER_TEX_EDGE, (void *)0x07043CD8),
		sCallback(0, s_wave_802D5D0C),
		sCallback(264, s_wave_802D5B98),
		sCallback(266, s_wave_802D5B98),
	sEnd(),
	sReturn(),
};

static S_SCRIPT s_inside2_3[] =
{
	sEmpty(),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x0704A0E8),
		sGfx(LAYER_XLU_SURF, (void *)0x0704A2E0),
		sGfx(LAYER_OPA_SURF, (void *)0x0704AA98),
		sCallback(0, s_wave_802D5D0C),
		sCallback(268, s_wave_802D5B98),
		sCallback(0, s_inside_mirror),
	sEnd(),
	sReturn(),
};

static S_SCRIPT s_inside2_4[] =
{
	sEmpty(),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x0704C7D8),
		sCallback(0, s_wave_802D5D0C),
		sCallback(265, s_wave_802D5B98),
		sCallback(269, s_wave_802D5B98),
	sEnd(),
	sReturn(),
};

static S_SCRIPT s_inside2_5[] =
{
	sEmpty(),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x07050938),
		sGfx(LAYER_TEX_EDGE, (void *)0x07051678),
		sGfx(LAYER_XLU_SURF, (void *)0x070519C8),
		sGfx(LAYER_XLU_SURF, (void *)0x07051B60),
		sCallback(0, s_wave_802D5D0C),
		sCallback(267, s_wave_802D5B98),
	sEnd(),
	sReturn(),
};

static S_SCRIPT s_inside2_6[] =
{
	sEmpty(),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x070558D0),
		sGfx(LAYER_OPA_SURF, (void *)0x070572A0),
		sGfx(LAYER_OPA_SURF, (void *)0x07057F00),
	sEnd(),
	sReturn(),
};

static S_SCRIPT s_inside2_7[] =
{
	sEmpty(),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x0703E6F0),
		sGfx(LAYER_OPA_SURF, (void *)0x07043028),
		sGfx(LAYER_OPA_SURF, (void *)0x07043B48),
		sGfx(LAYER_TEX_EDGE, (void *)0x07043CD8),
		sCallback(0, s_wave_802D5D0C),
		sCallback(264, s_wave_802D5B98),
		sCallback(266, s_wave_802D5B98),
	sEnd(),
	sReturn(),
};

static S_SCRIPT s_inside2_8[] =
{
	sEmpty(),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x07043028),
		sGfx(LAYER_OPA_SURF, (void *)0x07043B48),
		sGfx(LAYER_TEX_EDGE, (void *)0x07043CD8),
		sGfx(LAYER_OPA_SURF, (void *)0x0704A0E8),
		sGfx(LAYER_XLU_SURF, (void *)0x0704A2E0),
		sGfx(LAYER_OPA_SURF, (void *)0x0704AA98),
		sCallback(0, s_wave_802D5D0C),
		sCallback(264, s_wave_802D5B98),
		sCallback(266, s_wave_802D5B98),
		sCallback(268, s_wave_802D5B98),
		sCallback(0, s_inside_mirror),
	sEnd(),
	sReturn(),
};

static S_SCRIPT s_inside2_9[] =
{
	sEmpty(),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x07043028),
		sGfx(LAYER_OPA_SURF, (void *)0x07043B48),
		sGfx(LAYER_TEX_EDGE, (void *)0x07043CD8),
		sGfx(LAYER_OPA_SURF, (void *)0x0704C7D8),
		sCallback(0, s_wave_802D5D0C),
		sCallback(264, s_wave_802D5B98),
		sCallback(265, s_wave_802D5B98),
		sCallback(266, s_wave_802D5B98),
		sCallback(269, s_wave_802D5B98),
	sEnd(),
	sReturn(),
};

static S_SCRIPT s_inside2_10[] =
{
	sEmpty(),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x07043028),
		sGfx(LAYER_OPA_SURF, (void *)0x07043B48),
		sGfx(LAYER_TEX_EDGE, (void *)0x07043CD8),
		sGfx(LAYER_OPA_SURF, (void *)0x07050938),
		sGfx(LAYER_TEX_EDGE, (void *)0x07051678),
		sGfx(LAYER_XLU_SURF, (void *)0x070519C8),
		sGfx(LAYER_XLU_SURF, (void *)0x07051B60),
		sCallback(0, s_wave_802D5D0C),
		sCallback(264, s_wave_802D5B98),
		sCallback(266, s_wave_802D5B98),
		sCallback(267, s_wave_802D5B98),
	sEnd(),
	sReturn(),
};

static S_SCRIPT s_inside2_11[] =
{
	sEmpty(),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x07050938),
		sGfx(LAYER_TEX_EDGE, (void *)0x07051678),
		sGfx(LAYER_XLU_SURF, (void *)0x070519C8),
		sGfx(LAYER_XLU_SURF, (void *)0x07051B60),
		sGfx(LAYER_OPA_SURF, (void *)0x070558D0),
		sGfx(LAYER_OPA_SURF, (void *)0x070572A0),
		sGfx(LAYER_OPA_SURF, (void *)0x07057F00),
		sCallback(0, s_wave_802D5D0C),
		sCallback(267, s_wave_802D5B98),
	sEnd(),
	sReturn(),
};

S_SCRIPT s_inside2[] =
{
	sScene(160, 120, 160, 120, 10),
	sStart(),
		sLayer(FALSE),
		sStart(),
			sOrtho(100),
			sStart(),
				sBackground(GPACK_RGBA5551(0x00, 0x00, 0x00, 1), NULL),
			sEnd(),
		sEnd(),
		sLayer(TRUE),
		sStart(),
			sPerspective(64, 50, 8000, s_stage_perspective),
			sStart(),
				sCamera(4, 0, 2000, 6000, 0, 0, 0, s_stage_camera),
				sStart(),
					sSelect(11, s_objlib_8029DBD4),
					sStart(),
						sCall(s_inside2_1),
						sCall(s_inside2_2),
						sCall(s_inside2_3),
						sCall(s_inside2_4),
						sCall(s_inside2_5),
						sCall(s_inside2_6),
						sCall(s_inside2_7),
						sCall(s_inside2_8),
						sCall(s_inside2_9),
						sCall(s_inside2_10),
						sCall(s_inside2_11),
					sEnd(),
					sObject(),
					sCallback(WEATHER_NULL, s_stage_weather),
				sEnd(),
			sEnd(),
		sEnd(),
	sEnd(),
	sExit(),
};

S_SCRIPT s_inside_54[] =
{
	sCull(550),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x07068B10),
	sEnd(),
	sExit(),
};

static S_SCRIPT s_inside3_1[] =
{
	sEmpty(),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x0705E088),
		sGfx(LAYER_TEX_EDGE, (void *)0x0705E2A0),
		sGfx(LAYER_XLU_SURF, (void *)0x0705E450),
	sEnd(),
	sReturn(),
};

static S_SCRIPT s_inside3_2[] =
{
	sEmpty(),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x070616E8),
		sGfx(LAYER_XLU_SURF, (void *)0x07061C20),
		sCallback(0, s_wave_802D5D0C),
		sCallback(260, s_wave_802D5B98),
		sCallback(261, s_wave_802D5B98),
		sCallback(0, s_water_802D01E0),
		sCallback(0x0600, s_water_802D104C),
	sEnd(),
	sReturn(),
};

static S_SCRIPT s_inside3_3[] =
{
	sEmpty(),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x07064B78),
		sGfx(LAYER_TEX_EDGE, (void *)0x07064D58),
		sCallback(0, s_wave_802D5D0C),
		sCallback(262, s_wave_802D5B98),
	sEnd(),
	sReturn(),
};

static S_SCRIPT s_inside3_4[] =
{
	sEmpty(),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x07066CE0),
		sGfx(LAYER_XLU_SURF, (void *)0x07066E90),
		sGfx(LAYER_TEX_EDGE, (void *)0x07066FA0),
		sCallback(0, s_water_802D01E0),
		sCallback(0x0612, s_water_802D104C),
	sEnd(),
	sReturn(),
};

static S_SCRIPT s_inside3_5[] =
{
	sEmpty(),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x07068850),
		sCallback(0, s_wave_802D5D0C),
		sCallback(263, s_wave_802D5B98),
	sEnd(),
	sReturn(),
};

static S_SCRIPT s_inside3_6[] =
{
	sEmpty(),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x0705E088),
		sGfx(LAYER_TEX_EDGE, (void *)0x0705E2A0),
		sGfx(LAYER_XLU_SURF, (void *)0x0705E450),
		sGfx(LAYER_OPA_SURF, (void *)0x070616E8),
		sGfx(LAYER_XLU_SURF, (void *)0x07061C20),
		sCallback(0, s_wave_802D5D0C),
		sCallback(260, s_wave_802D5B98),
		sCallback(261, s_wave_802D5B98),
		sCallback(0, s_water_802D01E0),
		sCallback(0x0600, s_water_802D104C),
	sEnd(),
	sReturn(),
};

static S_SCRIPT s_inside3_7[] =
{
	sEmpty(),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x0705E088),
		sGfx(LAYER_TEX_EDGE, (void *)0x0705E2A0),
		sGfx(LAYER_XLU_SURF, (void *)0x0705E450),
		sGfx(LAYER_OPA_SURF, (void *)0x07068850),
		sCallback(0, s_wave_802D5D0C),
		sCallback(263, s_wave_802D5B98),
	sEnd(),
	sReturn(),
};

static S_SCRIPT s_inside3_8[] =
{
	sEmpty(),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x0705E088),
		sGfx(LAYER_TEX_EDGE, (void *)0x0705E2A0),
		sGfx(LAYER_XLU_SURF, (void *)0x0705E450),
		sGfx(LAYER_OPA_SURF, (void *)0x07066CE0),
		sGfx(LAYER_XLU_SURF, (void *)0x07066E90),
		sGfx(LAYER_TEX_EDGE, (void *)0x07066FA0),
		sCallback(0, s_water_802D01E0),
		sCallback(0x0612, s_water_802D104C),
	sEnd(),
	sReturn(),
};

static S_SCRIPT s_inside3_9[] =
{
	sEmpty(),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x070616E8),
		sGfx(LAYER_XLU_SURF, (void *)0x07061C20),
		sGfx(LAYER_OPA_SURF, (void *)0x07066CE0),
		sGfx(LAYER_XLU_SURF, (void *)0x07066E90),
		sGfx(LAYER_TEX_EDGE, (void *)0x07066FA0),
		sCallback(0, s_wave_802D5D0C),
		sCallback(260, s_wave_802D5B98),
		sCallback(261, s_wave_802D5B98),
		sCallback(0, s_water_802D01E0),
		sCallback(0x0600, s_water_802D104C),
		sCallback(0x0612, s_water_802D104C),
	sEnd(),
	sReturn(),
};

static S_SCRIPT s_inside3_10[] =
{
	sEmpty(),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x070616E8),
		sGfx(LAYER_XLU_SURF, (void *)0x07061C20),
		sGfx(LAYER_OPA_SURF, (void *)0x07064B78),
		sGfx(LAYER_TEX_EDGE, (void *)0x07064D58),
		sCallback(0, s_wave_802D5D0C),
		sCallback(260, s_wave_802D5B98),
		sCallback(261, s_wave_802D5B98),
		sCallback(262, s_wave_802D5B98),
		sCallback(0, s_water_802D01E0),
		sCallback(0x0600, s_water_802D104C),
	sEnd(),
	sReturn(),
};

S_SCRIPT s_inside3[] =
{
	sScene(160, 120, 160, 120, 10),
	sStart(),
		sLayer(FALSE),
		sStart(),
			sOrtho(100),
			sStart(),
				sBackground(GPACK_RGBA5551(0x00, 0x00, 0x00, 1), NULL),
			sEnd(),
		sEnd(),
		sLayer(TRUE),
		sStart(),
			sPerspective(64, 50, 6400, s_stage_perspective),
			sStart(),
				sCamera(4, 0, 2000, 6000, 0, 0, 0, s_stage_camera),
				sStart(),
					sSelect(10, s_objlib_8029DBD4),
					sStart(),
						sCall(s_inside3_1),
						sCall(s_inside3_2),
						sCall(s_inside3_3),
						sCall(s_inside3_4),
						sCall(s_inside3_5),
						sCall(s_inside3_6),
						sCall(s_inside3_7),
						sCall(s_inside3_8),
						sCall(s_inside3_9),
						sCall(s_inside3_10),
					sEnd(),
					sObject(),
					sCallback(WEATHER_NULL, s_stage_weather),
				sEnd(),
			sEnd(),
		sEnd(),
	sEnd(),
	sExit(),
};
