#include <sm64.h>

#ifdef ENGLISH
#include "en_us.h"
#endif

extern u16 *txt_glbfont[];
extern u8 *txt_lgfont[];
extern u16 *txt_staff[];
extern MESSAGE *select_table[];
extern MESSAGE *msg_table[];
extern unsigned char *course_name[];
extern unsigned char *level_name[];
extern Gfx gfx_print_1cyc_start[];
extern Gfx gfx_print_1cyc_char[];
extern Gfx gfx_print_1cyc_end[];
extern Gfx gfx_print_1cyc_char[];
extern Gfx gfx_message_box[];
extern Gfx gfx_lgfont_start[];
extern Gfx gfx_lgfont_char[];
extern Gfx gfx_lgfont_end[];
extern Gfx gfx_message_cursor[];

extern Gfx gfx_redcoin_0[];
extern Gfx gfx_redcoin_1[];
extern Gfx gfx_redcoin_2[];
extern Gfx gfx_redcoin_3[];

extern u16 *txt_selfont[];
extern u8 *txt_smfont[];

static u8 font_kerning[256] =
{
	7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 6, 6, 6, 6, 6, 6,
	6, 6, 5, 6, 6, 5, 8, 8, 6, 6, 6, 6, 6, 5, 6, 6,
	8, 7, 6, 6, 6, 5, 5, 6, 5, 5, 6, 5, 4, 5, 5, 3,
	7, 5, 5, 5, 6, 5, 5, 5, 5, 5, 7, 7, 5, 5, 4, 4,
	8, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
	8, 8, 8, 8, 7, 7, 6, 7, 7, 0, 0, 0, 0, 0, 0, 0,
	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4,
	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 6,
	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
	7, 5, 10, 5, 9, 8, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0,
	0, 0, 5, 7, 7, 6, 6, 8, 0, 8, 10, 6, 4, 10, 0, 0,
};

static s8 msg_state = 0;
static float msg_angle = 90;
static short msg_theta;
static float msg_scale = 19;
static short msg_scroll = 0;
static s8 msg_type = 0;
static s16 msg_code = -1;
static s16 msg_next = 0;
static s16 msg_index = 0;
static s8 msg_cursor = 1;
static s8 msg_cursor_line;
static char msg_cursor_flag = FALSE;
static int msg_value;
static u16 msg_alpha;

static u8 cursor_status = 0;
static u8 cursor_timer = 0;

int msg_answer = 0;

static void gfx_loadident(void)
{
	Mtx *mtx;
	if (!(mtx = gfx_alloc(sizeof(Mtx)))) return;
	mtx->m[0][0] = 1 << 16;
	mtx->m[1][0] = 0;
	mtx->m[2][0] = 0;
	mtx->m[3][0] = 0;
	mtx->m[0][1] = 0;
	mtx->m[1][1] = 1 << 16;
	mtx->m[2][1] = 0;
	mtx->m[3][1] = 0;
	mtx->m[0][2] = 1;
	mtx->m[1][2] = 0;
	mtx->m[2][2] = 0;
	mtx->m[3][2] = 0;
	mtx->m[0][3] = 0;
	mtx->m[1][3] = 1;
	mtx->m[2][3] = 0;
	mtx->m[3][3] = 0;
	gSPMatrix(
		glistp++, K0_TO_PHYS(mtx), G_MTX_MODELVIEW|G_MTX_LOAD|G_MTX_NOPUSH
	);
	gSPMatrix(
		glistp++, K0_TO_PHYS(mtx), G_MTX_PROJECTION|G_MTX_LOAD|G_MTX_NOPUSH
	);
}

void gfx_translate(CHAR flag, float x, float y, float z)
{
	Mtx *mtx;
	if (!(mtx = gfx_alloc(sizeof(Mtx)))) return;
	guTranslate(mtx, x, y, z);
	if (flag == GFX_PUSH) gSPMatrix(
		glistp++, K0_TO_PHYS(mtx), G_MTX_MODELVIEW|G_MTX_MUL|G_MTX_PUSH
	);
	if (flag == GFX_NOPUSH) gSPMatrix(
		glistp++, K0_TO_PHYS(mtx), G_MTX_MODELVIEW|G_MTX_MUL|G_MTX_NOPUSH
	);
}

void gfx_rotate(CHAR flag, float a, float x, float y, float z)
{
	Mtx *mtx;
	if (!(mtx = gfx_alloc(sizeof(Mtx)))) return;
	guRotate(mtx, a, x, y, z);
	if (flag == GFX_PUSH) gSPMatrix(
		glistp++, K0_TO_PHYS(mtx), G_MTX_MODELVIEW|G_MTX_MUL|G_MTX_PUSH
	);
	if (flag == GFX_NOPUSH) gSPMatrix(
		glistp++, K0_TO_PHYS(mtx), G_MTX_MODELVIEW|G_MTX_MUL|G_MTX_NOPUSH
	);
}

void gfx_scale(CHAR flag, float x, float y, float z)
{
	Mtx *mtx;
	if (!(mtx = gfx_alloc(sizeof(Mtx)))) return;
	guScale(mtx, x, y, z);
	if (flag == GFX_PUSH) gSPMatrix(
		glistp++, K0_TO_PHYS(mtx), G_MTX_MODELVIEW|G_MTX_MUL|G_MTX_PUSH
	);
	if (flag == GFX_NOPUSH) gSPMatrix(
		glistp++, K0_TO_PHYS(mtx), G_MTX_MODELVIEW|G_MTX_MUL|G_MTX_NOPUSH
	);
}

void gfx_screenproj(void)
{
	Mtx *mtx;
	if (!(mtx = gfx_alloc(sizeof(Mtx)))) return;
	gfx_loadident();
	guOrtho(mtx, 0, SCREEN_WD, 0, SCREEN_HT, -10, 10, 1);
	gSPPerspNormalize(glistp++, 0xFFFF);
	gSPMatrix(
		glistp++, K0_TO_PHYS(mtx), G_MTX_PROJECTION|G_MTX_MUL|G_MTX_NOPUSH
	);
}

UNUSED
static u8 *unpack_i1(u16 *src, SHORT w, SHORT h)
{
	int i;
	USHORT bit;
	u8 *dst;
	SHORT n = 0;
	if (!(dst = gfx_alloc(w*h))) return NULL;
	for (i = 0; i < w*h/16; i++)
	{
		bit = 0x8000;
		while (bit)
		{
			if (src[i] & bit)   dst[n] = 0xFF;
			else                dst[n] = 0x00;
			bit /= 2;
			n++;
		}
	}
	return dst;
}

static void print_lg_char(UCHAR c)
{
	u16 **lgfont = segment_to_virtual(txt_lgfont);
	u16 *txt = segment_to_virtual(lgfont[c]);
	gDPPipeSync(glistp++);
	gDPSetTextureImage(glistp++, G_IM_FMT_IA, G_IM_SIZ_16b, 1, K0_TO_PHYS(txt));
	gSPDisplayList(glistp++, gfx_lgfont_char);
}

