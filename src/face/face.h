#ifndef __FACE_H__
#define __FACE_H__

#include <ultra64.h>
#include <sm64/gbi_ext.h>
#include "dynlist.h"

#ifndef __GNUC__
#define __attribute__(x)
#endif

#define DALIGN                  __attribute__((aligned(4)))
#define BALIGN                  __attribute__((aligned(8)))
#define UNUSED                  __attribute__((unused))
#define FALLTHROUGH             __attribute__((fallthrough))

typedef unsigned int size_t;

extern char __dummy0[];
extern char __dummy1[];
extern char __dummy2[];
extern char __dummy3[];
extern char __dummy4[];
extern char __dummy5[];
extern char __dummy6[];
extern char __dummy7[];
extern char __dummy8[];
extern char __dummy9[];
extern char __dummy10[];
extern char __dummy11[];
extern char __dummy12[];
extern char __dummy13[];
extern char __dummy14[];
extern char __dummy15[];
extern char __dummy16[];
extern char __dummy17[];
extern char __dummy18[];
extern char __dummy19[];
extern char __dummy20[];
extern char __dummy21[];
extern char __dummy22[];
extern char __dummy23[];
extern char __dummy24[];
extern char __dummy25[];
extern char __dummy26[];
extern char __dummy27[];
extern char __dummy28[];
extern char __dummy29[];
extern char __dummy30[];
extern char __dummy31[];
extern char __dummy32[];
extern char __dummy33[];
extern char __dummy34[];
extern char __dummy35[];
extern char __dummy36[];
extern char __dummy37[];
extern char __dummy38[];
extern char __dummy39[];
extern char __dummy40[];
extern char __dummy41[];
extern char __dummy42[];
extern char __dummy43[];
extern char __dummy44[];
extern char __dummy45[];
extern char __dummy46[];
extern char __dummy47[];
extern char __dummy48[];
extern char __dummy49[];
extern char __dummy50[];
extern char __dummy51[];
extern char __dummy52[];
extern char __dummy53[];
extern char __dummy54[];
extern char __dummy55[];
extern char __dummy56[];
extern char __dummy57[];
extern char __dummy58[];
extern char __dummy59[];
extern char __dummy60[];
extern char __dummy61[];
extern char __dummy62[];
extern char __dummy63[];
extern char __dummy64[];
extern char __dummy65[];
extern char __dummy66[];
extern char __dummy67[];
extern char __dummy68[];
extern char __dummy69[];
extern char __dummy70[];
extern char __dummy71[];
extern char __dummy72[];
extern char __dummy73[];
extern char __dummy74[];
extern char __dummy75[];
extern char __dummy76[];
extern char __dummy77[];
extern char __dummy78[];
extern char __dummy79[];
extern char __dummy80[];
extern char __dummy81[];
extern char __dummy82[];
extern char __dummy83[];
extern char __dummy84[];
extern char __dummy85[];
extern char __dummy86[];
extern char __dummy87[];
extern char __dummy88[];
extern char __dummy89[];
extern char __dummy90[];
extern char __dummy91[];
extern char __dummy92[];
extern char __dummy93[];
extern char __dummy94[];
extern char __dummy95[];
extern char __dummy96[];
extern char __dummy97[];
extern char __dummy98[];
extern char __dummy99[];

typedef struct control
{
	int _00;
	char _04[80];
	int _54;
	char _58[48];
	float _88;
	char _8C[20];
	float _A0;
	char _A4[8];
	float _AC;
	char _B0[64];
	struct control *prev;
}
CONTROL;

typedef struct vector
{
	float x;
	float y;
	float z;
}
VECTOR;

typedef struct colour
{
	float r;
	float g;
	float b;
}
COLOUR;

typedef struct box
{
	float min_x;
	float min_y;
	float min_z;
	float max_x;
	float max_y;
	float max_z;
}
BOX;

typedef struct srt
{
	VECTOR s;
	VECTOR r;
	VECTOR t;
}
SRT;

typedef struct dyndata
{
	int count;
	int type;
	void *data;
}
DYNDATA;

typedef struct dynlist
{
	int c;
	const void *p;
	int i;
	VECTOR v;
}
DYNLIST;

