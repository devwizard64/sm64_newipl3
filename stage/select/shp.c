#include <sm64/shplang.h>

#define SCRIPT

#include "file/shape.c"
#include "tile/shape.c"
extern void *fileselect_draw(int code, SHAPE *shape, void *data);
extern long starselect_draw(SHORT code, long status);

S_SCRIPT s_fileselect[] =
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
			sPersp(45, 100, 25000),
			sStart(),
				sCamera(0, 0, 0, 1000, 0, 0, 0, NULL),
				sStart(),
					sObject(),
				sEnd(),
			sEnd(),
		sEnd(),
		sLayer(FALSE),
		sStart(),
			sCallback(0, fileselect_draw),
		sEnd(),
	sEnd(),
	sExit(),
};

S_SCRIPT s_starselect[] =
{
	sScene(160, 120, 160, 120, 10),
	sStart(),
		sLayer(FALSE),
		sStart(),
			sOrtho(100),
			sStart(),
				sBackground(GPACK_RGBA5551(0xFF, 0xFF, 0xFF, 1), NULL),
			sEnd(),
		sEnd(),
		sLayer(TRUE),
		sStart(),
			sPersp(45, 100, 25000),
			sStart(),
				sCamera(0, 0, 0, 1000, 0, 0, 0, NULL),
				sStart(),
					sObject(),
				sEnd(),
			sEnd(),
		sEnd(),
		sLayer(FALSE),
		sStart(),
			sCallback(0, starselect_draw),
		sEnd(),
	sEnd(),
	sExit(),
};
