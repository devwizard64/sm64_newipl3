#include <sm64.h>

extern u16 *txt_glbfont[];
extern Gfx gfx_print_copy_start[];
extern Gfx gfx_print_copy_char[];
extern Gfx gfx_print_copy_end[];

typedef struct dprint
{
	int x;
	int y;
	s16 len;
	char str[50];
}
DPRINT;

static DPRINT *dprint_table[50];
static s16 dprint_index = 0;

static unsigned int dprint_powi(int base, int exponent)
{
	unsigned int x = 1;
	int i;
	for (i = 0; i < exponent; i++) x = x*base;
	return x;
}

static void dprintf_write(
	int value, int base, char *buf, int *index, UCHAR digit, CHAR zero
)
{
	unsigned int power;
	int e = 0;
	int n;
	int i = 0;
	CHAR c;
	char minus = FALSE;
	char pad = ISTRUE(zero) ? '0' : -1;
	if (value != 0)
	{
		if (value < 0)
		{
			value = -value;
			minus = TRUE;
		}
		/* can hang */
		for (;;)
		{
			power = dprint_powi(base, e);
			if (power > (unsigned int)value) break;
			e++;
		}
		if (digit > e)
		{
			for (i = 0; i < digit-e; i++) *(buf+i) = pad;
			if (ISTRUE(minus)) i--;
		}
		if (ISTRUE(minus))
		{
			*(buf+i) = 'M';
			i++;
		}
		for (n = e-1; n >= 0; n--)
		{
			power = dprint_powi(base, n);
			c = value / power;
			if (c < 10) *(buf+i+e-1-n) = '0' + c- 0;
			else        *(buf+i+e-1-n) = 'A' + c-10;
			value -= c*power;
		}
	}
	else
	{
		e = 1;
		if (digit > e)
		{
			for (i = 0; i < digit-e; i++) *(buf+i) = pad;
		}
		*(buf+i) = '0';
	}
	*index += e + i;
}

static void dprintf_read(const char *fmt, int *index, u8 *digit, char *zero)
{
	char buf[10];
	CHAR n = 0;
	SHORT i;
	if (fmt[*index] == '0') *zero = TRUE;
	while (fmt[*index] != 'd' && fmt[*index] != 'x')
	{
		buf[n] = fmt[*index] - '0';
		if (buf[n] < 0 || buf[n] > 9)
		{
			*digit = 0;
			return;
		}
		n++;
		(*index)++;
	}
	if (n == 0) return;
	for (i = 0; i < n-1; i++) *digit = *digit + 10*(n-1-i)*buf[i];
	*digit = *digit + buf[n-1];
}

void dprintf(int x, int y, const char *fmt, int value)
{
	char c = 0;
	char zero = FALSE;
	u8 digit = 0;
	int base = 0;
	int n = 0;
	int i = 0;
	if (!(dprint_table[dprint_index] = malloc(sizeof(DPRINT)))) return;
	dprint_table[dprint_index]->x = x;
	dprint_table[dprint_index]->y = y;
	c = fmt[i];
	while (c != '\0')
	{
		if (c == '%')
		{
			i++;
			dprintf_read(fmt, &i, &digit, &zero);
			if (fmt[i] != 'd' && fmt[i] != 'x') break;
			if (fmt[i] == 'd') base = 10;
			if (fmt[i] == 'x') base = 16;
			i++;
			dprintf_write(
				value, base, &dprint_table[dprint_index]->str[n], &n,
				digit, zero
			);
		}
		else
		{
			dprint_table[dprint_index]->str[n] = c;
			n++;
			i++;
		}
		c = fmt[i];
	}
	dprint_table[dprint_index]->len = n;
	dprint_index++;
}