typedef struct bank
{
	int index;
	DYNLIST *dynlist;
}
BANK;

extern DYNLIST dyn_ico1[];
extern DYNLIST dyn_spot[];
extern DYNLIST dyn_mario[];
extern DYNDATA dyndata_0400C6DC[];
extern DYNDATA dyndata_0400DE1C[];
extern DYNDATA dyndata_0400F55C[];
extern DYNDATA dyndata_04010C9C[];
extern DYNDATA dyndata_040123DC[];
extern DYNDATA dyndata_04013738[];
extern DYNDATA dyndata_04014E78[];
extern DYNDATA dyndata_040161D4[];
extern DYNDATA dyndata_04017914[];
extern DYNDATA dyndata_04018C70[];
extern DYNDATA dyndata_0401A3B0[];
extern DYNDATA dyndata_0401BAF0[];
extern DYNDATA dyndata_0401D230[];
extern DYNDATA dyndata_0401E970[];
extern DYNDATA dyndata_040200B0[];
extern DYNDATA dyndata_0402140C[];
extern DYNDATA dyndata_04022768[];
extern DYNDATA dyndata_04023EA8[];
extern DYNDATA dyndata_040255E8[];
extern DYNDATA dyndata_04026D28[];
extern DYNDATA dyndata_04028468[];
extern DYNDATA dyndata_04029BA8[];
extern DYNDATA dyndata_0402CA04[];
extern DYNDATA dyndata_0402F860[];
extern DYNDATA dyndata_040326BC[];

