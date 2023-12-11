#ifndef __SM64_WIPE_H__
#define __SM64_WIPE_H__

#define WIPE_ISIN(type)         (!((type) & 1))
#define WIPE_ISOUT(type)        ((type) & 1)

typedef struct wipe_fade
{
	u8 r;
	u8 g;
	u8 b;
}
WIPE_FADE;

typedef struct wipe_window
{
	u8 r;
	u8 g;
	u8 b;
	short ssize;
	short esize;
	short sx;
	short sy;
	short ex;
	short ey;
	short ang_vel;
}
WIPE_WINDOW;

typedef union wipe_data
{
	WIPE_FADE fade;
	WIPE_WINDOW window;
}
WIPE_DATA;

typedef struct wipe
{
	u8 active;
	u8 type;
	u8 frame;
	u8 blank;
	WIPE_DATA data;
}
WIPE;

extern int wipe_draw(CHAR screen, CHAR type, UCHAR frame, WIPE_DATA *data);
extern void *s_cannon_overlay(int code, SHAPE *shape, void *data);

#endif /* __SM64_WIPE_H__ */
