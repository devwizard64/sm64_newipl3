#include <stdlib.h>
#include <string.h>
#include "xmath.h"
#include "xstdio.h"

#define LDSIGN(x) (((unsigned short *)&(x))[_D0] & 0x8000)

#define ISDIGIT(c) ((c >= '0') && (c <= '9'))
#define MAX_PAD (sizeof(spaces)-1)
#define PAD(s, n) \
	if ((n) > 0) \
	{ \
		int i, j = (n); \
		for (; j > 0; j -= i) \
		{ \
			i = MAX_PAD < (unsigned int)j ? (int)MAX_PAD : j; \
			PUT(s, i); \
		} \
	}
#define PUT(s, n) \
	if ((n) > 0) \
	{ \
		if ((arg = pfn(arg, s, n))) x.nchar += (n); \
		else return x.nchar; \
	}

static char spaces[] = "                                ";
static char zeroes[] = "00000000000000000000000000000000";

static void _Putfld(_Pft *, va_list *, char, char *);

int _Printf(
	void *(*pfn)(void *, const char *, size_t),
	void *arg, const char *fmt, va_list ap
)
{
	_Pft x;
	x.nchar = 0;
	for (;;)
	{
		const char *s = fmt;
		char c;
		const char *t;
		static const char fchar[] = " +-#0";
		static const unsigned int fbit[] = {_FSP, _FPL, _FMI, _FNO, _FZE, 0};
		char ac[32];
		while ((c = *s++) > 0)
		{
			if (c == '%')
			{
				s--;
				break;
			}
		}
		PUT(fmt, s-fmt);
		if (c == '\0') return x.nchar;
		fmt = ++s;
		for (x.flags = 0; (t = strchr(fchar, *s)); s++)
		{
			x.flags |= fbit[t-fchar];
		}
		if (*s == '*')
		{
			x.width = va_arg(ap, int);
			if (x.width < 0)
			{
				x.width = -x.width;
				x.flags |= _FMI;
			}
			s++;
		}
		else
		{
			for (x.width = 0; ISDIGIT(*s); s++)
			{
				if (x.width < 999) x.width = 10*x.width + *s-'0';
			}
		}
		if (*s != '.')
		{
			x.prec = -1;
		}
		else if (*++s == '*')
		{
			x.prec = va_arg(ap, int);
			s++;
		}
		else
		{
			for (x.prec = 0; ISDIGIT(*s); s++)
			{
				if (x.prec < 999) x.prec = 10*x.prec + *s-'0';
			}
		}
		x.qual = strchr("hlL", *s) ? *s++ : '\0';
		if (x.qual == 'l' && *s == 'l')
		{
			x.qual = 'L';
			s++;
		}
		_Putfld(&x, &ap, *s, ac);
		x.width -= x.n0 + x.nz0 + x.n1 + x.nz1 + x.n2 + x.nz2;
		if (!(x.flags & _FMI)) PAD(spaces, x.width);
		PUT(ac, x.n0);
		PAD(zeroes, x.nz0);
		PUT(x.s, x.n1);
		PAD(zeroes, x.nz1);
		PUT(x.s+x.n1, x.n2);
		PAD(zeroes, x.nz2);
		if (x.flags & _FMI) PAD(spaces, x.width);
		fmt = s + 1;
	}
	return 0;
}

static void _Putfld(_Pft *px, va_list *pap, char code, char *ac)
{
	px->n0 = px->nz0 = px->n1 = px->nz1 = px->n2 = px->nz2 = 0;
	switch (code)
	{
	case 'c':
		ac[px->n0++] = va_arg(*pap, int);
		break;
	case 'd':
	case 'i':
		if      (px->qual == 'l')   px->v.ll = va_arg(*pap, long);
		else if (px->qual == 'L')   px->v.ll = va_arg(*pap, long long);
		else                        px->v.ll = va_arg(*pap, int);
		if (px->qual == 'h') px->v.ll = (short)px->v.ll;
		if      (px->v.ll < 0)      ac[px->n0++] = '-';
		else if (px->flags & _FPL)  ac[px->n0++] = '+';
		else if (px->flags & _FSP)  ac[px->n0++] = ' ';
		px->s = &ac[px->n0];
		_Litob(px, code);
		break;
	case 'o':
	case 'u':
	case 'x':
	case 'X':
		if      (px->qual == 'l')   px->v.ll = va_arg(*pap, long);
		else if (px->qual == 'L')   px->v.ll = va_arg(*pap, long long);
		else                        px->v.ll = va_arg(*pap, int);
		if      (px->qual == 'h')   px->v.ll = (unsigned short)px->v.ll;
		else if (px->qual == '\0')  px->v.ll = (unsigned int)px->v.ll;
		if (px->flags & _FNO)
		{
			ac[px->n0++] = '0';
			if (code == 'x' || code == 'X') ac[px->n0++] = code;
		}
		px->s = &ac[px->n0];
		_Litob(px, code);
		break;
	case 'e':
	case 'E':
	case 'f':
	case 'g':
	case 'G':
		px->v.ld =
			px->qual == 'L' ? va_arg(*pap, double) : va_arg(*pap, double);
		if      (LDSIGN(px->v.ld))  ac[px->n0++] = '-';
		else if (px->flags & _FPL)  ac[px->n0++] = '+';
		else if (px->flags & _FSP)  ac[px->n0++] = ' ';
		px->s = &ac[px->n0];
		_Ldtob(px, code);
		break;
	case 'n':
		if      (px->qual == 'h') *va_arg(*pap, short *) = px->nchar;
		else if (px->qual == 'l') *va_arg(*pap, long *) = px->nchar;
		else if (px->qual == 'L') *va_arg(*pap, long long *) = px->nchar;
		else                      *va_arg(*pap, int *) = px->nchar;
		break;
	case 'p':
		px->v.ll = (long)va_arg(*pap, void *);
		px->s = &ac[px->n0];
		_Litob(px, 'x');
		break;
	case 's':
		px->s = va_arg(*pap, char *);
		px->n1 = strlen(px->s);
		if (px->prec >= 0 && px->prec < px->n1) px->n1 = px->prec;
		break;
	case '%':
		ac[px->n0++] = '%';
		break;
	default:
		ac[px->n0++] = code;
		break;
	}
}