extern int face_movement;
extern int face_config_1;
extern float face_config_2;
extern int face_shade_smooth;
extern int face_window_w;
extern int face_window_h;
extern COLOUR face_draw_801A8200;
extern COLOUR face_draw_801A820C;
extern COLOUR face_draw_801A8218;
extern COLOUR face_draw_801A8224;
extern COLOUR face_draw_801A8230;
extern COLOUR face_draw_801A823C;
extern COLOUR face_draw_801A8248;
extern COLOUR face_draw_801A8254;
extern COLOUR face_draw_801A8260;
extern COLOUR face_draw_801A826C;
extern COLOUR face_draw_801A8278[];
extern COLOUR *face_draw_801A8284;
extern void *face_draw_801A8288;
extern void *face_draw_801A828C;
extern int face_draw_801A8290;
extern COLOUR *face_draw_801A8294[];
extern COLOUR *face_draw_801A82A8[];
extern float face_draw_801A82B0[4][4];
extern float face_draw_801A82F0[4][4];
extern int face_draw_801A8330;
extern int face_draw_801A8334;
extern int face_draw_801A8338;
extern int face_object_801A8340[4];
extern float face_object_801A8350;
extern float face_object_801A8354;
extern int face_particle_801A8360;
extern int face_particle_801A8364[];
extern int face_particle_801A83C8[];
extern void *face_dynlist_801A83E0;
extern void *face_dynlist_801A83E4;
extern BOX face_dynlist_801A83E8;
extern int face_dynlist_801A8400;
extern int face_stdio_801A8410;
extern int face_stdio_801A8414[];
extern int face_stdio_801A8430;
extern unsigned int face_stdio_801A8434;
extern unsigned int face_stdio_801A8438;
extern char face_stdio_801A843C[];
extern int face_stdio_801A8450;
extern int face_joint_801A8460;
extern void *face_joint_801A8464;
extern void *face_shape_801A8470;
extern void *face_shape_801A8474;
extern void *face_shape_801A8478;
extern void *face_shape_801A847C;
extern void *face_shape_801A8480;
extern void *face_shape_231;
extern void *face_shape_228;
extern SRT face_shape_801A848C[];
extern SRT face_shape_801A84BC[];
extern SRT face_shape_801A84EC[];
extern void *face_shape_801A851C;
extern void *face_shape_801A8520;
extern void *face_shape_801A8524;
extern void *face_shape_801A8528;
extern void *face_shape_801A852C;
extern void *face_shape_801A8530;
extern void *face_shape_801A8534;
extern void *face_shape_801A8538;
extern void *face_shape_801A853C;
extern void *face_shape_801A8540;
extern void *face_shape_801A8544;
extern void *face_shape_801A8548;
extern void *face_shape_801A854C;
extern void *face_shape_801A8550;
extern void *face_shape_801A8554;
extern void *face_shape_801A8558;
extern void *face_shape_801A855C;
extern void *face_shape_801A8560;
extern void *face_shape_801A8564;
extern void *face_shape_801A8568;
extern void *face_shape_801A856C;
extern void *face_shape_801A8570;
extern void *face_shape_801A8574;
extern void *face_shape_801A8578;
extern void *face_shape_801A857C;
extern void *face_shape_801A8580;
extern void *face_shape_801A8584;
extern void *face_shape_801A8588;
extern void *face_shape_801A858C;
extern void *face_shape_801A8590;
extern void *face_shape_801A8594;
extern void *face_shape_801A8598;
extern void *face_shape_801A859C;
extern void *face_shape_801A85A0;
extern void *face_shape_801A85A4;
extern void *face_shape_801A85A8;
extern void *face_shape_801A85AC;
extern void *face_shape_801A85B0;
extern DYNLIST face_shape_801A85B4[];
extern DYNLIST face_shape_801A8674[];
extern DYNLIST face_shape_801A86BC[];
extern DYNLIST face_shape_801A8734[];
extern DYNLIST face_shape_801A8794[];
extern double face_shape_801A87F8;
extern int face_gfx_801A8800;
extern int face_gfx_801A8804;
extern int face_gfx_801A8808;
extern int face_gfx_801A880C;
extern int face_gfx_801A8810;
extern float face_gfx_801A8814;
extern float face_gfx_801A8818;
extern float face_gfx_801A881C;
extern float face_gfx_801A8820;
extern float face_gfx_801A8824;
extern size_t face_gfx_801A8828;
extern long face_gfx_801A882C;
extern int face_gfx_801A8830;
extern void *face_gfx_801A8834;
extern void *face_gfx_801A8838;
extern void *face_gfx_801A883C;
extern int face_gfx_801A8840;
extern int face_gfx_801A8844;
extern void *face_gfx_801A8848;
extern int face_gfx_801A884C;
extern int face_gfx_801A8850;
extern int face_gfx_801A8854;
extern int face_gfx_801A8858;
extern VECTOR face_gfx_801A885C;
extern void *face_gfx_801A8868;
extern void *face_gfx_801A886C;
extern void *face_gfx_801A8870;
extern void *face_gfx_801A8874;
extern void *face_gfx_801A8878;
extern unsigned int face_gfx_801A887C;
extern int face_gfx_801A8880;
extern int face_gfx_801A8884;
extern void *face_gfx_801A8888;
extern void *face_gfx_801A888C;
extern unsigned int face_gfx_801A8890;
extern BANK face_gfx_801A8894[];
extern u16 txt_hand_0[];
extern u16 txt_hand_1[];
extern Gfx *gfx_red_star[];
extern Gfx *gfx_silver_star[];
extern Gfx *gfx_red_spark[];
extern Gfx *gfx_silver_spark[];
extern Gfx gfx_face_801B5290[];
extern Gfx gfx_face_801B5300[];
extern Gfx gfx_face_801B5318[];
extern int face_gfx_801B5398;
extern float face_gfx_801B539C;
extern int face_gfx_801B53A0;
extern Gfx gfx_face_801B5468[];

extern void face_mem_801780B0(void);
extern int make_scene(void);
extern void face_stdio_8018C7B4(void);
extern void start_timer(const char *);
extern void restart_timer(const char *);
extern void face_stdio_8018D02C(const char *);
extern void stop_timer(const char *);
extern void imin(const char *);
extern void imout(void);
extern void gd_printf(const char *fmt, ...);
extern void face_gfx_8019C418(void *, size_t);
extern void gdm_init(void *, size_t);
extern void gdm_setup(void);
extern void gdm_maketestdl(int);
extern void face_gfx_8019C874(void);
extern void face_gfx_8019C930(OSContPad *);
extern int face_gfx_8019C9C8(void);
extern Gfx *gdm_gettestdl(int);
extern void face_gfx_801A4468(void);
extern long gd_defpup(const char *str, ...);
extern void face_gfx_801A534C(void);
extern void gd_init(void);

#endif /* __FACE_H__ */
