#ifndef __SM64_FACE_H__
#define __SM64_FACE_H__

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

#endif /* __SM64_FACE_H__ */
