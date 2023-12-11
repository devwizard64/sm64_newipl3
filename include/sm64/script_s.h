#ifndef __SM64_SCRIPT_S_H__
#define __SM64_SCRIPT_S_H__

#define _B(c, x, y, z)          .byte (c), (x), (y), (z)
#define _C(c, x, y)             .byte (c), (x); .short (y)
#define _H(x, y)                .short (x), (y)
#define _W(x)                   .int (x)
#define _F(x)                   .float (x)
#define _P(x)                   .word (x)

#endif /* __SM64_SCRIPT_S_H__ */
