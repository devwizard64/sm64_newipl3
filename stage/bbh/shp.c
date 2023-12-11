#include <sm64/shplang.h>

#define SCRIPT

S_SCRIPT s_bbh_53[] =
{
	sCull(700),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x0701F2E8),
	sEnd(),
	sExit(),
};

S_SCRIPT s_bbh_54[] =
{
	sCull(600),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x0701F5F8),
	sEnd(),
	sExit(),
};

S_SCRIPT s_bbh_55[] =
{
	sCull(650),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x0701F7E8),
	sEnd(),
	sExit(),
};

S_SCRIPT s_bbh_56[] =
{
	sCull(300),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x0701FAB0),
	sEnd(),
	sExit(),
};

S_SCRIPT s_bbh_57[] =
{
	sCull(1000),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x0701FD28),
	sEnd(),
	sExit(),
};

S_SCRIPT s_bbh_58[] =
{
	sCull(600),
	sStart(),
		sGfx(LAYER_TEX_EDGE, (void *)0x0701FFE8),
	sEnd(),
	sExit(),
};

S_SCRIPT s_bbh_59[] =
{
	sCull(2300),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x070202F0),
	sEnd(),
	sExit(),
};

S_SCRIPT s_bbh_60[] =
{
	sCull(800),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x070206F0),
	sEnd(),
	sExit(),
};

static S_SCRIPT s_bbh1_1[] =
{
	sEmpty(),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x070075A8),
		sGfx(LAYER_TEX_EDGE, (void *)0x07007940),
		sGfx(LAYER_OPA_SURF, (void *)0x07007B90),
		sGfx(LAYER_XLU_SURF, 0x07007FD0),
		sGfx(LAYER_OPA_SURF, (void *)0x07008B58),
		sGfx(LAYER_XLU_SURF, (void *)0x07008EA8),
	sEnd(),
	sReturn(),
};

static S_SCRIPT s_bbh1_2[] =
{
	sEmpty(),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x0700AFF0),
		sGfx(LAYER_OPA_SURF, (void *)0x0700B1C8),
		sGfx(LAYER_XLU_SURF, (void *)0x0700B418),
		sGfx(LAYER_OPA_SURF, (void *)0x0700B9E0),
		sGfx(LAYER_XLU_SURF, (void *)0x0700BBF8),
	sEnd(),
	sReturn(),
};

static S_SCRIPT s_bbh1_3[] =
{
	sEmpty(),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x0700D080),
		sGfx(LAYER_TEX_EDGE, (void *)0x0700D2E0),
		sGfx(LAYER_OPA_SURF, (void *)0x0700D490),
		sGfx(LAYER_XLU_SURF, (void *)0x0700D7E0),
		sGfx(LAYER_OPA_SURF, (void *)0x07012220),
		sGfx(LAYER_OPA_SURF, (void *)0x07012510),
		sGfx(LAYER_XLU_SURF, (void *)0x070126E8),
	sEnd(),
	sReturn(),
};

static S_SCRIPT s_bbh1_4[] =
{
	sEmpty(),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x0700F510),
		sGfx(LAYER_TEX_EDGE, (void *)0x0700F848),
	sEnd(),
	sReturn(),
};

static S_SCRIPT s_bbh1_5[] =
{
	sEmpty(),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x07011120),
	sEnd(),
	sReturn(),
};

static S_SCRIPT s_bbh1_6[] =
{
	sEmpty(),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x0700D080),
		sGfx(LAYER_TEX_EDGE, (void *)0x0700D2E0),
		sGfx(LAYER_OPA_SURF, (void *)0x0700D490),
		sGfx(LAYER_XLU_SURF, (void *)0x0700D7E0),
		sGfx(LAYER_OPA_SURF, (void *)0x07012220),
		sGfx(LAYER_OPA_SURF, (void *)0x07012510),
		sGfx(LAYER_XLU_SURF, (void *)0x070126E8),
	sEnd(),
	sReturn(),
};

static S_SCRIPT s_bbh1_7[] =
{
	sEmpty(),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x070139A8),
		sGfx(LAYER_XLU_SURF, (void *)0x07013BE8),
	sEnd(),
	sReturn(),
};

