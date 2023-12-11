#ifndef __SM64_MESSAGE_H__
#define __SM64_MESSAGE_H__

#define GFX_PUSH                1
#define GFX_NOPUSH              2

#define FONT_SEL                1
#define FONT_GLB                2

#define CURSOR_V                1
#define CURSOR_H                2

typedef struct message
{
	int code;
	char line;
	short x;
	short y;
	unsigned char *str;
}
MESSAGE;

extern s8 redcoin_count;
extern s8 pausemenu_level;
extern s8 savemenu_code;

extern void gfx_translate(CHAR flag, float x, float y, float z);
extern void gfx_rotate(CHAR flag, float a, float x, float y, float z);
extern void gfx_scale(CHAR flag, float x, float y, float z);
extern void gfx_screenproj(void);
extern void print_lg(SHORT x, SHORT y, const unsigned char *str);
extern void print_16(CHAR font, SHORT x, SHORT y, const unsigned char *str);
extern void print_sm(SHORT x, SHORT y, const unsigned char *str);
extern void print_8(SHORT x, SHORT y, const unsigned char *str);
extern void cursor_proc(CHAR code, s8 *cursor, CHAR min, CHAR max);
extern SHORT str_center_x(SHORT x, const unsigned char *str, float kerning);
extern SHORT str_width(const unsigned char *str);
extern void print_coin(int code, CHAR file, CHAR course, SHORT x, SHORT y);
extern void print_star(CHAR file, CHAR course, SHORT x, SHORT y);
extern void itostr(int value, unsigned char *str);
extern SHORT msg_get(void);
extern void msg_open(SHORT code);
extern void msg_open_int(SHORT code, int value);
extern void msg_open_signpost(SHORT code);
extern void msg_open_prompt(SHORT code);
extern void msg_close(void);
extern void menu_open(SHORT code);
extern void staff_clear(void);
extern void staff_draw_start(void);
extern void staff_draw_end(void);
extern void staff_print(SHORT x, SHORT y, const char *str);
extern void caption_open(SHORT x, SHORT y, SHORT code, SHORT frame);
extern void caption_draw(void);
extern void cannon_reticle_draw(void);
extern void pausemenu_init(void);
extern SHORT message_proc(void);

#endif /* __SM64_MESSAGE_H__ */
