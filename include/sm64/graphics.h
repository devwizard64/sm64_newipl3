#ifndef __SM64_GRAPHICS_H__
#define __SM64_GRAPHICS_H__

#define GFX_LEN                 6400
#define FIFO_SIZE               0x1F000
#define FIFO_LEN                (FIFO_SIZE/8)

#define CONTROLLER_MAX          2

#define CONT_EXIT               0x0080

typedef struct frame
{
	Gfx gfx[GFX_LEN];
	SCTASK task;
}
FRAME;

typedef struct controller
{
	short stick_x;
	short stick_y;
	float x;
	float y;
	float d;
	u16 held;
	u16 down;
	OSContStatus *status;
	OSContPad *pad;
}
CONTROLLER;

typedef struct demo
{
	u8 count;
	s8 stick_x;
	s8 stick_y;
	u8 button;
}
DEMO;

extern u16 c_image_a[SCREEN_HT][SCREEN_WD];
extern u16 c_image_b[SCREEN_HT][SCREEN_WD];
extern u16 c_image_c[SCREEN_HT][SCREEN_WD];
extern u16 z_image[SCREEN_HT][SCREEN_WD];
extern u64 gfx_fifo[FIFO_LEN];

extern CONTROLLER controller_data[CONTROLLER_MAX+1];
extern SCTASK *gfx_task;
extern Gfx *glistp;
extern char *gfx_mem;
extern FRAME *framep;
extern u8 cont_bitpattern;
extern s8 eeprom_status;
extern BANK mario_anime_bank;
extern BANK demo_bank;
extern u32 gfx_frame;
extern u16 gfx_vi;
extern u16 gfx_dp;
extern void (*gfx_callback)(void);
extern CONTROLLER *cont1;
extern CONTROLLER *cont2;
extern CONTROLLER *contp;
extern DEMO *demop;
extern u16 demo_index;

extern void gfx_clear(u32 fill);
extern void gfx_vp_clear(Vp *vp, u32 fill);
extern void gfx_vp_scissor(Vp *vp);
extern void gfx_start(void);
extern void gfx_end(void);
extern void gfx_proc(void *arg);

#endif /* __SM64_GRAPHICS_H__ */