static S_SCRIPT s_bbh1_8[] =
{
	sEmpty(),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x07014FD8),
		sGfx(LAYER_TEX_EDGE, (void *)0x07015398),
		sGfx(LAYER_XLU_SURF, (void *)0x070156E0),
		sGfx(LAYER_OPA_SURF, (void *)0x07015A20),
	sEnd(),
	sReturn(),
};

static S_SCRIPT s_bbh1_9[] =
{
	sEmpty(),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x07017378),
		sGfx(LAYER_OPA_SURF, (void *)0x07017570),
		sGfx(LAYER_XLU_SURF, (void *)0x07017788),
	sEnd(),
	sReturn(),
};

static S_SCRIPT s_bbh1_10[] =
{
	sEmpty(),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x07019EF8),
		sGfx(LAYER_TEX_EDGE, (void *)0x0701A080),
		sCallback(0, s_water_802D01E0),
		sCallback(0x0400, s_water_802D104C),
		sCallback(0x0401, s_water_802D104C),
	sEnd(),
	sReturn(),
};

static S_SCRIPT s_bbh1_11[] =
{
	sEmpty(),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x0701A850),
		sCallback(0, s_water_802D01E0),
		sCallback(0x0400, s_water_802D104C),
	sEnd(),
	sReturn(),
};

static S_SCRIPT s_bbh1_12[] =
{
	sEmpty(),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x0701B6D0),
		sCallback(0, s_water_802D01E0),
		sCallback(0x0400, s_water_802D104C),
	sEnd(),
	sReturn(),
};

static S_SCRIPT s_bbh1_13[] =
{
	sEmpty(),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x0701E4E0),
		sGfx(LAYER_TEX_EDGE, (void *)0x0701E8D8),
		sGfx(LAYER_OPA_SURF, (void *)0x0701ED18),
		sGfx(LAYER_XLU_SURF, (void *)0x0701EEC8),
		sGfx(LAYER_OPA_SURF, (void *)0x0701F070),
	sEnd(),
	sReturn(),
};

static S_SCRIPT s_bbh1_14[] =
{
	sEmpty(),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x070075A8),
		sGfx(LAYER_TEX_EDGE, (void *)0x07007940),
		sGfx(LAYER_OPA_SURF, (void *)0x07007B90),
		sGfx(LAYER_XLU_SURF, 0x07007FD0),
		sGfx(LAYER_OPA_SURF, (void *)0x07008B58),
		sGfx(LAYER_XLU_SURF, (void *)0x07008EA8),
		sGfx(LAYER_OPA_SURF, (void *)0x0700AFF0),
		sGfx(LAYER_OPA_SURF, (void *)0x0700B1C8),
		sGfx(LAYER_XLU_SURF, (void *)0x0700B418),
		sGfx(LAYER_OPA_SURF, (void *)0x0700B9E0),
		sGfx(LAYER_XLU_SURF, (void *)0x0700BBF8),
	sEnd(),
	sReturn(),
};

static S_SCRIPT s_bbh1_15[] =
{
	sEmpty(),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x070075A8),
		sGfx(LAYER_TEX_EDGE, (void *)0x07007940),
		sGfx(LAYER_OPA_SURF, (void *)0x07007B90),
		sGfx(LAYER_XLU_SURF, 0x07007FD0),
		sGfx(LAYER_OPA_SURF, (void *)0x07008B58),
		sGfx(LAYER_XLU_SURF, (void *)0x07008EA8),
		sGfx(LAYER_OPA_SURF, (void *)0x0700D080),
		sGfx(LAYER_TEX_EDGE, (void *)0x0700D2E0),
		sGfx(LAYER_OPA_SURF, (void *)0x0700D490),
		sGfx(LAYER_XLU_SURF, (void *)0x0700D7E0),
		sGfx(LAYER_OPA_SURF, (void *)0x07012220),
		sGfx(LAYER_OPA_SURF, (void *)0x07012510),
		sGfx(LAYER_XLU_SURF, (void *)0x070126E8),
	sEnd(),
	sReturn(),
};

static S_SCRIPT s_bbh1_16[] =
{
	sEmpty(),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x070075A8),
		sGfx(LAYER_TEX_EDGE, (void *)0x07007940),
		sGfx(LAYER_OPA_SURF, (void *)0x07007B90),
		sGfx(LAYER_XLU_SURF, 0x07007FD0),
		sGfx(LAYER_OPA_SURF, (void *)0x07008B58),
		sGfx(LAYER_XLU_SURF, (void *)0x07008EA8),
		sGfx(LAYER_OPA_SURF, (void *)0x0700F510),
		sGfx(LAYER_TEX_EDGE, (void *)0x0700F848),
	sEnd(),
	sReturn(),
};

