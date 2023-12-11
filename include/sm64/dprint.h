#ifndef __SM64_DPRINT_H__
#define __SM64_DPRINT_H__

extern void dprintf(int x, int y, const char *fmt, int value);
extern void dprint(int x, int y, const char *str);
extern void dprintc(int x, int y, const char *str);
extern void dprint_draw(void);

#endif /* __SM64_DPRINT_H__ */