static void print_lg_multi(CHAR code)
{
	CHAR i;
	STATIC unsigned char str_multi[][5] =
	{
		{3, CH_t, CH_h, CH_e},
		{3, CH_y, CH_o, CH_u},
	};
	for (i = 0; i < str_multi[code][0]; i++)
	{
		print_lg_char(str_multi[code][1+i]);
		gfx_translate(GFX_NOPUSH, font_kerning[str_multi[code][1+i]], 0, 0);
	}
}

void print_lg(SHORT x, SHORT y, const unsigned char *str)
{
	char mark = 0;
	int i = 0;
	UCHAR line = 1;
	gfx_translate(GFX_PUSH, x, y, 0);
	while (str[i] != CH_NUL)
	{
		switch (str[i])
		{
		case CH_DAKUTEN:
			mark = 1;
			break;
		case CH_HANDAKUTEN:
			mark = 2;
			break;
		case CH_LF:
			gSPPopMatrix(glistp++, G_MTX_MODELVIEW);
			gfx_translate(GFX_PUSH, x, y - 16*line, 0);
			line++;
			break;
		case 0x6E:
			gfx_translate(GFX_PUSH, -2, -5, 0);
			print_lg_char(0xF1);
			gSPPopMatrix(glistp++, G_MTX_MODELVIEW);
			break;
		case CH_TAB:
			gfx_translate(GFX_NOPUSH, font_kerning[CH_SPACE]*2, 0, 0);
			break;
		case CH_the:
			print_lg_multi(0);
			break;
		case CH_you:
			print_lg_multi(1);
			break;
		case CH_SPACE:
			gfx_translate(GFX_NOPUSH, font_kerning[CH_SPACE], 0, 0);
			break;
		default:
			print_lg_char(str[i]);
			if (mark != 0)
			{
				gfx_translate(GFX_PUSH, 5, 5, 0);
				print_lg_char(CH_DAKUTEN+mark-1);
				gSPPopMatrix(glistp++, G_MTX_MODELVIEW);
				mark = 0;
			}
			gfx_translate(GFX_NOPUSH, font_kerning[str[i]], 0, 0);
			break;
		}
		i++;
	}
	gSPPopMatrix(glistp++, G_MTX_MODELVIEW);
}

void print_16(CHAR font, SHORT x, SHORT y, const unsigned char *str)
{
	int i = 0;
	u16 **selfont = segment_to_virtual(txt_selfont);
	u16 **glbfont = segment_to_virtual(txt_glbfont);
	unsigned int ux = x;
	unsigned int uy = y;
	int width;
	if (font == FONT_SEL)   width = 16;
	else                    width = 12;
	while (str[i] != CH_NUL)
	{
		switch (str[i])
		{
		case CH_SPACE:
			ux += 8;
			break;
		default:
			gDPPipeSync(glistp++);
			if (font == FONT_SEL) gDPSetTextureImage(
				glistp++, G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, selfont[str[i]]
			);
			if (font == FONT_GLB) gDPSetTextureImage(
				glistp++, G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, glbfont[str[i]]
			);
			gSPDisplayList(glistp++, gfx_print_1cyc_char);
			gSPTextureRectangle(
				glistp++, ux << 2, uy << 2, (ux+16) << 2, (uy+16) << 2,
				G_TX_RENDERTILE, 0, 0, 0x400, 0x400
			);
			ux += width;
		}
		i++;
	}
}

void print_sm(SHORT x, SHORT y, const unsigned char *str)
{
	char mark = 0;
	int i = 0;
	unsigned int ux = x;
	unsigned int uy = y;
	u16 **smfont = segment_to_virtual(txt_smfont);
	while (str[i] != CH_NUL)
	{
		switch (str[i])
		{
		case CH_DAKUTEN:
			mark = 1;
			break;
		case CH_HANDAKUTEN:
			mark = 2;
			break;
		case CH_SPACE:
			ux += 4;
			break;
		default:
			gDPLoadImageBlock(
				glistp++, smfont[str[i]], G_IM_FMT_IA, G_IM_SIZ_8b, 8, 8
			);
			gSPTextureRectangle(
				glistp++, ux << 2, uy << 2, (ux+8) << 2, (uy+8) << 2,
				G_TX_RENDERTILE, 0, 0, 0x400, 0x400
			);
			if (mark != 0)
			{
				gDPLoadImageBlock(
					glistp++, smfont[CH_DAKUTEN+mark-1],
					G_IM_FMT_IA, G_IM_SIZ_8b, 8, 8
				);
				gSPTextureRectangle(
					glistp++,
					(ux+6) << 2, (uy-7) << 2, (ux+6+8) << 2, (uy-7+8) << 2,
					G_TX_RENDERTILE, 0, 0, 0x400, 0x400
				);
				mark = 0;
			}
			ux += font_kerning[str[i]];
		}
		i++;
	}
}

void print_8(SHORT x, SHORT y, const unsigned char *str)
{
	int i = 0;
	u16 **font = segment_to_virtual(txt_staff);
	unsigned int ux = x;
	unsigned int uy = y;
	gDPSetLoadTile(glistp++, G_IM_FMT_RGBA, G_IM_SIZ_16b);
	gDPSetImageBlock(
		glistp++, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 8, 0,
		G_TX_CLAMP, G_TX_CLAMP, 3, 3, 0, 0
	);
	while (str[i] != CH_NUL)
	{
		switch (str[i])
		{
		case CH_SPACE:
			ux += 4;
			break;
		default:
			gDPPipeSync(glistp++);
			gDPLoadImageBlock(
				glistp++, font[str[i]], G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 8
			);
			gSPTextureRectangle(
				glistp++, ux << 2, uy << 2, (ux+8) << 2, (uy+8) << 2,
				G_TX_RENDERTILE, 0, 0, 0x400, 0x400
			);
			ux += 7;
			break;
		}
		i++;
	}
}

void cursor_proc(CHAR code, s8 *cursor, CHAR min, CHAR max)
{
	UCHAR flag = 0;
	if (code == CURSOR_V)
	{
		if (contp->stick_y > +60) flag += 1;
		if (contp->stick_y < -60) flag += 2;
	}
	else if (code == CURSOR_H)
	{
		if (contp->stick_x > +60) flag += 2;
		if (contp->stick_x < -60) flag += 1;
	}
	if (((flag^cursor_status) & flag) == 2)
	{
		if (*cursor == max)
		{
			*cursor = max;
		}
		else
		{
			Na_FixSePlay(NA_SE7_00);
			(*cursor)++;
		}
	}
	if (((flag^cursor_status) & flag) == 1)
	{
		if (*cursor == min)
		{
		}
		else
		{
			Na_FixSePlay(NA_SE7_00);
			(*cursor)--;
		}
	}
	if (cursor_timer == 10)
	{
		cursor_timer = 8;
		cursor_status = 0;
	}
	else
	{
		cursor_timer++;
		cursor_status = flag;
	}
	if (!(flag & 3)) cursor_timer = 0;
}

SHORT str_center_x(SHORT x, const unsigned char *str, UNUSED float kerning)
{
	SHORT i = 0;
	float width = 0;
	while (str[i] != CH_NUL)
	{
		width += font_kerning[str[i]];
		i++;
	}
	return x - (SHORT)(width/2.0);
}

