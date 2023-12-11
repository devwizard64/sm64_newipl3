.create BUILD+"/libultra/src/PR/gspFast3D.fifo.data.bin", 0

prg_init:
	.half 0, 0, 0, prg_init_start
prg_main:
	.half 0, 0, 0, prg_main_start
prg_clip:
	.half 0, 0, 0, prg_ext_start
prg_light:
	.half 0, 0, 0, prg_ext_start
prg_exit:
	.half 0, 0, 0, prg_ext_start

VCONST_028:
	.half 4090, -4090, 32767, 0

.align 16
VCONST_030:
	.half 0, 1, 2, -1, 16384, 4, 1587, 512

VCONST_040:
	.half 0x7FFF, 0xFFF8, 0x0008, 0x0040, 0x0020, 0x8000, 0x01CC, 0xCCCC

VCONST_050:
	.half 1, -1, 1, 1, 1, -1, 1, 1

VCONST_060:
	.half 2, 2, 2, 2, 2, 2, 2, 2

CLIPPING:
	.half 1, 0, 0, 1, 0, 1, 0, 1
	.half 1, 0, 0, -1, 0, 1, 0, -1
	.half 0, 0, 1, -1, 0, 0, 1, 1

LIGHTPROC:
	.half light
	.half 0x7FFF, 0x571D, 0x3A0C

CLIPMASK:
	.half 0x0001, 0x0002, 0x0100, 0x0200, 0x4000, 0x0040

ANCHOR:
	.half 0

EXITPROC:
	.half exit

SEGMENT_MASK:
	.word 0xFFFFFF
	.half case_DMA

NEXTCOMMAND:
	.half cmd_next
	.half case_IMM
	.half case_RDP
	.half cmd_next
	.half case_G_MTX
	.half cmd_next
	.half case_G_MOVEMEM
	.half case_G_VTX
	.half cmd_next
	.half case_G_DL
	.half cmd_next
	.half cmd_next
	.half cmd_next

IMMTAB:
	.half case_G_RDPHALF_CONT
	.half case_G_RDPHALF_2
	.half case_G_RDPHALF_1
.if REVISION <= 199610
	.half case_G_PERSPNORM
.endif
	.half cmd_next
	.half case_G_CLEARGEOMETRYMODE
	.half case_G_SETGEOMETRYMODE
	.half case_G_ENDDL
	.half case_G_SETOTHERMODE_L
	.half case_G_SETOTHERMODE_H
	.half case_G_TEXTURE
	.half case_G_MOVEWORD
	.half case_G_POPMTX
	.half case_G_CULLDL
	.half case_G_TRI1
IMMTAB_END:

CLIPTAB:
	.half ProcClipI
CLIPFOUT:
	.half ProcClipO
	.half ProcClipFI
	.half ProcClipFO
CLIPDRAW:
	.half ProcClipDraw
CLIPPROC:
	.half clip
CLIPNEXT:
	.half ProcClipNext

SYNCNEXT:
	.half cmd_next_sync

RETURN:
	.half 0

.align 4
YIELDPTR:
	.word 0
	.word 0

.align 8
STATE:

.if REVISION <= 199610
DLINDEX:
	.byte 0
.endif

.if REVISION <= 199610
.align 2
PERSPNORM:
	.half 0xFFFF
.else
.align 4
PERSPNORM_H:
	.half 0x0000
PERSPNORM:
	.half 0xFFFF
.endif

.align 4
	.half 0
	.byte 0
	.byte 0
	.word 0xEF080CFF
	.word 0x00000000
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.half 0
	.half 0
	.word 0

LIGHTNO:
	.word 0x80000040
	.word 0
	.word 0

TXTATT:
	.half 0x4000
	.half 0x4000
	.half 0
	.half 0
	.word 0
	.half 0
	.half 0
	.half 0
	.half 0

.align 8
	.word 0
	.word 0

RETURN2:
	.half 0

.if REVISION > 199610
DLINDEX:
	.byte 0
.endif

.align 4
	.word 0

SEGMENT_TABLE:
	.word 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

.align 16
	.half 0x8000, 0x0000, 0x8000, 0x0000
	.word 0, 0

LOOKATX:
	.half 0x0080, 0x0000, 0x0080, 0x0000
	.byte 127, 0, 0, 0
	.word 0
	.byte 0, 0, 0, 0, 0, 0, 0, 0
	.word 0, 0

LOOKATY:
	.word 0, 0
	.byte 0, 127, 0, 0
	.word 0
	.byte 0, 0, 0, 0, 0, 0, 0, 0
	.word 0, 0

LIGHT0:
	.word 0, 0, 0, 0, 0, 0
	.half -8191, 8191, 4, 0

LIGHT1:
	.word 0xFF000000, 0xFF000000
	.word 0, 0, 0, 0, 0, 0

LIGHT2:
	.word 0, 0, 0, 0, 0, 0, 0, 0

LIGHT3:
	.word 0, 0, 0, 0, 0, 0, 0, 0

LIGHT4:
	.asciz "RSP SW Version: 2.0D, 04-01-96"
	.ascii "S"

LIGHT5:
	.ascii "GI U64 GFX SW TEAM: S Anderson, "

LIGHT6:
	.ascii "S Carr, H Cheng, K Luster, R Moo"

LIGHT7:
	.ascii "re, N Pooley, A Srinivasan"
	.byte 10, 0
	.word 0
	.half VIEWPORT
	.half LOOKATX
	.half LOOKATY
	.half LIGHT0
	.half LIGHT1
	.half LIGHT2
	.half LIGHT3
	.half LIGHT4
	.half LIGHT5
	.half LIGHT6
	.half LIGHT7
	.half TXTATT
	.half 0x3F0
	.half 0x400
	.half 0x410
	.half 0x3E0
	.half LIGHTNO
	.half CLIPPING
	.half SEGMENT_TABLE
	.half FOGFACTOR
	.half LIGHT0
	.half 0x420
.if REVISION > 199610
	.half PERSPNORM_H
.endif

.align 16
VIEWPORT:
	.half 0, 0, 0, 0, 0, 0, 0, 0

FOGFACTOR:
	.half 0x100, 0x00, 0xFF
	.word 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

.align 16

.if 0x800-orga() > 0
.fill 0x800-orga()
.endif

.close
