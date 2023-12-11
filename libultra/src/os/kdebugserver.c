#include <ultra64.h>
#include <PR/rdb.h>
#include "osint.h"

/* #ifndef _FINALROM */

static char buffer[256];
static int debug_state = DEBUG_STATE_NULL;
static int numChars = 0;
static int numCharsToReceive = 0;

OSThread __osThreadSave;

#ifdef __GNUC__
__attribute__((unused))
#endif
static void u32_to_string(u32 k, char *s)
{
	s[0] = k >> 24 & 0xFF;
	s[1] = k >> 16 & 0xFF;
	s[2] = k >>  8 & 0xFF;
	s[3] = k >>  0 & 0xFF;
}

static u32 string_to_u32(char *s)
{
	u32 k;
	k  = (s[0] & 0xFF) << 24;
	k |= (s[1] & 0xFF) << 16;
	k |= (s[2] & 0xFF) <<  8;
	k |= (s[3] & 0xFF) <<  0;
	return k;
}

static void send_packet(char *s, int n)
{
#ifdef sgi
	rdbPacket packet;
#else
	rdbPacket packet = {0};
#endif
	int i;
	packet.type = RDB_TYPE_DEBUG;
	packet.length = n;
	for (i = 0; i < n; i++) packet.buf[i] = s[i];
	*(vu32 *)RDB_BASE_REG = *(vu32 *)&packet;
	while (!(__osGetCause() & CAUSE_IP6));
	*(vu32 *)RDB_READ_INTR_REG = 0;
}

static void send(char *s, int n)
{
	int i, end, rem;
	if (!__osRdbWriteOK)
	{
		while (!(__osGetCause() & CAUSE_IP6));
		*(vu32 *)RDB_READ_INTR_REG = 0;
		__osRdbWriteOK = 1;
	}
	rem = n % 3;
	end = n - rem;
	for (i = 0; i < end; i += 3) send_packet(&s[i], 3);
	if (rem > 0) send_packet(&s[end], rem);
}

static void process_command_memory(void)
{
	char *addr = (char *)string_to_u32(&buffer[1]);
	int length = string_to_u32(&buffer[5]);
	send(addr, length);
}

static void process_command_register(void)
{
	send((char *)&__osThreadSave.context, sizeof(__OSThreadContext));
}

void kdebugserver(u32 p)
{
	int i;
	rdbPacket packet;
	*(u32 *)&packet = p;
	for (i = 0; i < packet.length; i++) buffer[numChars++] = packet.buf[i];
	numCharsToReceive -= packet.length;
	switch (debug_state)
	{
	case DEBUG_STATE_NULL:
		switch (packet.buf[0])
		{
		case DEBUG_COMMAND_MEMORY:
			debug_state = DEBUG_STATE_RECEIVE;
			numCharsToReceive = 9 - packet.length;
			break;
		case DEBUG_COMMAND_REGISTER:
			process_command_register();
			debug_state = DEBUG_STATE_NULL;
			numChars = 0;
			numCharsToReceive = 0;
			break;
		default:
			debug_state = DEBUG_STATE_NULL;
			numChars = 0;
			numCharsToReceive = 0;
			break;
		}
		break;
	case DEBUG_STATE_RECEIVE:
		if (numCharsToReceive > 0) break;
		switch (buffer[0])
		{
		case DEBUG_COMMAND_MEMORY:
			process_command_memory();
			debug_state = DEBUG_STATE_NULL;
			numChars = 0;
			numCharsToReceive = 0;
			break;
		default:
			debug_state = DEBUG_STATE_NULL;
			numChars = 0;
			numCharsToReceive = 0;
			break;
		}
		break;
	default:
		debug_state = DEBUG_STATE_NULL;
		numChars = 0;
		numCharsToReceive = 0;
		break;
	}
}

/* #endif */
