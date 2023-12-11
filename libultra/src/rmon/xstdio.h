#include <stdarg.h>

#define _FSP    0x01
#define _FPL    0x02
#define _FMI    0x04
#define _FNO    0x08
#define _FZE    0x10
#define _WMAX   999
#define _WANT   (EOF-1)

typedef struct
{
	union
	{
		long long ll;
		double ld;
	}
	v;
	char *s;
	int n0, nz0, n1, nz1, n2, nz2, prec, width;
	size_t nchar;
	unsigned int flags;
	char qual;
}
_Pft;

extern void _Ldtob(_Pft *, char);
extern void _Litob(_Pft *, char);
extern int _Printf(
	void *(*)(void *, const char *, size_t), void *, const char *, va_list
);
