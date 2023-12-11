#include <ultra64.h>

void guNormalize(float *x, float *y, float *z)
{
	float m = 1 / sqrtf(*x**x + *y**y + *z**z);
	*x *= m;
	*y *= m;
	*z *= m;
}
