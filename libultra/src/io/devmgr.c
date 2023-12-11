#include <ultra64.h>

void __osDevMgrMain(void *arg)
{
	OSIoMesg *mb;
	OSMesg em, dummy;
	s32 ret;
	OSDevMgr *dm;
	dm = arg;
	mb = NULL;
	ret = 0;
	for (;;)
	{
		osRecvMesg(dm->cmdQueue, (OSMesg *)&mb, OS_MESG_BLOCK);
		switch (mb->hdr.type)
		{
		case OS_MESG_TYPE_DMAREAD:
			osRecvMesg(dm->acsQueue, &dummy, OS_MESG_BLOCK);
			ret = dm->dma(OS_READ, mb->devAddr, mb->dramAddr, mb->size);
			break;
		case OS_MESG_TYPE_DMAWRITE:
			osRecvMesg(dm->acsQueue, &dummy, OS_MESG_BLOCK);
			ret = dm->dma(OS_WRITE, mb->devAddr, mb->dramAddr, mb->size);
			break;
		case OS_MESG_TYPE_LOOPBACK:
			osSendMesg(mb->hdr.retQueue, (OSMesg)mb, OS_MESG_NOBLOCK);
			ret = -1;
			break;
		default:
			ret = -1;
			break;
		}
		if (!ret)
		{
			osRecvMesg(dm->evtQueue, &em, OS_MESG_BLOCK);
			osSendMesg(mb->hdr.retQueue, (OSMesg)mb, OS_MESG_NOBLOCK);
			osSendMesg(dm->acsQueue, (OSMesg)0, OS_MESG_NOBLOCK);
		}
	}
}