SHORT str_width(const unsigned char *str)
{
	SHORT i = 0;
	SHORT width = 0;
	while (str[i] != CH_NUL)
	{
		width += font_kerning[str[i]];
		i++;
	}
	return width;
}

void print_coin(int code, CHAR file, CHAR course, SHORT x, SHORT y)
{
	unsigned char buf[4];
	SHORT coin;
	static unsigned char str16_coin[] = {CH16_COIN, CH_NUL};
	static unsigned char str16_cross[] = {CH16_CROSS, CH_NUL};
	if (code == 0)  coin = save_hiscore_coin(course);
	else            coin = save_file_get_coin(file, course);
	if (coin != 0)
	{
		print_16(FONT_GLB, x, y, str16_coin);
		print_16(FONT_GLB, x+16, y, str16_cross);
		itostr(coin, buf);
		print_16(FONT_GLB, x+32, y, buf);
	}
}

void print_star(CHAR file, CHAR course, SHORT x, SHORT y)
{
	unsigned char buf[4];
	SHORT star;
	STATIC unsigned char str16_star[] = {CH16_STAR, CH_NUL};
	STATIC unsigned char str16_cross[] = {CH16_CROSS, CH_NUL};
	star = save_file_star_count(file, course);
	if (star != 0)
	{
		print_16(FONT_GLB, x, y, str16_star);
		print_16(FONT_GLB, x+16, y, str16_cross);
		itostr(star, buf);
		print_16(FONT_GLB, x+32, y, buf);
	}
}

void itostr(int value, unsigned char *str)
{
	int c, d, u;
	CHAR i = 0;
	if (value > 999)
	{
		str[0] = CH_0;
		str[1] = CH_NUL;
		return;
	}
	c = value / 100;
	d = (value - 100*c) / 10;
	u = value - 100*c - 10*d;
	if (          c != 0) str[i] = CH_0+c, i++;
	if (d != 0 || c != 0) str[i] = CH_0+d, i++;
	str[i] = CH_0+u, i++;
	str[i] = CH_NUL;
}

SHORT msg_get(void)
{
	return msg_code;
}

void msg_open(SHORT code)
{
	if (msg_code == -1)
	{
		msg_code = code;
		msg_type = 0;
	}
}

void msg_open_int(SHORT code, int value)
{
	if (msg_code == -1)
	{
		msg_code = code;
		msg_value = value;
		msg_type = 0;
	}
}

void msg_open_signpost(SHORT code)
{
	if (msg_code == -1)
	{
		msg_code = code;
		msg_type = 1;
	}
}

void msg_open_prompt(SHORT code)
{
	if (msg_code == -1)
	{
		msg_code = code;
		msg_type = 0;
		msg_cursor_flag = TRUE;
	}
}

void msg_close(void)
{
	game_freeze(0, NULL);
	if (msg_type == 1) camera_8028BD34(2);
	msg_scale = 19;
	msg_angle = 90;
	msg_state = 0;
	msg_code = -1;
	msg_index = 0;
	msg_cursor_flag = FALSE;
	msg_next = 0;
	msg_answer = 0;
}

static void msg_draw_back(MESSAGE *msg, CHAR line)
{
	UNUSED Mtx *mtx;
	gfx_translate(GFX_NOPUSH, msg->x, msg->y, 0);
	switch (msg_type)
	{
	case 0:
		if (msg_state == 0 || msg_state == 3)
		{
			gfx_scale(GFX_NOPUSH, 1.0/msg_scale, 1.0/msg_scale, 1);
			gfx_rotate(GFX_NOPUSH, msg_angle*4, 0, 0, 1);
		}
		gDPSetEnvColor(glistp++, 0x00, 0x00, 0x00, 150);
		break;
	case 1:
		if (msg_state == 0 || msg_state == 3)
		{
			gfx_translate(
				GFX_NOPUSH, 65.0 - 65.0/msg_scale, 40.0/msg_scale - 40.0, 0
			);
			gfx_scale(GFX_NOPUSH, 1.0/msg_scale, 1.0/msg_scale, 1);
		}
		gDPSetEnvColor(glistp++, 0xFF, 0xFF, 0xFF, 150);
		break;
	}
	gfx_translate(GFX_PUSH, -7, 5, 0);
	gfx_scale(GFX_NOPUSH, 1.1F, (float)line/5 + 0.1, 1);
	gSPDisplayList(glistp++, gfx_message_box);
	gSPPopMatrix(glistp++, G_MTX_MODELVIEW);
}

static void msg_set_color(CHAR flag, CHAR line)
{
	u8 color;
	if (ISTRUE(flag))
	{
		if (line == 1)
		{
			gDPSetEnvColor(glistp++, 0xFF, 0xFF, 0xFF, 0xFF);
		}
		else if (line == msg_cursor)
		{
			color = 200 + 50*SIN(msg_theta);
			gDPSetEnvColor(glistp++, color, color, color, 0xFF);
		}
		else
		{
			gDPSetEnvColor(glistp++, 200, 200, 200, 0xFF);
		}
	}
	else
	{
		switch (msg_type)
		{
			case 0: break;
			case 1: gDPSetEnvColor(glistp++, 0x00, 0x00, 0x00, 0xFF); break;
		}
	}
}

static void msg_newline(
	CHAR line, CHAR end, char *state, char *space, short *count
)
{
	gSPPopMatrix(glistp++, G_MTX_MODELVIEW);
	if (line == end)
	{
		*state = 1;
		return;
	}
	gfx_translate(GFX_PUSH, 0, 2 - 16*line, 0);
	*count = 0;
	*space = 1;
}

static void msg_fmtint(char *space, short *count)
{
	CHAR d = msg_value/10;
	CHAR u = msg_value - 10*d;
	if (d != 0)
	{
		if (*space != 1) gfx_translate(
			GFX_NOPUSH, font_kerning[CH_SPACE] * *space, 0, 0
		);
		print_lg_char(CH_0+d);
		gfx_translate(GFX_NOPUSH, font_kerning[CH_0+d], 0, 0);
		*space = 1;
		(*count)++;
	}
	else
	{
	}
	if (*space != 1) gfx_translate(
		GFX_NOPUSH, font_kerning[CH_SPACE] * (*space-1), 0, 0
	);
	print_lg_char(CH_0+u);
	gfx_translate(GFX_NOPUSH, font_kerning[CH_0+u], 0, 0);
	(*count)++;
	*space = 1;
}

static void msg_multi(
	CHAR code, CHAR line, short *count, CHAR page, CHAR space, CHAR start
)
{
	CHAR i;
	STATIC unsigned char str_multi[][5] =
	{
		{3, CH_t, CH_h, CH_e},
		{3, CH_y, CH_o, CH_u},
	};
	if (line >= start && line <= start+page)
	{
		if (*count != 0 || space != 1) gfx_translate(
			GFX_NOPUSH, font_kerning[CH_SPACE] * (space-1), 0, 0
		);
		for (i = 0; i < str_multi[code][0]; i++)
		{
			print_lg_char(str_multi[code][1+i]);
			gfx_translate(GFX_NOPUSH, font_kerning[str_multi[code][1+i]], 0, 0);
		}
	}
	count += str_multi[code][0];
}

