#ifndef __SM64_HUD_H__
#define __SM64_HUD_H__

#define HUD_LIFE                0x0001
#define HUD_COIN                0x0002
#define HUD_STAR                0x0004
#define HUD_METER               0x0008
#define HUD_KEY                 0x0010
#define HUD_TIME                0x0040
#define HUD_ALERT               0x8000

#define HUD_ALL                 0x007F

typedef struct hud
{
	s16 life;
	s16 coin;
	s16 star;
	s16 power;
	s16 key;
	s16 flag;
	u16 time;
}
HUD;

extern void hud_set_camera(SHORT flag);
extern void hud_draw(void);

#endif /* __SM64_HUD_H__ */
