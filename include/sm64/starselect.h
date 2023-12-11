#ifndef __SM64_STARSELECT_H__
#define __SM64_STARSELECT_H__

extern void selectstar_proc(void);
extern void starmenu_init(void);
extern void starmenu_proc(void);
extern long starselect_draw(SHORT code, long status);
extern long starselect_init(SHORT code, long status);
extern long starselect_proc(SHORT code, long status);

#endif /* __SM64_STARSELECT_H__ */
