#ifndef __SM64_BACK_H__
#define __SM64_BACK_H__

#define BACK_TW                 10
#define BACK_TH                 8

typedef struct back
{
	u16 *txt[BACK_TW*BACK_TH];
}
BACK;

extern Gfx *back_draw(
	CHAR screen,
	CHAR type,
	float fovy,
	float eye_x,
	float eye_y,
	float eye_z,
	float look_x,
	float look_y,
	float look_z
);

#endif /* __SM64_BACK_H__ */