static unsigned int msg_clamp(SHORT x)
{
	if (x < 0) x = 0;
	return x;
}

static void msg_draw(CHAR flag, MESSAGE *msg, CHAR start)
{
	UNUSED int i;
	UNUSED int n;
	unsigned char c;
	const unsigned char *str = segment_to_virtual(msg->str);
	char line = 1;
	char end;
	char state = 0;
	UNUSED char mark = 0;
	char space = 1;
	char page = msg->line;
	short index;
	short count = 0;
	if (msg_state == 2) end = 1 + 2*page;
	else                end = 1 +   page;
	gSPDisplayList(glistp++, gfx_lgfont_start);
	index = msg_index;
	if (msg_state == 2) gfx_translate(GFX_NOPUSH, 0, msg_scroll, 0);
	gfx_translate(GFX_PUSH, 0, 2 - 16*line, 0);
	while (state == 0)
	{
		msg_set_color(flag, line);
		c = str[index];
		switch (c)
		{
		case CH_NUL:
			state = 2;
			gSPPopMatrix(glistp++, G_MTX_MODELVIEW);
			break;
		case CH_LF:
			line++;
			msg_newline(line, end, &state, &space, &count);
			break;
		case CH_DAKUTEN:
			mark = 1;
			break;
		case CH_HANDAKUTEN:
			mark = 2;
			break;
		case CH_SPACE:
			space++;
			count++;
			break;
		case CH_TAB:
			space += 2;
			count += 2;
			break;
		case CH_the:
			msg_multi(0, line, &count, page, space, start);
			space = 1;
			break;
		case CH_you:
			msg_multi(1, line, &count, page, space, start);
			space = 1;
			break;
		case CH_FMTINT:
			msg_fmtint(&space, &count);
			break;
		default:
			if (line >= start && line <= start+page)
			{
				if (count != 0 || space != 1) gfx_translate(
					GFX_NOPUSH, font_kerning[CH_SPACE] * (space-1), 0, 0
				);
				print_lg_char(c);
				gfx_translate(GFX_NOPUSH, font_kerning[c], 0, 0);
				space = 1;
				count++;
			}
		}
		index++;
	}
	gSPDisplayList(glistp++, gfx_lgfont_end);
	if (msg_state == 1)
	{
		if (state == 2) msg_next = -1;
		else            msg_next = index;
	}
	msg_cursor_line = line;
}

static void msg_draw_cursor(void)
{
	if (msg_state == 1) cursor_proc(CURSOR_H, &msg_cursor, 1, 2);
	gfx_translate(GFX_NOPUSH, 9 + 56*(msg_cursor-1), 2 - 16*msg_cursor_line, 0);
	if (msg_type == 0) {gDPSetEnvColor(glistp++, 0xFF, 0xFF, 0xFF, 0xFF);}
	else               {gDPSetEnvColor(glistp++, 0x00, 0x00, 0x00, 0xFF);}
	gSPDisplayList(glistp++, gfx_message_cursor);
}

static void msg_draw_nextpage(CHAR line)
{
	unsigned int frame = gfx_frame;
	if (frame & 8) return;
	gfx_translate(GFX_PUSH, 118, 5 + -16*line, 0);
	gfx_scale(GFX_NOPUSH, 0.8F, 0.8F, 1);
	gfx_rotate(GFX_NOPUSH, -90, 0, 0, 1);
	if (msg_type == 0) {gDPSetEnvColor(glistp++, 0xFF, 0xFF, 0xFF, 0xFF);}
	else               {gDPSetEnvColor(glistp++, 0x00, 0x00, 0x00, 0xFF);}
	gSPDisplayList(glistp++, gfx_message_cursor);
	gSPPopMatrix(glistp++, G_MTX_MODELVIEW);
}

static void msg_proc_endsound(SHORT msg)
{
	STATIC s16 battle[] = {17, 114, 128, 117, 150};
	STATIC s16 fanfare[] = {5, 9, 55, 164};
	STATIC s16 se7_1e[] = {10, 11, 12, 13, 14};
	STATIC s16 bgmstop[] = {17, 115, 116, 118, 152};
	SHORT i;
	for (i = 0; i < 5; i++)
	{
		if (battle[i] == msg)
		{
			Na_SeqUnmute(0, 60);
			Na_BgmPlay(0, NA_BGM_BATTLE, 0);
			return;
		}
	}
	for (i = 0; i < 4; i++)
	{
		if (fanfare[i] == msg && msg_cursor == 1)
		{
			Na_Fanfare();
			return;
		}
	}
	for (i = 0; i < 5; i++)
	{
		if (se7_1e[i] == msg && msg_cursor == 1)
		{
			Na_FixSePlay(NA_SE7_1E);
			return;
		}
	}
	for (i = 0; i < 5; i++)
	{
		if (bgmstop[i] == msg)
		{
			Na_SeqFadeout(0, 1);
			return;
		}
	}
}

static void msg_proc(void)
{
	MESSAGE **msgtab = segment_to_virtual(msg_table);
	MESSAGE *msg = segment_to_virtual(msgtab[msg_code]);
	CHAR line;
	if (msg == segment_to_virtual(NULL))
	{
		msg_code = -1;
		return;
	}
	switch (msg_state)
	{
	case 0:
		if (msg_angle == 90)
		{
			Na_MessageSound(msg_code);
			Na_FixSePlay(NA_SE7_04);
		}
		if (msg_type == 0)
		{
			msg_angle -= 90/12.0;
			msg_scale -= 18/12.0;
		}
		else
		{
			msg_angle -= 90/9.0;
			msg_scale -= 18/9.0;
		}
		if (msg_angle == 0)
		{
			msg_state = 1;
			msg_cursor = 1;
		}
		line = 1;
		break;
	case 1:
		msg_angle = 0;
		if ((contp->down & A_BUTTON) || (contp->down & B_BUTTON))
		{
			if (msg_next == -1)
			{
				msg_proc_endsound(msg_code);
				msg_state = 3;
			}
			else
			{
				msg_state = 2;
				Na_FixSePlay(NA_SE7_13);
			}
		}
		line = 1;
		break;
	case 2:
		msg_scroll += 2*msg->line;
		if (msg_scroll >= 16*msg->line)
		{
			msg_index = msg_next;
			msg_state = 1;
			msg_scroll = 0;
		}
		line = 1 + msg_scroll/16;
		break;
	case 3:
		if (msg_angle == 20)
		{
			game_freeze(0, NULL);
			Na_FixSePlay(NA_SE7_05);
			if (msg_type == 1) camera_8028BD34(2);
			msg_answer = msg_cursor;
		}
		msg_angle += 90/9;
		msg_scale += 18/9;
		if (msg_angle == 90)
		{
			msg_state = 0;
			msg_code = -1;
			msg_index = 0;
			msg_cursor_flag = FALSE;
			msg_next = 0;
			msg_answer = 0;
		}
		line = 1;
		break;
#ifdef __GNUC__
	default: __builtin_unreachable();
#endif
	}
	msg_draw_back(msg, msg->line);
#ifdef sgi
	gDPSetScissor(
		glistp++, G_SC_NON_INTERLACE,
		msg_clamp(msg->x),
		msg_clamp(SCREEN_HT-msg->y),
		msg_clamp(msg->x+132),
		msg_clamp(SCREEN_HT-msg->y + 80*msg->line/5)
	);
#else
	gDPSetScissorFrac(
		glistp++, G_SC_NON_INTERLACE,
		msg_clamp(msg->x) << 2,
		msg_clamp(SCREEN_HT-msg->y) << 2,
		msg_clamp(msg->x+132) << 2,
		msg_clamp(SCREEN_HT-msg->y + 80*msg->line/5) << 2
	);
#endif
	msg_draw(FALSE, msg, line);
	if (msg_next == -1 && ISTRUE(msg_cursor_flag)) msg_draw_cursor();
	gDPSetScissor(glistp++, G_SC_NON_INTERLACE, 2, 2, SCREEN_WD-4, SCREEN_HT-4);
	if (msg_next != -1 && msg_state == 1) msg_draw_nextpage(msg->line);
}

