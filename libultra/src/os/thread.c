#include <ultra64.h>
#include "osint.h"

__OSThreadTail __osThreadTail = {NULL, -1};
OSThread *__osRunQueue = (OSThread *)&__osThreadTail;
OSThread *__osActiveQueue = (OSThread *)&__osThreadTail;
OSThread *__osRunningThread = NULL;
OSThread *__osFaultedThread = NULL;

void __osDequeueThread(register OSThread **queue, register OSThread *t)
{
	register OSThread *pred, *succ;
	pred = (OSThread *)queue;
	succ = pred->next;
	while (succ)
	{
		if (succ == t)
		{
			pred->next = t->next;
			return;
		}
		pred = succ;
		succ = pred->next;
	}
}
