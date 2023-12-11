#define _D0     0
#define _D1     1
#define _D2     2
#define _D3     3

#define _DBIAS  (0x400-1)
#define _DOFF   4
#define _DFRAC  ((1<<_DOFF)-1)
#define _DMASK  (0x7fff&~_DFRAC)
#define _DMAX   ((1<<(15-_DOFF))-1)

#define FINITE  -1
#define INF     1
#define NAN     2