static s16 menu_code = -1;

void menu_open(SHORT code)
{
	if (menu_code == -1) menu_code = code;
}

#ifdef ENGLISH
#include "caption.en_us.h"
#endif

static u16 caption_alpha = 0;
static s16 caption_code = -1;
static s16 caption_frame = -1;
static s16 caption_timer = 0;
static short caption_x;
static short caption_y;

void staff_clear(void)
{
	caption_alpha = 0;
}

void staff_draw_start(void)
{
	gSPDisplayList(glistp++, gfx_print_1cyc_start);
	gDPSetEnvColor(glistp++, 0xFF, 0xFF, 0xFF, caption_alpha);
}

void staff_draw_end(void)
{
	gSPDisplayList(glistp++, gfx_print_1cyc_end);
	if (caption_alpha < 250)    caption_alpha += 25;
	else                        caption_alpha = 0xFF;
}

static UCHAR staff_cvt(UCHAR c)
{
	if (c >= 'A' && c <= 'Z') return CH_A + c-'A';
	if (c >= 'a' && c <= 'z') return CH_A + c-'a';
	if (c == ' ') return CH_SPACE;
	if (c == '.') return CH8_PERIOD;
	if (c == '3') return CH_3;
	if (c == '4') return CH_4;
	if (c == '6') return CH_6;
	return CH_SPACE;
}

void staff_print(SHORT x, SHORT y, const char *str)
{
	int i = 0;
	unsigned char c;
	unsigned char buf[100];
	c = str[i];
	while (c != '\0')
	{
		buf[i] = staff_cvt(c);
		i++;
		c = str[i];
	}
	buf[i] = CH_NUL;
	print_8(x, y, buf);
}

void caption_open(SHORT x, SHORT y, SHORT code, SHORT frame)
{
	if (caption_code == -1)
	{
		caption_code = code;
		caption_frame = frame;
		caption_timer = 0;
		caption_x = x;
		caption_y = y;
		caption_alpha = 0;
	}
}

void caption_draw(void)
{
	SHORT x;
	if (caption_code == -1) return;
	gfx_screenproj();
	gSPDisplayList(glistp++, gfx_lgfont_start);
	gDPSetEnvColor(glistp++, 0xFF, 0xFF, 0xFF, caption_alpha);
	x = str_center_x(caption_x, caption_table[caption_code], 10);
	print_lg(x, SCREEN_HT-caption_y, caption_table[caption_code]);
	gSPDisplayList(glistp++, gfx_lgfont_end);
	if (caption_timer <                5)   caption_alpha += 50;
	if (caption_timer > caption_frame+ 5)   caption_alpha -= 50;
	if (caption_timer > caption_frame+10)
	{
		caption_code = -1;
		caption_alpha = 0;
		caption_timer = 0;
		return;
	}
	caption_timer++;
}

extern Gfx gfx_grounds_0700EA58[];
extern Gfx gfx_grounds_0700F2E8[];

static void opening_draw(void)
{
	MESSAGE **msgtab = segment_to_virtual(msg_table);
	MESSAGE *msg = segment_to_virtual(msgtab[msg_code]);
	unsigned char *str = segment_to_virtual(msg->str);
	gfx_translate(GFX_PUSH, 97, 118, 0);
	gDPSetEnvColor(glistp++, 0xFF, 0xFF, 0xFF, caption_alpha);
	gSPDisplayList(glistp++, gfx_grounds_0700EA58);
	gSPPopMatrix(glistp++, G_MTX_MODELVIEW);
	gSPDisplayList(glistp++, gfx_lgfont_start);
	gDPSetEnvColor(glistp++, 20, 20, 20, caption_alpha);
	print_lg(38, 142, str);
	gDPSetEnvColor(glistp++, 0xFF, 0xFF, 0xFF, 0xFF);
	gSPDisplayList(glistp++, gfx_lgfont_end);
	gDPSetEnvColor(glistp++, 200, 80, 120, caption_alpha);
	gSPDisplayList(glistp++, gfx_grounds_0700F2E8);
	if (caption_timer == 0)     caption_alpha = 0;
	if (caption_timer <  20)    caption_alpha += 10;
	if (caption_timer > 250)    caption_alpha -= 10;
	if (caption_timer > 270)
	{
		caption_code = -1;
		caption_alpha = 0;
		msg_code = -1;
		caption_timer = 0;
		return;
	}
	caption_timer++;
}

void cannon_reticle_draw(void)
{
	gfx_translate(GFX_PUSH, SCREEN_WD/2, SCREEN_HT/2, 0);
	gDPSetEnvColor(glistp++, 50, 50, 50, 180);
	gfx_translate(GFX_PUSH, -20, -8, 0);
	gSPDisplayList(glistp++, gfx_message_cursor);
	gSPPopMatrix(glistp++, G_MTX_MODELVIEW);
	gfx_translate(GFX_PUSH, 20, 8, 0);
	gfx_rotate(GFX_NOPUSH, 180, 0, 0, 1);
	gSPDisplayList(glistp++, gfx_message_cursor);
	gSPPopMatrix(glistp++, G_MTX_MODELVIEW);
	gfx_translate(GFX_PUSH, 8, -20, 0);
	gfx_rotate(GFX_NOPUSH, 90, 0, 0, 1);
	gSPDisplayList(glistp++, gfx_message_cursor);
	gSPPopMatrix(glistp++, G_MTX_MODELVIEW);
	gfx_translate(GFX_PUSH, -8, 20, 0);
	gfx_rotate(GFX_NOPUSH, -90, 0, 0, 1);
	gSPDisplayList(glistp++, gfx_message_cursor);
	gSPPopMatrix(glistp++, G_MTX_MODELVIEW);
	gSPPopMatrix(glistp++, G_MTX_MODELVIEW);
}

s8 redcoin_count;
static s8 camera_cursor = 1;
s8 pausemenu_level = 1;

void pausemenu_init(void)
{
	redcoin_count = 0;
}

static void pausemenu_init_course(void)
{
	if (camera_80288624(0) == 1)    camera_cursor = 1;
	else                            camera_cursor = 2;
}

