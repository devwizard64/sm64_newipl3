#include "face.h"

int face_movement = TRUE;
int face_config_1 = TRUE;
float face_config_2 = -600;
int face_shade_smooth = TRUE;
int face_window_w = 320;
int face_window_h = 240;

CONTROL face_control;
CONTROL face_control_prev;

int face_main(void)
{
	UNUSED int i;
	gd_printf("%x, %x\n", &face_config_2, &face_movement);
	imin("main");
	gd_init();
	face_control._88 = 0.46799F;
	face_control._A0 = -34;
	face_control._AC = +34;
	face_control._00 = 2;
	face_control._54 = 0;
	face_control.prev = &face_control_prev;
	imin("main - make_scene");
	make_scene();
	imout();
	face_gfx_801A4468();
	face_stdio_8018C7B4();
	start_timer("dlgen");
	stop_timer("dlgen");
	face_mem_801780B0();
	for (;;) face_gfx_801A534C();
	imout();
	return 0;
}
