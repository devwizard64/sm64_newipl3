#include <ultra64.h>
#include "controller.h"

s32 osEepromLongWrite(OSMesgQueue *mq, u8 address, u8 *buffer, int length)
{
	s32 ret = 0;
	if (address > EEPROM_MAXBLOCKS) return -1;
	while (length > 0)
	{
		if ((ret = osEepromWrite(mq, address, buffer))) return ret;
		length -= EEPROM_BLOCK_SIZE;
		address++;
		buffer += EEPROM_BLOCK_SIZE;
		osSetTimer(
			&__osEepromTimer, OS_USEC_TO_CYCLES(EEPROM_WAIT), 0,
			&__osEepromTimerQ, &__osEepromTimerMsg
		);
		osRecvMesg(&__osEepromTimerQ, NULL, OS_MESG_BLOCK);
	}
	return ret;
}