static void menu_draw_back(void)
{
	gfx_translate(GFX_PUSH, 0, SCREEN_HT, 0);
	gfx_scale(GFX_NOPUSH, 2.6F, 3.4F, 1);
	gDPSetEnvColor(glistp++, 0x00, 0x00, 0x00, 110);
	gSPDisplayList(glistp++, gfx_message_box);
	gSPPopMatrix(glistp++, G_MTX_MODELVIEW);
}

static void pausemenu_put_redcoin(SHORT x, SHORT y)
{
	unsigned int frame = gfx_frame;
	gfx_translate(GFX_PUSH, x, y, 0);
	gfx_scale(GFX_NOPUSH, 0.2F, 0.2F, 1);
	gDPSetRenderMode(glistp++, G_RM_TEX_EDGE, G_RM_TEX_EDGE2);
	switch (frame & 6)
	{
	case 0: gSPDisplayList(glistp++, gfx_redcoin_0); break;
	case 2: gSPDisplayList(glistp++, gfx_redcoin_1); break;
	case 4: gSPDisplayList(glistp++, gfx_redcoin_2); break;
	case 6: gSPDisplayList(glistp++, gfx_redcoin_3); break;
	}
	gDPSetRenderMode(glistp++, G_RM_AA_ZB_OPA_SURF, G_RM_AA_ZB_OPA_SURF2);
	gSPPopMatrix(glistp++, G_MTX_MODELVIEW);
}

static void pausemenu_draw_redcoin(void)
{
	CHAR i;
	for (i = 0; i < redcoin_count; i++) pausemenu_put_redcoin(290 - 20*i, 16);
}

static void pausemenu_draw_course(void)
{
	STATIC unsigned char str_course[] = {STR_COURSE};
	STATIC unsigned char str_my_score[] = {STR_MY_SCORE};
	STATIC unsigned char str_star[] = {CH_STAR, CH_NUL};
	STATIC unsigned char str_nostar[] = {CH_NOSTAR, CH_NUL};
	unsigned char buf[4];
	unsigned char **coursetab = segment_to_virtual(course_name);
	unsigned char *coursename;
	unsigned char **leveltab = segment_to_virtual(level_name);
	unsigned char *levelname;
	UCHAR course = course_index-1;
	UCHAR star = save_get_star(course_index-1);
	gSPDisplayList(glistp++, gfx_print_1cyc_start);
	gDPSetEnvColor(glistp++, 0xFF, 0xFF, 0xFF, msg_alpha);
	if (course < 15)
	{
		print_coin(1, file_index-1, course, 178, 103);
		print_star(file_index-1, course, 118, 103);
	}
	gSPDisplayList(glistp++, gfx_print_1cyc_end);
	gSPDisplayList(glistp++, gfx_lgfont_start);
	gDPSetEnvColor(glistp++, 0xFF, 0xFF, 0xFF, msg_alpha);
	if (course < 15 && save_star_count(course) != 0)
	{
		print_lg(62, 121, str_my_score);
	}
	coursename = segment_to_virtual(coursetab[course]);
	if (course < 15)
	{
		print_lg(63, 157, str_course);
		itostr(course_index, buf);
		print_lg(100, 157, buf);
		levelname = segment_to_virtual(leveltab[
			6*(course_index-1) + (pausemenu_level-1)
		]);
		if (star & (1 << (pausemenu_level-1)))
		{
			print_lg(98, 140, str_star);
		}
		else
		{
			print_lg(98, 140, str_nostar);
		}
		print_lg(116, 140, levelname);
		print_lg(117, 157, &coursename[3]);
	}
	else
	{
		print_lg(94, 157, &coursename[3]);
	}
	gSPDisplayList(glistp++, gfx_lgfont_end);
}

static void pausemenu_proc_camera(SHORT x, SHORT y, s8 *cursor, SHORT space)
{
	STATIC unsigned char str_lakitu_mario[] = {STR_LAKITU_MARIO};
	STATIC unsigned char str_lakitu_stop[] = {STR_LAKITU_STOP};
	STATIC unsigned char str_normal_up_close[] = {STR_NORMAL_UP_CLOSE};
	STATIC unsigned char str_normal_fixed[] = {STR_NORMAL_FIXED};
	cursor_proc(CURSOR_H, cursor, 1, 2);
	gSPDisplayList(glistp++, gfx_lgfont_start);
	gDPSetEnvColor(glistp++, 0xFF, 0xFF, 0xFF, msg_alpha);
	print_lg(x+ 14, y+ 2, str_lakitu_mario);
	print_lg(x+  3, y-13, str_normal_up_close);
	print_lg(x+124, y+ 2, str_lakitu_stop);
	print_lg(x+119, y-13, str_normal_fixed);
	gSPDisplayList(glistp++, gfx_lgfont_end);
	gfx_translate(GFX_PUSH, x + space*(*cursor-1), y+2, 0);
	gDPSetEnvColor(glistp++, 0xFF, 0xFF, 0xFF, msg_alpha);
	gSPDisplayList(glistp++, gfx_message_cursor);
	gSPPopMatrix(glistp++, G_MTX_MODELVIEW);
	switch (*cursor)
	{
	case 1: camera_80288624(1); break;
	case 2: camera_80288624(2); break;
	}
}

static void pausemenu_proc_course(SHORT x, SHORT y, s8 *cursor, SHORT space)
{
	STATIC unsigned char str_continue[] = {STR_CONTINUE};
	STATIC unsigned char str_exit_course[] = {STR_EXIT_COURSE};
	STATIC unsigned char str_set_camera_angle_with_r[] =
		{STR_SET_CAMERA_ANGLE_WITH_R};
	cursor_proc(CURSOR_V, cursor, 1, 3);
	gSPDisplayList(glistp++, gfx_lgfont_start);
	gDPSetEnvColor(glistp++, 0xFF, 0xFF, 0xFF, msg_alpha);
	print_lg(x+10, y- 2, str_continue);
	print_lg(x+10, y-17, str_exit_course);
	if (*cursor != 3)
	{
		print_lg(x+10, y-33, str_set_camera_angle_with_r);
		gSPDisplayList(glistp++, gfx_lgfont_end);
		gfx_translate(GFX_PUSH, x-4, y-2 - space*(*cursor-1), 0);
		gDPSetEnvColor(glistp++, 0xFF, 0xFF, 0xFF, msg_alpha);
		gSPDisplayList(glistp++, gfx_message_cursor);
		gSPPopMatrix(glistp++, G_MTX_MODELVIEW);
	}
	if (*cursor == 3) pausemenu_proc_camera(x-42, y-42, &camera_cursor, 110);
}

