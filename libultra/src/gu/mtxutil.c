#include <ultra64.h>

void guMtxF2L(float mf[4][4], Mtx *m)
{
	int i, j;
	int e1, e2;
	int *ai, *af;
	ai = (int *)&m->m[0][0];
	af = (int *)&m->m[2][0];
	for (i = 0; i < 4; i++)
	{
		for (j = 0; j < 2; j++)
		{
			e1 = 0x10000 * mf[i][2*j+0];
			e2 = 0x10000 * mf[i][2*j+1];
			*ai++ = (e1       & 0xFFFF0000) | (e2 >> 16 & 0xFFFF);
			*af++ = (e1 << 16 & 0xFFFF0000) | (e2       & 0xFFFF);
		}
	}
}

void guMtxL2F(float mf[4][4], Mtx *m)
{
	int i, j;
	unsigned int e1, e2;
	unsigned int *ai, *af;
	int q1, q2;
	ai = (unsigned int *)&m->m[0][0];
	af = (unsigned int *)&m->m[2][0];
	for (i = 0; i < 4; i++)
	{
		for (j = 0; j < 2; j++)
		{
			e1 = (*ai         & 0xFFFF0000) | (*af   >> 16 & 0xFFFF);
			e2 = (*ai++ << 16 & 0xFFFF0000) | (*af++       & 0xFFFF);
			q1 = *(int *)&e1;
			q2 = *(int *)&e2;
			mf[i][2*j+0] = (float)q1 / 0x10000;
			mf[i][2*j+1] = (float)q2 / 0x10000;
		}
	}
}

void guMtxIdentF(float mf[4][4])
{
	int i, j;
	for (i = 0; i < 4; i++)
	{
		for (j = 0; j < 4; j++)
		{
			if (i == j) mf[i][j] = 1;
			else        mf[i][j] = 0;
		}
	}
}

void guMtxIdent(Mtx *m)
{
	float mf[4][4];
	guMtxIdentF(mf);
	guMtxF2L(mf, m);
}