void dprint(int x, int y, const char *str)
{
	char c = 0;
	int n = 0;
	int i = 0;
	if (!(dprint_table[dprint_index] = malloc(sizeof(DPRINT)))) return;
	dprint_table[dprint_index]->x = x;
	dprint_table[dprint_index]->y = y;
	c = str[i];
	while (c != '\0')
	{
		dprint_table[dprint_index]->str[n] = c;
		n++;
		i++;
		c = str[i];
	}
	dprint_table[dprint_index]->len = n;
	dprint_index++;
}

void dprintc(int x, int y, const char *str)
{
	char c = 0;
	UNUSED u8 digit = 0;
	UNUSED int base = 0;
	int n = 0;
	int i = 0;
	if (!(dprint_table[dprint_index] = malloc(sizeof(DPRINT)))) return;
	c = str[i];
	while (c != '\0')
	{
		dprint_table[dprint_index]->str[n] = c;
		n++;
		i++;
		c = str[i];
	}
	dprint_table[dprint_index]->len = n;
	dprint_table[dprint_index]->x = x - 12*n/2;
	dprint_table[dprint_index]->y = y;
	dprint_index++;
}

static CHAR dprint_cvt(CHAR c)
{
	if (c >= 'A' && c <= 'Z') return 10 + c-'A';
	if (c >= 'a' && c <= 'z') return 10 + c-'a';
	if (c >= '0' && c <= '9') return  0 + c-'0';
	if (c == ' ') return -1;
	if (c == '!') return 36;
	if (c == '#') return 37;
	if (c == '?') return 38;
	if (c == '&') return 39;
	if (c == '%') return 40;
	if (c == '*') return 50;
	if (c == '+') return 51;
	if (c == ',') return 52;
	if (c == '-') return 53;
	if (c == '.') return 54;
	if (c == '/') return 55;
	return -1;
}

static void dprint_draw_txt(CHAR c)
{
	u16 **txt = segment_to_virtual(txt_glbfont);
	gDPPipeSync(glistp++);
	gDPSetTextureImage(glistp++, G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, txt[c]);
	gSPDisplayList(glistp++, gfx_print_copy_char);
}

static void dprint_clamp(int *x, int *y)
{
	if (*x <           10) *x =           10;
	if (*x > SCREEN_WD-20) *x = SCREEN_WD-20;
	if (*y <            5) *y =            5;
	if (*y > SCREEN_HT-20) *y = SCREEN_HT-20;
}

static void dprint_draw_char(int x, int y, int n)
{
	int sx = 12*n + x;
	int sy = SCREEN_HT - (y+16);
	unsigned int ux;
	unsigned int uy;
	dprint_clamp(&sx, &sy);
	ux = sx;
	uy = sy;
	gSPTextureRectangle(
		glistp++, ux << 2, uy << 2, (ux+16-1) << 2, (uy+16-1) << 2,
		G_TX_RENDERTILE, 0, 0, 4 << 10, 1 << 10
	);
}

void dprint_draw(void)
{
	int i;
	int n;
	CHAR c;
	Mtx *mtx;
	if (dprint_index == 0) return;
	if (!(mtx = gfx_alloc(sizeof(Mtx))))
	{
		dprint_index = 0; /* memory leak */
		return;
	}
	guOrtho(mtx, 0, SCREEN_WD, 0, SCREEN_HT, -10, 10, 1);
	gSPPerspNormalize(glistp++, 0xFFFF);
	gSPMatrix(
		glistp++, K0_TO_PHYS(mtx), G_MTX_PROJECTION|G_MTX_LOAD|G_MTX_NOPUSH
	);
	gSPDisplayList(glistp++, gfx_print_copy_start);
	for (i = 0; i < dprint_index; i++)
	{
		for (n = 0; n < dprint_table[i]->len; n++)
		{
			if ((c = dprint_cvt(dprint_table[i]->str[n])) != -1)
			{
				dprint_draw_txt(c);
				dprint_draw_char(dprint_table[i]->x, dprint_table[i]->y, n);
			}
		}
		free(dprint_table[i]);
	}
	gSPDisplayList(glistp++, gfx_print_copy_end);
	dprint_index = 0;
}