static S_SCRIPT s_bbh1_17[] =
{
	sEmpty(),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x070075A8),
		sGfx(LAYER_TEX_EDGE, (void *)0x07007940),
		sGfx(LAYER_OPA_SURF, (void *)0x07007B90),
		sGfx(LAYER_XLU_SURF, 0x07007FD0),
		sGfx(LAYER_OPA_SURF, (void *)0x07008B58),
		sGfx(LAYER_XLU_SURF, (void *)0x07008EA8),
		sGfx(LAYER_OPA_SURF, (void *)0x07011120),
	sEnd(),
	sReturn(),
};

static S_SCRIPT s_bbh1_18[] =
{
	sEmpty(),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x070075A8),
		sGfx(LAYER_TEX_EDGE, (void *)0x07007940),
		sGfx(LAYER_OPA_SURF, (void *)0x07007B90),
		sGfx(LAYER_XLU_SURF, 0x07007FD0),
		sGfx(LAYER_OPA_SURF, (void *)0x07008B58),
		sGfx(LAYER_XLU_SURF, (void *)0x07008EA8),
		sGfx(LAYER_OPA_SURF, (void *)0x0700D080),
		sGfx(LAYER_TEX_EDGE, (void *)0x0700D2E0),
		sGfx(LAYER_OPA_SURF, (void *)0x0700D490),
		sGfx(LAYER_XLU_SURF, (void *)0x0700D7E0),
		sGfx(LAYER_OPA_SURF, (void *)0x07012220),
		sGfx(LAYER_OPA_SURF, (void *)0x07012510),
		sGfx(LAYER_XLU_SURF, (void *)0x070126E8),
	sEnd(),
	sReturn(),
};

static S_SCRIPT s_bbh1_19[] =
{
	sEmpty(),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x070075A8),
		sGfx(LAYER_TEX_EDGE, (void *)0x07007940),
		sGfx(LAYER_OPA_SURF, (void *)0x07007B90),
		sGfx(LAYER_XLU_SURF, 0x07007FD0),
		sGfx(LAYER_OPA_SURF, (void *)0x07008B58),
		sGfx(LAYER_XLU_SURF, (void *)0x07008EA8),
		sGfx(LAYER_OPA_SURF, (void *)0x070139A8),
		sGfx(LAYER_XLU_SURF, (void *)0x07013BE8),
	sEnd(),
	sReturn(),
};

static S_SCRIPT s_bbh1_20[] =
{
	sEmpty(),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x070075A8),
		sGfx(LAYER_TEX_EDGE, (void *)0x07007940),
		sGfx(LAYER_OPA_SURF, (void *)0x07007B90),
		sGfx(LAYER_XLU_SURF, 0x07007FD0),
		sGfx(LAYER_OPA_SURF, (void *)0x07008B58),
		sGfx(LAYER_XLU_SURF, (void *)0x07008EA8),
		sGfx(LAYER_OPA_SURF, (void *)0x07014FD8),
		sGfx(LAYER_TEX_EDGE, (void *)0x07015398),
		sGfx(LAYER_XLU_SURF, (void *)0x070156E0),
		sGfx(LAYER_OPA_SURF, (void *)0x07015A20),
	sEnd(),
	sReturn(),
};

static S_SCRIPT s_bbh1_21[] =
{
	sEmpty(),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x070075A8),
		sGfx(LAYER_TEX_EDGE, (void *)0x07007940),
		sGfx(LAYER_OPA_SURF, (void *)0x07007B90),
		sGfx(LAYER_XLU_SURF, 0x07007FD0),
		sGfx(LAYER_OPA_SURF, (void *)0x07008B58),
		sGfx(LAYER_XLU_SURF, (void *)0x07008EA8),
		sGfx(LAYER_OPA_SURF, (void *)0x0701E4E0),
		sGfx(LAYER_TEX_EDGE, (void *)0x0701E8D8),
		sGfx(LAYER_OPA_SURF, (void *)0x0701ED18),
		sGfx(LAYER_XLU_SURF, (void *)0x0701EEC8),
		sGfx(LAYER_OPA_SURF, (void *)0x0701F070),
	sEnd(),
	sReturn(),
};

