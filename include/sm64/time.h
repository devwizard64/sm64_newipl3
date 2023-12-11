#ifndef __SM64_TIME_H__
#define __SM64_TIME_H__

#define TIME_GFXCPU_START       0
#define TIME_GFXCPU_ENDPRC      1
#define TIME_GFXCPU_ENDFRM      2
#define TIME_GFXCPU_ENDRDP      3
#define TIME_GFXCPU_END         4
#define TIME_GFXCPU_MAX         5

#define TIME_GFXRCP_START       0
#define TIME_GFXRCP_ENDRSP      1
#define TIME_GFXRCP_ENDRDP      2
#define TIME_GFXRCP_MAX         3

#define TIME_AUDCPU_MAX         8

#define TIME_AUDRCP_MAX         8

typedef struct time
{
	s16 audcpu_i;
	s16 audrcp_i;
	OSTime gfxcpu[TIME_GFXCPU_MAX];
	OSTime gfxrcp[TIME_GFXRCP_MAX];
	OSTime audcpu[TIME_AUDCPU_MAX];
	OSTime audrcp[TIME_AUDRCP_MAX];
}
TIME;

extern void time_gfxcpu(int);
extern void time_audcpu(void);
extern void time_gfxrcp(int);
extern void time_audrcp(void);
extern void time_draw(void);

#endif /* __SM64_TIME_H__ */
