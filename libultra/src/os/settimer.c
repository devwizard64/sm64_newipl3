#include <ultra64.h>
#include "osint.h"

int osSetTimer(
	OSTimer *t, OSTime value, OSTime interval, OSMesgQueue *mq, OSMesg msg
)
{
	OSTime tim;
	t->next = NULL;
	t->prev = NULL;
	t->interval = interval;
	t->value = value != 0 ? value : interval;
	t->mq = mq;
	t->msg = msg;
	tim = __osInsertTimer(t);
	if (__osTimerList->next == t) __osSetTimerIntr(tim);
	return 0;
}
