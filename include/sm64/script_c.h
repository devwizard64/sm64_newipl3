#ifndef __SM64_SCRIPT_C_H__
#define __SM64_SCRIPT_C_H__

#define _C(c, x, y) ((u32)(u8)(c) << 24 | (u32)(u8)(x) << 16 | (u32)(u16)(y))
#define _H(x, y)    ((u32)(u16)(x) << 16 | (u32)(u16)(y))
#define _W(x)       ((u32)(x))
#define _F(x)       ((u32)(int)(0x10000*(x)))
#define _P(x)       ((unsigned long)(x))

#endif /* __SM64_SCRIPT_C_H__ */
