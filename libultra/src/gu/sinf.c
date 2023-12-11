#include <ultra64.h>
#include "guint.h"

#pragma weak fsin = __sinf
#pragma weak sinf = __sinf
#define fsin __sinf

static const du P[] =
{
	{{0x3FF00000, 0x00000000}},
	{{0xBFC55554, 0xBC83656D}},
	{{0x3F8110ED, 0x3804C2A0}},
	{{0xBF29F6FF, 0xEEA56814}},
	{{0x3EC5DBDF, 0x0E314BFE}},
};
static const du rpi = {{0x3FD45F30, 0x6DC9C883}};
static const du pihi = {{0x400921FB, 0x50000000}};
static const du pilo = {{0x3E6110B4, 0x611A6263}};
static const fu zero = {0x00000000};

float fsin(float x)
{
	double dx, xsq, poly, dn;
	int n;
	double result;
	int ix, xpt;
	ix = *(int *)&x;
	xpt = ix >> 22;
	xpt &= 0x1FF;
	if (xpt < 0xFF)
	{
		dx = x;
		if (xpt >= 0xE6)
		{
			xsq = dx*dx;
			poly = ((P[4].d*xsq + P[3].d)*xsq + P[2].d)*xsq + P[1].d;
			result = dx + dx*xsq*poly;
			return result;
		}
		return x;
	}
	if (xpt < 0x136)
	{
		dx = x;
		dn = dx*rpi.d;
		n = dn >= 0 ? dn+0.5 : dn-0.5;
		dn = n;
		dx -= dn*pihi.d;
		dx -= dn*pilo.d;
		xsq = dx*dx;
		poly = ((P[4].d*xsq + P[3].d)*xsq + P[2].d)*xsq + P[1].d;
		result = dx + dx*xsq*poly;
		if ((n & 1) == 0) return result;
		return -(float)result;
	}
	if (x != x) return __libm_qnan_f;
	return zero.f;
}