static S_SCRIPT s_bbh1_22[] =
{
	sEmpty(),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x0700AFF0),
		sGfx(LAYER_OPA_SURF, (void *)0x0700B1C8),
		sGfx(LAYER_XLU_SURF, (void *)0x0700B418),
		sGfx(LAYER_OPA_SURF, (void *)0x0700B9E0),
		sGfx(LAYER_XLU_SURF, (void *)0x0700BBF8),
		sGfx(LAYER_OPA_SURF, (void *)0x0700F510),
		sGfx(LAYER_TEX_EDGE, (void *)0x0700F848),
	sEnd(),
	sReturn(),
};

static S_SCRIPT s_bbh1_23[] =
{
	sEmpty(),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x0700AFF0),
		sGfx(LAYER_OPA_SURF, (void *)0x0700B1C8),
		sGfx(LAYER_XLU_SURF, (void *)0x0700B418),
		sGfx(LAYER_OPA_SURF, (void *)0x0700B9E0),
		sGfx(LAYER_XLU_SURF, (void *)0x0700BBF8),
		sGfx(LAYER_OPA_SURF, (void *)0x07017378),
		sGfx(LAYER_OPA_SURF, (void *)0x07017570),
		sGfx(LAYER_XLU_SURF, (void *)0x07017788),
	sEnd(),
	sReturn(),
};

static S_SCRIPT s_bbh1_24[] =
{
	sEmpty(),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x0700AFF0),
		sGfx(LAYER_OPA_SURF, (void *)0x0700B1C8),
		sGfx(LAYER_XLU_SURF, (void *)0x0700B418),
		sGfx(LAYER_OPA_SURF, (void *)0x0700B9E0),
		sGfx(LAYER_XLU_SURF, (void *)0x0700BBF8),
		sGfx(LAYER_OPA_SURF, (void *)0x07019EF8),
		sGfx(LAYER_TEX_EDGE, (void *)0x0701A080),
		sCallback(0, s_water_802D01E0),
		sCallback(0x0400, s_water_802D104C),
		sCallback(0x0401, s_water_802D104C),
	sEnd(),
	sReturn(),
};

static S_SCRIPT s_bbh1_25[] =
{
	sEmpty(),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x0700D080),
		sGfx(LAYER_TEX_EDGE, (void *)0x0700D2E0),
		sGfx(LAYER_OPA_SURF, (void *)0x0700D490),
		sGfx(LAYER_XLU_SURF, (void *)0x0700D7E0),
		sGfx(LAYER_OPA_SURF, (void *)0x07011120),
	sEnd(),
	sReturn(),
};

static S_SCRIPT s_bbh1_26[] =
{
	sEmpty(),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x0700D080),
		sGfx(LAYER_TEX_EDGE, (void *)0x0700D2E0),
		sGfx(LAYER_OPA_SURF, (void *)0x0700D490),
		sGfx(LAYER_XLU_SURF, (void *)0x0700D7E0),
		sGfx(LAYER_OPA_SURF, (void *)0x07012220),
		sGfx(LAYER_OPA_SURF, (void *)0x07012510),
		sGfx(LAYER_XLU_SURF, (void *)0x070126E8),
	sEnd(),
	sReturn(),
};

static S_SCRIPT s_bbh1_27[] =
{
	sEmpty(),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x0700F510),
		sGfx(LAYER_TEX_EDGE, (void *)0x0700F848),
		sGfx(LAYER_OPA_SURF, (void *)0x07019EF8),
		sGfx(LAYER_TEX_EDGE, (void *)0x0701A080),
		sCallback(0, s_water_802D01E0),
		sCallback(0x0400, s_water_802D104C),
		sCallback(0x0401, s_water_802D104C),
	sEnd(),
	sReturn(),
};

static S_SCRIPT s_bbh1_28[] =
{
	sEmpty(),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x07011120),
		sGfx(LAYER_OPA_SURF, (void *)0x0701E4E0),
		sGfx(LAYER_TEX_EDGE, (void *)0x0701E8D8),
		sGfx(LAYER_OPA_SURF, (void *)0x0701ED18),
		sGfx(LAYER_XLU_SURF, (void *)0x0701EEC8),
		sGfx(LAYER_OPA_SURF, (void *)0x0701F070),
	sEnd(),
	sReturn(),
};

