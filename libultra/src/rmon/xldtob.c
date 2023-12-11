#include <stdlib.h>
#include <string.h>
#include "xmath.h"
#include "xstdio.h"

static const double pows[] =
{
	1E1, 1E2, 1E4, 1E8, 1E16, 1E32,
	1E64, 1E128, 1E256,
};

static short _Ldunscale(short *, double *);
static void _Genld(_Pft *, char, char *, short, short);

void _Ldtob(_Pft *px, char code)
{
	char ac[32];
	char *p = ac;
	double ldval = px->v.ld;
	short errx, nsig, xexp;
	if (px->prec < 0) px->prec = 6;
	else if (px->prec == 0 && (code == 'g' || code == 'G')) px->prec = 1;
	if ((errx = _Ldunscale(&xexp, &px->v.ld)) > 0)
	{
		memcpy(px->s, errx == NAN ? "NaN" : "Inf", px->n1 = 3);
		return;
	}
	else if (errx == 0)
	{
		nsig = 0, xexp = 0;
	}
	else
	{
		int i, n;
		if (ldval < 0) ldval = -ldval;
		if ((xexp = xexp*30103/100000 - 4) < 0)
		{
			n = (-xexp+3) & ~3, xexp = -n;
			for (i = 0; n > 0; n >>= 1, i++)
			{
				if (n & 1) ldval *= pows[i];
			}
		}
		else if (xexp > 0)
		{
			double factor = 1;
			xexp &= ~3;
			for (n = xexp, i = 0; n > 0; n >>= 1, i++)
			{
				if (n & 1) factor *= pows[i];
			}
			ldval /= factor;
		}
		{
			int gen = px->prec + (code == 'f' ? 10+xexp : 6);
			if (gen > 19) gen = 19;
			for (*p++ = '0'; 0 < gen && 0 < ldval; p += 8)
			{
				int j;
				long lo = ldval;
				if ((gen -= 8) > 0) ldval = (ldval-lo) * 1E8;
				for (p += 8, j = 8; lo > 0 && --j >= 0;)
				{
					ldiv_t qr;
					qr = ldiv(lo, 10);
					*--p = '0'+qr.rem, lo = qr.quot;
				}
				while (--j >= 0) *--p = '0';
			}
			gen = p - &ac[1];
			for (p = &ac[1], xexp += 7; *p == '0'; p++)
				gen--, xexp--;
			nsig = px->prec +
				(code == 'f' ? xexp+1 : code == 'e' || code == 'E' ? 1 : 0);
			if (gen < nsig) nsig = gen;
			if (nsig > 0)
			{
				char drop = gen > nsig && p[nsig] >= '5' ? '9' : '0';
				int n;
				for (n = nsig; p[--n] == drop;)
					nsig--;
				if (drop == '9') p[n]++;
				if (n < 0) p--, nsig++, xexp++;
			}
		}
	}
	_Genld(px, code, p, nsig, xexp);
}

static short _Ldunscale(short *pex, double *px)
{
	unsigned short *ps = (unsigned short *)px;
	short xchar = (ps[_D0] & _DMASK) >> _DOFF;
	if (xchar == _DMAX)
	{
		*pex = 0;
		return (ps[_D0] & _DFRAC) || ps[_D1] || ps[_D2] || ps[_D3] ? NAN : INF;
	}
	else if (xchar > 0)
	{
		ps[_D0] = (ps[_D0] & ~_DMASK) | _DBIAS << _DOFF;
		*pex = xchar - _DBIAS + 1;
		return FINITE;
	}
	else if (xchar < 0)
	{
		return NAN;
	}
	else
	{
		*pex = 0;
		return 0;
	}
}

static void _Genld(_Pft *px, char code, char *p, short nsig, short xexp)
{
	const char point = '.';
	if (nsig <= 0) nsig = 1, p = "0";
	if (code == 'f' || (
		(code == 'g' || code == 'G') && -4 <= xexp && xexp < px->prec
	))
	{
		xexp++;
		if (code != 'f')
		{
			if (!(px->flags & _FNO) && nsig < px->prec) px->prec = nsig;
			if ((px->prec -= xexp) < 0) px->prec = 0;
		}
		if (xexp <= 0)
		{
			px->s[px->n1++] = '0';
			if (px->prec > 0 || (px->flags & _FNO)) px->s[px->n1++] = point;
			if (px->prec < -xexp) xexp = -px->prec;
			px->nz1 = -xexp;
			px->prec += xexp;
			if (px->prec < nsig) nsig = px->prec;
			memcpy(&px->s[px->n1], p, px->n2 = nsig);
			px->nz2 = px->prec - nsig;
		}
		else if (nsig < xexp)
		{
			memcpy(&px->s[px->n1], p, nsig);
			px->n1 += nsig;
			px->nz1 = xexp - nsig;
			if (px->prec > 0 || (px->flags & _FNO))
			{
				px->s[px->n1] = point, px->n2++;
			}
			px->nz2 = px->prec;
		}
		else
		{
			memcpy(&px->s[px->n1], p, xexp);
			px->n1 += xexp;
			nsig -= xexp;
			if (px->prec > 0 || (px->flags & _FNO)) px->s[px->n1++] = point;
			if (px->prec < nsig) nsig = px->prec;
			memcpy(&px->s[px->n1], p+xexp, nsig);
			px->n1 += nsig;
			px->nz1 = px->prec - nsig;
		}
	}
	else
	{
		if (code == 'g' || code == 'G')
		{
			if (nsig < px->prec) px->prec = nsig;
			if (--px->prec < 0) px->prec = 0;
			code = code == 'g' ? 'e' : 'E';
		}
		px->s[px->n1++] = *p++;
		if (px->prec > 0 || (px->flags & _FNO)) px->s[px->n1++] = point;
		if (px->prec > 0)
		{
			if (px->prec < --nsig) nsig = px->prec;
			memcpy(&px->s[px->n1], p, nsig);
			px->n1 += nsig;
			px->nz1 = px->prec - nsig;
		}
		p = &px->s[px->n1];
		*p++ = code;
		if (xexp >= 0)
		{
			*p++ = '+';
		}
		else
		{
			*p++ = '-';
			xexp = -xexp;
		}
		if (xexp >= 100)
		{
			if (xexp >= 1000) *p++ = '0' + xexp/1000, xexp %= 1000;
			*p++ = '0' + xexp/100, xexp %= 100;
		}
		*p++ = '0' + xexp/10, xexp %= 10;
		*p++ = '0' + xexp;
		px->n2 = p - &px->s[px->n1];
	}
	if ((px->flags & (_FMI|_FZE)) == _FZE)
	{
		int n = px->n0 + px->n1 + px->nz1 + px->n2 + px->nz2;
		if (n < px->width) px->nz0 = px->width - n;
	}
}
