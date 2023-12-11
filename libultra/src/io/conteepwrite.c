#include <ultra64.h>
#include "osint.h"
#include "controller.h"
#include "siint.h"

static void __osPackEepWriteData(u8, u8 *);

s32 osEepromWrite(OSMesgQueue *mq, u8 address, u8 *buffer)
{
	s32 ret = 0;
	int i;
	u8 *ptr = (u8 *)&__osEepPifRam;
	__OSContEepromFormat eepromformat;
	OSContStatus sdata;
	if (address > EEPROM_MAXBLOCKS) return -1;
	__osSiGetAccess();
	ret = __osEepStatus(mq, &sdata);
	if (ret != 0 || sdata.type != CONT_EEPROM) return CONT_NO_RESPONSE_ERROR;
	while (sdata.status & CONT_EEPROM_BUSY) __osEepStatus(mq, &sdata);
	__osPackEepWriteData(address, buffer);
	ret = __osSiRawStartDma(OS_WRITE, &__osEepPifRam);
	osRecvMesg(mq, NULL, OS_MESG_BLOCK);
#ifdef sgi
	for (i = 0; i < PIFRAMSIZE; i++) __osEepPifRam.ramarray[i] = 0xFF;
#else
	for (i = 0; i < PIFRAMSIZE-1; i++) __osEepPifRam.ramarray[i] = 0xFF;
#endif
	__osEepPifRam.pifstatus = 0;
	ret = __osSiRawStartDma(OS_READ, &__osEepPifRam);
	__osContLastCmd = CONT_EEPROM_WRITE;
	osRecvMesg(mq, NULL, OS_MESG_BLOCK);
	for (i = 0; i < MAXCONTROLLERS; i++)
		ptr++;
	eepromformat = *(__OSContEepromFormat *)ptr;
	ret = (eepromformat.rxsize & CON_ERR_MASK) >> 4;
	__osSiRelAccess();
	return ret;
}

static void __osPackEepWriteData(u8 address, u8 *buffer)
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
	eepromformat.txsize = 10;
	eepromformat.rxsize = 1;
	eepromformat.cmd = CONT_EEPROM_WRITE;
	eepromformat.address = address;
	for (i = 0; i < EEPROM_BLOCK_SIZE; i++) eepromformat.data[i] = *buffer++;
	for (i = 0; i < MAXCONTROLLERS; i++)
		*ptr++ = 0;
	*(__OSContEepromFormat *)ptr = eepromformat;
	ptr += sizeof(__OSContEepromFormat);
	*ptr = FORMAT_END;
}

s32 __osEepStatus(OSMesgQueue *mq, OSContStatus *data)
{
	s32 ret = 0;
	int i;
	u8 *ptr = (u8 *)&__osEepPifRam;
	__OSContRequesFormat requestformat;
#ifdef sgi
	for (i = 0; i < PIFRAMSIZE; i++) __osEepPifRam.ramarray[i] = 0;
#else
	for (i = 0; i < PIFRAMSIZE-1; i++) __osEepPifRam.ramarray[i] = 0;
#endif
	__osEepPifRam.pifstatus = CONT_FORMAT;
	ptr = (u8 *)&__osEepPifRam;
	for (i = 0; i < MAXCONTROLLERS; i++)
		*ptr++ = 0;
	requestformat.dummy = 0xFF;
	requestformat.txsize = 1;
	requestformat.rxsize = 3;
	requestformat.cmd = CONT_REQUEST;
	requestformat.typeh = 0xFF;
	requestformat.typel = 0xFF;
	requestformat.status = 0xFF;
	requestformat.dummy1 = 0xFF;
	*(__OSContRequesFormat *)ptr = requestformat;
	ptr += sizeof(__OSContRequesFormat);
	*ptr = FORMAT_END;
	ret = __osSiRawStartDma(OS_WRITE, &__osEepPifRam);
	osRecvMesg(mq, NULL, OS_MESG_BLOCK);
	__osContLastCmd = CONT_EEPROM_WRITE;
	ret = __osSiRawStartDma(OS_READ, &__osEepPifRam);
	osRecvMesg(mq, NULL, OS_MESG_BLOCK);
	if (ret) return ret;
	ptr = (u8 *)&__osEepPifRam;
	for (i = 0; i < MAXCONTROLLERS; i++)
		*ptr++ = 0;
	requestformat = *(__OSContRequesFormat *)ptr;
	data->errno = (requestformat.rxsize & CON_ERR_MASK) >> 4;
	data->type = requestformat.typel << 8 | requestformat.typeh;
	data->status = requestformat.status;
	if (data->errno) return data->errno;
	return 0;
}
