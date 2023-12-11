#include <ultra64.h>

static void _bnkfPatchBank(ALBank *bank, s32 offset, s32 table);
static void _bnkfPatchInst(ALInstrument *i, s32 offset, s32 table);
static void _bnkfPatchSound(ALSound *s, s32 offset, s32 table);
static void _bnkfPatchWaveTable(ALWaveTable *w, s32 offset, s32 table);

#define PATCH(x, offset) ((x) = (void *)((char *)(x) + offset))

void alSeqFileNew(ALSeqFile *file, u8 *base)
{
	int offset = (int)base;
	int i;
	for (i = 0; i < file->seqCount; i++)
	{
		PATCH(file->seqArray[i].offset, offset);
	}
}

void alBnkfNew(ALBankFile *file, u8 *table)
{
	int offset = (int)file;
	int woffset = (int)table;
	int i;
	if (file->revision != 0x4231) return;
	for (i = 0; i < file->bankCount; i++)
	{
		PATCH(file->bankArray[i], offset);
		if (file->bankArray[i])
		{
			_bnkfPatchBank(file->bankArray[i], offset, woffset);
		}
	}
}

#ifndef sgi
static
#endif
void _bnkfPatchBank(ALBank *bank, s32 offset, s32 table) 
{
	int i;
	if (bank->flags) return;
	bank->flags = 1;
	if (bank->percussion)
	{
		PATCH(bank->percussion, offset);
		_bnkfPatchInst(bank->percussion, offset, table);
	}
	for (i = 0; i < bank->instCount; i++)
	{
		PATCH(bank->instArray[i], offset);
		if (bank->instArray[i])
		{
			_bnkfPatchInst(bank->instArray[i], offset, table);
		}
	}
}

#ifndef sgi
static
#endif
void _bnkfPatchInst(ALInstrument *inst, s32 offset, s32 table)
{
	int i;
	if (inst->flags) return;
	inst->flags = 1;
	for (i = 0; i < inst->soundCount; i++)
	{
		PATCH(inst->soundArray[i], offset);
		_bnkfPatchSound(inst->soundArray[i], offset, table);
	}
}

#ifndef sgi
static
#endif
void _bnkfPatchSound(ALSound *s, s32 offset, s32 table)
{
	if (s->flags) return;
	s->flags = 1;
	PATCH(s->envelope, offset);
	PATCH(s->keyMap, offset);
	PATCH(s->wavetable, offset);
	_bnkfPatchWaveTable(s->wavetable, offset, table);
}

#ifndef sgi
static
#endif
void _bnkfPatchWaveTable(ALWaveTable *w, s32 offset, s32 table)
{
	if (w->flags) return;
	w->flags = 1;
	w->base += table;
	if (w->type == 0)
	{
		PATCH(w->waveInfo.adpcmWave.book, offset);
		if (w->waveInfo.adpcmWave.loop)
		{
			PATCH(w->waveInfo.adpcmWave.loop, offset);
		}
	}
	else if (w->type == 1)
	{
		if (w->waveInfo.rawWave.loop) PATCH(w->waveInfo.rawWave.loop, offset);
	}
}
