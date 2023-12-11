#ifndef __SM64_WEATHER_H__
#define __SM64_WEATHER_H__

extern struct weather *weather;
extern s32 weather_80361408[3];
extern s16 weather_80361414;
extern s16 weather_80361416;
extern s16 lava_80361420[10];
extern Gfx *gfx_weather_lava;
extern s32 lava_80361438;
extern s32 lava_8036143C;
extern s8 weather_80331750;
extern Vtx vtx_weather_snow[];
extern VECS weather_80331788;
extern VECS weather_80331790;
extern VECS weather_80331798;
extern s8 lava_803317A0;
extern Vtx vtx_weather_lava[];

extern Gfx *weather_draw(int code, VECS pos, VECS look, VECS eye);

#endif /* __SM64_WEATHER_H__ */
