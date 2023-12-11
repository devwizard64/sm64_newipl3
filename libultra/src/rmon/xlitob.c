#include <stdlib.h>
#include <string.h>
#include "xstdio.h"

static char ldigs[] = "0123456789abcdef";
static char udigs[] = "0123456789ABCDEF";

void _Litob(_Pft *px, char code)
{
	char ac[24];
	char *digs = code == 'X' ? udigs : ldigs;
	int base = code == 'o' ? 8 : code != 'x' && code != 'X' ? 10 : 16;
	int i = sizeof(ac);
	unsigned long long ullval = px->v.ll;
	if ((code == 'd' || code == 'i') && px->v.ll < 0) ullval = -ullval;
	if (ullval || px->prec) ac[--i] = digs[ullval % base];
	px->v.ll = ullval / base;
	while (px->v.ll > 0 && i > 0)
	{
		lldiv_t qr = lldiv(px->v.ll, base);
		px->v.ll = qr.quot;
		ac[--i] = digs[qr.rem];
	}
	px->n1 = sizeof(ac) - i;
	memcpy(px->s, &ac[i], px->n1);
	if (px->n1 < px->prec) px->nz0 = px->prec - px->n1;
	if (
		px->prec < 0 && (px->flags & (_FMI|_FZE)) == _FZE &&
		(i = px->width - px->n0 - px->nz0 - px->n1) > 0
	) px->nz0 += i;
}
