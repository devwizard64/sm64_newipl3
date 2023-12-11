#ifndef __SM64_FILESELECT_H__
#define __SM64_FILESELECT_H__

extern void fileback_init(void);
extern void fileback_proc(void);
extern void filetile_init(void);
extern void filetile_proc(void);
extern void filemenu_init(void);
extern void filemenu_proc(void);
extern void *fileselect_draw(int code, SHAPE *shape, void *data);
extern long fileselect_init(SHORT code, long status);
extern long fileselect_proc(SHORT code, long status);

#endif /* __SM64_FILESELECT_H__ */
