#include <ultra64.h>

extern int osViClock;

s32 osAiSetFrequency(u32 frequency)
{
	register unsigned int dacRate;
	register unsigned char bitRate;
	register float f;
	f = (float)osViClock/frequency + 0.5F;
	dacRate = f;
	if (dacRate < AI_MIN_DAC_RATE) return -1;
	bitRate = dacRate / 66;
	if (bitRate > AI_MAX_BIT_RATE) bitRate = AI_MAX_BIT_RATE;
	IO_WRITE(AI_DACRATE_REG, dacRate-1);
	IO_WRITE(AI_BITRATE_REG, bitRate-1);
	IO_WRITE(AI_CONTROL_REG, AI_CONTROL_DMA_ON);
	return osViClock / (int)dacRate;
}