static void pausemenu_draw_scorebox(SHORT x, SHORT y)
{
	gfx_translate(GFX_PUSH, x-78, y-32, 0);
	gfx_scale(GFX_NOPUSH, 1.2F, 0.8F, 1);
	gDPSetEnvColor(glistp++, 0x00, 0x00, 0x00, 105);
	gSPDisplayList(glistp++, gfx_message_box);
	gSPPopMatrix(glistp++, G_MTX_MODELVIEW);
	gfx_translate(GFX_PUSH, x+6, y-28, 0);
	gfx_rotate(GFX_NOPUSH, 90, 0, 0, 1);
	gDPSetEnvColor(glistp++, 0xFF, 0xFF, 0xFF, msg_alpha);
	gSPDisplayList(glistp++, gfx_message_cursor);
	gSPPopMatrix(glistp++, G_MTX_MODELVIEW);
	gfx_translate(GFX_PUSH, x-9, y-101, 0);
	gfx_rotate(GFX_NOPUSH, 270, 0, 0, 1);
	gSPDisplayList(glistp++, gfx_message_cursor);
	gSPPopMatrix(glistp++, G_MTX_MODELVIEW);
}

static void pausemenu_init_select(void)
{
	UCHAR cursor;
	if (save_course == 0)
	{
		cursor = 0;
	}
	else
	{
		cursor = save_course-1;
		if (cursor >= 15) cursor = 15;
	}
	msg_cursor = cursor;
}

static void pausemenu_draw_select(void)
{
	STATIC unsigned char str_pause[] = {STR_PAUSE};
	gSPDisplayList(glistp++, gfx_print_1cyc_start);
	gDPSetEnvColor(glistp++, 0xFF, 0xFF, 0xFF, msg_alpha);
	print_16(FONT_GLB, 123, 81, str_pause);
	gSPDisplayList(glistp++, gfx_print_1cyc_end);
}

static void pausemenu_draw_star(SHORT x, SHORT y, SHORT file, SHORT course)
{
	SHORT n = 0;
	unsigned char buf[30];
	STATIC unsigned char str_star[] = {CH_STAR, CH_NUL};
	UCHAR star = save_file_get_star(file, course);
	USHORT count = save_file_star_count(file, course);
	USHORT i = 0;
	if (star & 0100)
	{
		count--;
		print_lg(x+89, y-5, str_star);
	}
	while (n != count)
	{
		if (star & (1 << i))
		{
			buf[2*i] = CH_STAR;
			n++;
		}
		else
		{
			buf[2*i] = CH_NOSTAR;
		}
		buf[2*i+1] = CH_SPACE;
		i++;
	}
	if (count == i && count != 6)
	{
		buf[2*i+0] = CH_NOSTAR;
		buf[2*i+1] = CH_SPACE;
		i++;
	}
	buf[2*i] = CH_NUL;
	print_lg(x+14, y+13, buf);
}

static void pausemenu_proc_score(SHORT x, SHORT y)
{
	unsigned char **coursetab = segment_to_virtual(course_name);
	STATIC unsigned char str_coin_x[] = {CH_COIN, CH_CROSS, CH_NUL};
	unsigned char *coursename;
	unsigned char buf[8];
	SHORT sp3A = msg_cursor;
	cursor_proc(CURSOR_V, &msg_cursor, -1, 16);
	if (msg_cursor == 16) msg_cursor = 0;
	if (msg_cursor == -1) msg_cursor = 15;
	if (msg_cursor != 15)
	{
		while (save_star_count(msg_cursor) == 0)
		{
			if (msg_cursor >= sp3A) msg_cursor++;
			else                    msg_cursor--;
			if (msg_cursor == 15 || msg_cursor == -1)
			{
				msg_cursor = 15;
				break;
			}
		}
	}
	gSPDisplayList(glistp++, gfx_lgfont_start);
	gDPSetEnvColor(glistp++, 0xFF, 0xFF, 0xFF, msg_alpha);
	if (msg_cursor < 15)
	{
		coursename = segment_to_virtual(coursetab[msg_cursor]);
		pausemenu_draw_star(x, y, file_index-1, msg_cursor);
		print_lg(x+34, y-5, str_coin_x);
		itostr(save_get_coin(msg_cursor), buf);
		print_lg(x+54, y-5, buf);
	}
	else
	{
		STATIC unsigned char str_star_x[] = {CH_STAR, CH_CROSS, CH_NUL};
		coursename = segment_to_virtual(coursetab[25]);
		print_lg(x+40, y+13, str_star_x);
		itostr(save_star_range(15, 24), buf);
		print_lg(x+60, y+13, buf);
	}
	print_lg(x-9, y+30, coursename);
	gSPDisplayList(glistp++, gfx_lgfont_end);
}

static SHORT pausemenu_proc(void)
{
	SHORT result;
	switch (msg_state)
	{
	case 0:
		msg_cursor = 1;
		msg_alpha = 0;
		game_freeze(-1, NULL);
		Na_FixSePlay(NA_SE7_02);
		if (course_index > 0 && course_index < 26)
		{
			pausemenu_init_course();
			msg_state = 1;
		}
		else
		{
			pausemenu_init_select();
			msg_state = 2;
		}
		break;
	case 1:
		menu_draw_back();
		pausemenu_draw_course();
		pausemenu_draw_redcoin();
		if (player_data[0].state & PF_QUIT)
		{
			pausemenu_proc_course(99, 93, &msg_cursor, 15);
		}
		if ((contp->down & A_BUTTON) || (contp->down & START_BUTTON))
		{
			game_freeze(0, NULL);
			Na_FixSePlay(NA_SE7_03);
			msg_state = 0;
			menu_code = -1;
			if (msg_cursor == 2)    result = msg_cursor;
			else                    result = 1;
			return result;
		}
		break;
	case 2:
		menu_draw_back();
		pausemenu_draw_select();
		pausemenu_draw_scorebox(160, 143);
		pausemenu_proc_score(104, 60);
		if ((contp->down & A_BUTTON) || (contp->down & START_BUTTON))
		{
			game_freeze(0, NULL);
			Na_FixSePlay(NA_SE7_03);
			menu_code = -1;
			msg_state = 0;
			return 1;
		}
		break;
	}
	if (msg_alpha < 250) msg_alpha += 25;
	return 0;
}

static char savedemo_end = FALSE;
static int savedemo_timer = 0;
static int savedemo_coin = 0;
s8 savemenu_code = 0;

static void savemenu_draw_banner(CHAR code)
{
	STATIC unsigned char str_hi_score[] = {STR_HI_SCORE};
	STATIC unsigned char str_congratulations[] = {STR_CONGRATULATIONS};
	UCHAR color = 200 + 50*SIN(msg_theta);
	gSPDisplayList(glistp++, gfx_print_1cyc_start);
	gDPSetEnvColor(glistp++, color, color, color, 0xFF);
	if (code == 0)  print_16(FONT_GLB, 109, 36, str_hi_score);
	else            print_16(FONT_GLB,  70, 67, str_congratulations);
	gSPDisplayList(glistp++, gfx_print_1cyc_end);
}