static S_SCRIPT s_bbh1_29[] =
{
	sEmpty(),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x07017378),
		sGfx(LAYER_OPA_SURF, (void *)0x07017570),
		sGfx(LAYER_XLU_SURF, (void *)0x07017788),
		sGfx(LAYER_OPA_SURF, (void *)0x0701E4E0),
		sGfx(LAYER_TEX_EDGE, (void *)0x0701E8D8),
		sGfx(LAYER_OPA_SURF, (void *)0x0701ED18),
		sGfx(LAYER_XLU_SURF, (void *)0x0701EEC8),
		sGfx(LAYER_OPA_SURF, (void *)0x0701F070),
	sEnd(),
	sReturn(),
};

static S_SCRIPT s_bbh1_30[] =
{
	sEmpty(),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x07019EF8),
		sGfx(LAYER_TEX_EDGE, (void *)0x0701A080),
		sGfx(LAYER_OPA_SURF, (void *)0x0701A850),
		sCallback(0, s_water_802D01E0),
		sCallback(0x0400, s_water_802D104C),
		sCallback(0x0401, s_water_802D104C),
	sEnd(),
	sReturn(),
};

static S_SCRIPT s_bbh1_31[] =
{
	sEmpty(),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x0701A850),
		sGfx(LAYER_OPA_SURF, (void *)0x0701B6D0),
		sCallback(0, s_water_802D01E0),
		sCallback(0x0400, s_water_802D104C),
	sEnd(),
	sReturn(),
};

static S_SCRIPT s_bbh1_32[] =
{
	sEmpty(),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x0701B6D0),
		sGfx(LAYER_OPA_SURF, (void *)0x0701E4E0),
		sGfx(LAYER_TEX_EDGE, (void *)0x0701E8D8),
		sGfx(LAYER_OPA_SURF, (void *)0x0701ED18),
		sGfx(LAYER_XLU_SURF, (void *)0x0701EEC8),
		sGfx(LAYER_OPA_SURF, (void *)0x0701F070),
		sCallback(0, s_water_802D01E0),
		sCallback(0x0400, s_water_802D104C),
	sEnd(),
	sReturn(),
};

S_SCRIPT s_bbh1[] =
{
	sScene(160, 120, 160, 120, 10),
	sStart(),
		sLayer(FALSE),
		sStart(),
			sOrtho(100),
			sStart(),
				sBackground(BACK_H, s_stage_back),
			sEnd(),
		sEnd(),
		sLayer(TRUE),
		sStart(),
			sPerspective(45, 50, 10000, s_stage_perspective),
			sStart(),
				sCamera(4, 0, 2000, 6000, 0, 0, 0, s_stage_camera),
				sStart(),
					sSelect(32, s_objlib_8029DBD4),
					sStart(),
						sCall(s_bbh1_1),
						sCall(s_bbh1_2),
						sCall(s_bbh1_3),
						sCall(s_bbh1_4),
						sCall(s_bbh1_5),
						sCall(s_bbh1_6),
						sCall(s_bbh1_7),
						sCall(s_bbh1_8),
						sCall(s_bbh1_9),
						sCall(s_bbh1_10),
						sCall(s_bbh1_11),
						sCall(s_bbh1_12),
						sCall(s_bbh1_13),
						sCall(s_bbh1_14),
						sCall(s_bbh1_15),
						sCall(s_bbh1_16),
						sCall(s_bbh1_17),
						sCall(s_bbh1_18),
						sCall(s_bbh1_19),
						sCall(s_bbh1_20),
						sCall(s_bbh1_21),
						sCall(s_bbh1_22),
						sCall(s_bbh1_23),
						sCall(s_bbh1_24),
						sCall(s_bbh1_25),
						sCall(s_bbh1_26),
						sCall(s_bbh1_27),
						sCall(s_bbh1_28),
						sCall(s_bbh1_29),
						sCall(s_bbh1_30),
						sCall(s_bbh1_31),
						sCall(s_bbh1_32),
					sEnd(),
					sObject(),
					sCallback(WEATHER_NULL, s_stage_weather),
				sEnd(),
			sEnd(),
		sEnd(),
	sEnd(),
	sExit(),
};
