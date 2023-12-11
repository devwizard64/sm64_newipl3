#include <ultra64.h>
#include "osint.h"
#include "controller.h"
#include "siint.h"

OSPifRam __osEepPifRam;

static void __osPackEepReadData(u8);

s32 osEepromRead(OSMesgQueue *mq, u8 address, u8 *buffer)
{
	s32 ret = 0;
	int i = 0;
	u8 *ptr = (u8 *)&__osEepPifRam;
	OSContStatus sdata;
	__OSContEepromFormat eepromformat;
	if (address > EEPROM_MAXBLOCKS) return -1;
	__osSiGetAccess();
	ret = __osEepStatus(mq, &sdata);
	if (ret != 0 || sdata.type != CONT_EEPROM) return CONT_NO_RESPONSE_ERROR;
	while (sdata.status & CONT_EEPROM_BUSY) __osEepStatus(mq, &sdata);
	__osPackEepReadData(address);
	ret = __osSiRawStartDma(OS_WRITE, &__osEepPifRam);
	osRecvMesg(mq, NULL, OS_MESG_BLOCK);
#ifdef sgi
	for (i = 0; i < PIFRAMSIZE; i++) __osEepPifRam.ramarray[i] = 0xFF;
#else
	for (i = 0; i < PIFRAMSIZE-1; i++) __osEepPifRam.ramarray[i] = 0xFF;
#endif
	__osEepPifRam.pifstatus = 0;
	ret = __osSiRawStartDma(OS_READ, &__osEepPifRam);
	__osContLastCmd = CONT_EEPROM_READ;
	osRecvMesg(mq, NULL, OS_MESG_BLOCK);
	for (i = 0; i < MAXCONTROLLERS; i++)
		ptr++;
	eepromformat = *(__OSContEepromFormat *)ptr;
	ret = (eepromformat.rxsize & CON_ERR_MASK) >> 4;
	if (ret == 0)
	{
		for (i = 0; i < EEPROM_BLOCK_SIZE; i++)
		{
			*buffer++ = eepromformat.data[i];
		}
	}
	__osSiRelAccess();
	return ret;
}

static void __osPackEepReadData(u8 address)
{
	u8 *ptr = (u8 *)&__osEepPifRam;
	__OSContEepromFormat eepromformat;
	int i;
#ifdef sgi
	for (i = 0; i < PIFRAMSIZE; i++) __osEepPifRam.ramarray[i] = 0xFF;
#else
	for (i = 0; i < PIFRAMSIZE-1; i++) __osEepPifRam.ramarray[i] = 0xFF;
#endif
	__osEepPifRam.pifstatus = CONT_FORMAT;
	eepromformat.txsize = 2;
	eepromformat.rxsize = 8;
	eepromformat.cmd = CONT_EEPROM_READ;
	eepromformat.address = address;
	for (i = 0; i < EEPROM_BLOCK_SIZE; i++) eepromformat.data[i] = 0;
	for (i = 0; i < MAXCONTROLLERS; i++)
		*ptr++ = 0;
	*(__OSContEepromFormat *)ptr = eepromformat;
	ptr += sizeof(__OSContEepromFormat);
	*ptr = FORMAT_END;
}