static void savemenu_proc_demo(SHORT x, SHORT y)
{
	unsigned char buf[4];
	STATIC unsigned char str16_coin[] = {CH16_COIN, CH_NUL};
	STATIC unsigned char str16_cross[] = {CH16_CROSS, CH_NUL};
	gSPDisplayList(glistp++, gfx_print_1cyc_start);
	gDPSetEnvColor(glistp++, 0xFF, 0xFF, 0xFF, 0xFF);
	print_16(FONT_GLB, x+ 0, y, str16_coin);
	print_16(FONT_GLB, x+16, y, str16_cross);
	itostr(savedemo_coin, buf);
	print_16(FONT_GLB, x+32, y, buf);
	gSPDisplayList(glistp++, gfx_print_1cyc_end);
	if (savedemo_coin >= hud.coin)
	{
		savedemo_end = TRUE;
		savedemo_coin = hud.coin;
		if (save_myscore) savemenu_draw_banner(0);
	}
	else
	{
		if ((savedemo_timer & 1) || hud.coin > 70)
		{
			savedemo_coin++;
			Na_FixSePlay(NA_SE7_15);
			if (
				savedemo_coin == 50 ||
				savedemo_coin == 100 ||
				savedemo_coin == 150
			)
			{
				Na_FixSePlay(NA_SE3_58);
				mario->life++;
			}
		}
		if (hud.coin == savedemo_coin && save_myscore)
		{
			Na_FixSePlay(NA_SE7_22);
		}
	}
}

static void savemenu_proc_star(int code, UCHAR star)
{
	if (hud.coin == savedemo_coin && !(save_star & star))
	{
		if (savemenu_code == 0)
		{
			Na_HiScore();
			savemenu_code = code;
		}
	}
}

static void savemenu_draw(void)
{
	STATIC unsigned char str_course[] = {STR_COURSE};
	UNUSED STATIC unsigned char str_catch[] = {STR_CATCH};
	STATIC unsigned char str_clear[] = {STR_CLEAR};
	STATIC unsigned char str16_star[] = {CH16_STAR, CH_NUL};
	unsigned char **leveltab = segment_to_virtual(level_name);
	unsigned char **coursetab = segment_to_virtual(course_name);
	unsigned char *name;
	unsigned char buf[4];
	if (save_course < 16)
	{
		savemenu_proc_demo(118, 103);
		savemenu_proc_star(1, 1 << (save_level-1));
		if (save_level == 7)    name = segment_to_virtual(leveltab[91]);
		else                    name = segment_to_virtual(leveltab[
			6*(save_course-1)+(save_level-1)
		]);
		gSPDisplayList(glistp++, gfx_lgfont_start);
		itostr(save_course, buf);
		gDPSetEnvColor(glistp++, 0x00, 0x00, 0x00, msg_alpha);
		print_lg(65, 165, str_course);
		print_lg(104, 165, buf);
		gDPSetEnvColor(glistp++, 0xFF, 0xFF, 0xFF, msg_alpha);
		print_lg(63, 167, str_course);
		print_lg(102, 167, buf);
		gSPDisplayList(glistp++, gfx_lgfont_end);
	}
	else if (save_course == 16 || save_course == 17)
	{
		name = segment_to_virtual(coursetab[save_course-1]);
		gSPDisplayList(glistp++, gfx_lgfont_start);
		gDPSetEnvColor(glistp++, 0x00, 0x00, 0x00, msg_alpha);
		print_lg(71, 130, name);
		print_lg(71 + str_width(name) + 10, 130, str_clear);
		gDPSetEnvColor(glistp++, 0xFF, 0xFF, 0xFF, msg_alpha);
		print_lg(69, 132, name);
		print_lg(69 + str_width(name) + 10, 132, str_clear);
		gSPDisplayList(glistp++, gfx_lgfont_end);
		savemenu_draw_banner(1);
		savemenu_proc_demo(118, 111);
		savemenu_proc_star(2, 0);
		return;
	}
	else
	{
		name = segment_to_virtual(leveltab[90]);
		savemenu_proc_demo(118, 103);
		savemenu_proc_star(1, 1 << (save_level-1));
	}
	gSPDisplayList(glistp++, gfx_print_1cyc_start);
	gDPSetEnvColor(glistp++, 0xFF, 0xFF, 0xFF, msg_alpha);
	print_16(FONT_GLB, 55, 77, str16_star);
	gSPDisplayList(glistp++, gfx_print_1cyc_end);
	gSPDisplayList(glistp++, gfx_lgfont_start);
	gDPSetEnvColor(glistp++, 0x00, 0x00, 0x00, msg_alpha);
	print_lg(76, 145, name);
	gDPSetEnvColor(glistp++, 0xFF, 0xFF, 0xFF, msg_alpha);
	print_lg(74, 147, name);
	gSPDisplayList(glistp++, gfx_lgfont_end);
}

static void savemenu_proc_save(SHORT x, SHORT y, s8 *cursor, SHORT space)
{
	STATIC unsigned char str_save_and_continue[] = {STR_SAVE_AND_CONTINUE};
	STATIC unsigned char str_save_and_quit[] = {STR_SAVE_AND_QUIT};
	STATIC unsigned char str_continue_dont_save[] = {STR_CONTINUE_DONT_SAVE};
	cursor_proc(CURSOR_V, cursor, 1, 3);
	gSPDisplayList(glistp++, gfx_lgfont_start);
	gDPSetEnvColor(glistp++, 0xFF, 0xFF, 0xFF, msg_alpha);
	print_lg(x+12, y- 0, str_save_and_continue);
	print_lg(x+12, y-20, str_save_and_quit);
	print_lg(x+12, y-40, str_continue_dont_save);
	gSPDisplayList(glistp++, gfx_lgfont_end);
	gfx_translate(GFX_PUSH, x, y - space*(*cursor-1), 0);
	gDPSetEnvColor(glistp++, 0xFF, 0xFF, 0xFF, msg_alpha);
	gSPDisplayList(glistp++, gfx_message_cursor);
	gSPPopMatrix(glistp++, G_MTX_MODELVIEW);
}

static SHORT savemenu_proc(void)
{
	SHORT result;
	switch (msg_state)
	{
	case 0:
		savemenu_draw();
		if (savedemo_timer > 100 && ISTRUE(savedemo_end))
		{
			msg_state = 1;
			game_freeze(-1, NULL);
			msg_alpha = 0;
			msg_cursor = 1;
		}
		break;
	case 1:
		menu_draw_back();
		savemenu_draw();
		savemenu_proc_save(100, 86, &msg_cursor, 20);
		if (savedemo_timer > 110 && (
			(contp->down & A_BUTTON) || (contp->down & START_BUTTON)
		))
		{
			game_freeze(0, NULL);
			Na_FixSePlay(NA_SE7_1E);
			msg_state = 0;
			menu_code = -1;
			result = msg_cursor;
			savedemo_timer = 0;
			savedemo_coin = 0;
			savedemo_end = FALSE;
			savemenu_code = 0;
			return result;
		}
		break;
	}
	if (msg_alpha < 250) msg_alpha += 25;
	savedemo_timer++;
	return 0;
}

SHORT message_proc(void)
{
	SHORT result = 0;
	gfx_screenproj();
	if (menu_code != -1)
	{
		switch (menu_code)
		{
		case 0: result = pausemenu_proc();  break;
		case 1: result = pausemenu_proc();  break;
		case 2: result = savemenu_proc();   break;
		case 3: result = savemenu_proc();   break;
		}
		msg_theta += 0x1000;
	}
	else if (msg_code != -1)
	{
		if (msg_code == 20)
		{
			opening_draw();
			return result;
		}
		msg_proc();
		msg_theta += 0x1000;
	}
	return result;
}
