#ifndef __SM64_GAME_H__
#define __SM64_GAME_H__

#define ENTER_DOOR              0x01
#define ENTER_02                0x02
#define ENTER_03                0x03
#define ENTER_04                0x04
#define ENTER_10                0x10
#define ENTER_11                0x11
#define ENTER_12                0x12
#define ENTER_13                0x13
#define ENTER_14                0x14
#define ENTER_15                0x15
#define ENTER_16                0x16
#define ENTER_17                0x17
#define ENTER_20                0x20
#define ENTER_21                0x21
#define ENTER_22                0x22
#define ENTER_23                0x23
#define ENTER_24                0x24
#define ENTER_25                0x25
#define ENTER_27                0x27

#define FADE_EXIT               0x10

#define FADE_NULL               0
#define FADE_ROOF               1
#define FADE_2                  2 /* BBH entry? */
#define FADE_DOOR               3
#define FADE_PIPE               4
#define FADE_5                  5 /* teleport */
#define FADE_WIN                (FADE_EXIT|1)
#define FADE_DIE                (FADE_EXIT|2)
#define FADE_FALL               (FADE_EXIT|3)
#define FADE_GAMEOVER           (FADE_EXIT|4)
#define FADE_ENDING             (FADE_EXIT|5)
#define FADE_FACE               (FADE_EXIT|6)
#define FADE_FINAL              (FADE_EXIT|7)
#define FADE_STAFF              (FADE_EXIT|8)
#define FADE_LOGO               (FADE_EXIT|9)

#define time_show()             time_ctrl(0)
#define time_start()            time_ctrl(1)
#define time_stop()             time_ctrl(2)
#define time_hide()             time_ctrl(3)
#define time_get()              time_ctrl(4)

typedef void FREEZECALL(short *);

typedef struct pl_entry
{
	u8 type;
	u8 stage;
	u8 scene;
	u8 port;
	u32 code;
}
PL_ENTRY;

extern PLAYER player_data[1];
extern HUD hud;
extern char first_msg;
extern PLAYER *mario;

extern int time_ctrl(int code);
extern void game_fadeout(int code, int color);
extern void game_init_msg(int index);
extern int pl_fade(PLAYER *pl, int mode);
extern void game_freeze(SHORT timer, FREEZECALL *callback);
extern long game_process(SHORT code, long status);
extern long game_initialize(SHORT code, long status);
extern long game_checkselect(SHORT code, long status);
extern long ending_sound(SHORT code, long status);

#endif /* __SM64_GAME_H__ */
