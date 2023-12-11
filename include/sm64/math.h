#ifndef __SM64_MATH_H__
#define __SM64_MATH_H__

#ifdef __GNUC__
#define sqrtf(x) __builtin_sqrtf(x)
#endif

#define SIN(x)  math_sin[(u16)(x) >> 4]
#define COS(x)  math_cos[(u16)(x) >> 4]

#define CROSS3(x0, y0, x1, y1, x2, y2) \
	(((y1)-(y0))*((x2)-(x1)) - ((x1)-(x0))*((y2)-(y1)))

typedef struct bspline
{
	short time;
	VECS pos;
}
BSPLINE;

extern Mtx mtx_1;
extern VECF vecf_0;
extern VECS vecs_0;
extern VECF vecf_1;
extern VECS vecs_1;
extern float math_sin[];
extern float math_cos[];
extern short math_atan[];

extern float *vecf_cpy(VECF dst, VECF src);
extern float *vecf_set(VECF v, float x, float y, float z);
extern float *vecf_add(VECF v, VECF a);
extern float *vecf_addto(VECF v, VECF a, VECF b);
extern short *vecs_cpy(VECS dst, VECS src);
extern short *vecs_set(VECS v, SHORT x, SHORT y, SHORT z);
extern short *vecs_add(VECS v, VECS a);
extern short *vecs_addto(VECS v, VECS a, VECS b);
extern short *vecs_sub(VECS v, VECS a);
extern float *vecs_to_vecf(VECF dst, VECS src);
extern short *vecf_to_vecs(VECS dst, VECF src);
extern float *vecf_normal(VECF v, VECF v0, VECF v1, VECF v2);
extern float *vecf_cross(VECF v, VECF a, VECF b);
extern float *vecf_normalize(VECF v);
extern void mtxf_cpy(MTXF dst, MTXF src);
extern void mtxf_identity(MTXF m);
extern void mtxf_pos(MTXF m, VECF pos);
extern void mtxf_lookat(MTXF m, VECF eye, VECF look, SHORT angz);
extern void mtxf_coord(MTXF m, VECF pos, VECS ang);
extern void mtxf_joint(MTXF m, VECF pos, VECS ang);
extern void mtxf_billboard(MTXF dst, MTXF src, VECF pos, SHORT angz);
extern void mtxf_stand(MTXF m, VECF vy, VECF pos, SHORT angy);
extern void mtxf_ground(MTXF m, VECF pos, SHORT angy, float radius);
extern void mtxf_cat(MTXF m, MTXF a, MTXF b);
extern void mtxf_scale(MTXF dst, MTXF src, VECF scale);
extern void mtxf_transform(MTXF m, VECS v);
extern void mtxf_to_mtx(Mtx *m, MTXF mf);
extern void mtx_angz(Mtx *m, SHORT angz);
extern void vecf_scenepos(VECF v, MTXF m, MTXF cam);
extern void cartesian_to_polar(
	VECF a,
	VECF b,
	float *dist,
	short *angx,
	short *angy
);
extern void polar_to_cartesian(
	VECF a,
	VECF b,
	float dist,
	SHORT angx,
	SHORT angy
);
extern int convergei(int x, int dst, int inc, int dec);
extern float convergef(float x, float dst, float inc, float dec);
extern short ATAN2(float y, float x);
extern float atan2f(float y, float x);
extern void bspline_init(BSPLINE *b);
extern int bspline_proc(VECF dst);

#endif /* __SM64_MATH_H__ */
