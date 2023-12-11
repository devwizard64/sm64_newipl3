#include <sm64/shplang.h>

#define SCRIPT

extern void *ending_draw(int code, SHAPE *shape, void *data);

S_SCRIPT s_ending[] =
{
	sScene(160, 120, 160, 120, 10),
	sStart(),
		sLayer(FALSE),
		sStart(),
			sOrtho(100),
			sStart(),
				sCallback(0, ending_draw),
			sEnd(),
		sEnd(),
		sLayer(TRUE),
		sStart(),
			sPerspective(45, 100, 12800, s_stage_perspective),
			sStart(),
				sCamera(1, 0, 2000, 6000, 0, 0, 0, s_stage_camera),
			sEnd(),
		sEnd(),
	sEnd(),
	sExit(),
};
