.include "sm64/asm.inc"

.set fp=32
.set noreorder
.set noat

.align 4

.globl face_dynlist_80183A50
face_dynlist_80183A50:
	lui     $t6, %hi(_face_dynlist_bss-0x5E0+0x610)
	lw      $t6, %lo(_face_dynlist_bss-0x5E0+0x610)($t6)
	lui     $at, %hi(_face_dynlist_bss-0x5E0+0x618)
	sw      $t6, %lo(_face_dynlist_bss-0x5E0+0x618)($at)
	lui     $t7, %hi(face_dynlist_801A83E4)
	lw      $t7, %lo(face_dynlist_801A83E4)($t7)
	lui     $at, %hi(_face_dynlist_bss-0x5E0+0x61C)
	sw      $t7, %lo(_face_dynlist_bss-0x5E0+0x61C)($at)
	jr      $ra
	nop
	jr      $ra
	nop

.globl face_dynlist_80183A80
face_dynlist_80183A80:
	lui     $t6, %hi(_face_dynlist_bss-0x5E0+0x61C)
	lw      $t6, %lo(_face_dynlist_bss-0x5E0+0x61C)($t6)
	lui     $at, %hi(face_dynlist_801A83E4)
	sw      $t6, %lo(face_dynlist_801A83E4)($at)
	lui     $t7, %hi(_face_dynlist_bss-0x5E0+0x618)
	lw      $t7, %lo(_face_dynlist_bss-0x5E0+0x618)($t7)
	lui     $at, %hi(_face_dynlist_bss-0x5E0+0x610)
	sw      $t7, %lo(_face_dynlist_bss-0x5E0+0x610)($at)
	jr      $ra
	nop
	jr      $ra
	nop

.globl face_dynlist_80183AB0
face_dynlist_80183AB0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $at, %hi(_face_dynlist_bss-0x5E0+0x608)
	sw      $0, %lo(_face_dynlist_bss-0x5E0+0x608)($at)
	lui     $at, %hi(_face_dynlist_bss-0x5E0+0x60C)
	sw      $0, %lo(_face_dynlist_bss-0x5E0+0x60C)($at)
	la.u    $t6, _face_dynlist_bss-0x5E0+0x600
	la.l    $t6, _face_dynlist_bss-0x5E0+0x600
	sb      $0, 0x0000($t6)
	lui     $at, %hi(face_dynlist_801A83E0)
	sw      $0, %lo(face_dynlist_801A83E0)($at)
	lui     $at, %hi(face_dynlist_801A83E4)
	sw      $0, %lo(face_dynlist_801A83E4)($at)
	lui     $at, %hi(_face_dynlist_bss-0x5E0+0x620)
	sw      $0, %lo(_face_dynlist_bss-0x5E0+0x620)($at)
	lui     $at, %hi(face_dynlist_801A8400)
	sw      $0, %lo(face_dynlist_801A8400)($at)
	la.u    $a0, _face_dynlist_bss-0x5E0+0x5E8
	la.u    $a1, str_face_dynlist_801B5FE0
	la.l    $a1, str_face_dynlist_801B5FE0
	jal     face_stdio_8018DDD8
	la.l    $a0, _face_dynlist_bss-0x5E0+0x5E8
	b       24$
	nop
24$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl proc_dynlist
proc_dynlist:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0030($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0030($sp)
	nop
	lw      $s0, 0x0000($t6)
	addiu   $t8, $t6, 0x0018
	xori    $t7, $s0, 0xD1D4
	sltu    $t7, $0, $t7
	move    $s0, $t7
	beqz    $s0, 16$
	sw      $t8, 0x0030($sp)
	la.u    $a0, str_face_dynlist_801B5FE8
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B5FE8
16$:
	lw      $t9, 0x0030($sp)
	li      $at, 0x003A
	lw      $t0, 0x0000($t9)
	nop
	beq     $t0, $at, 517$
	nop
.L80183B78:
	lw      $t1, 0x0030($sp)
	nop
	lw      $t2, 0x0000($t1)
	nop
	sltiu   $at, $t2, 0x0038
	beqz    $at, L80184300
	nop
	sll     $t2, $t2, 2
	lui     $at, %hi(face_dynlist_801B7ED8)
	addu    $at, $at, $t2
	lw      $t2, %lo(face_dynlist_801B7ED8)($at)
	nop
	jr      $t2
	nop
.globl L80183BB0
L80183BB0:
	lw      $t3, 0x0030($sp)
	nop
	lw      $a0, 0x0004($t3)
	jal     face_dynlist_8018435C
	nop
	b       507$
	nop
.globl L80183BCC
L80183BCC:
	lw      $t4, 0x0030($sp)
	nop
	lw      $a0, 0x0008($t4)
	lw      $a1, 0x0004($t4)
	jal     dMakeObj
	nop
	b       507$
	nop
.globl L80183BEC
L80183BEC:
	lw      $t5, 0x0030($sp)
	nop
	lw      $a0, 0x0008($t5)
	lw      $a1, 0x0004($t5)
	jal     face_dynlist_8018468C
	nop
	b       507$
	nop
.globl L80183C0C
L80183C0C:
	lw      $t7, 0x0030($sp)
	nop
	lw      $a0, 0x0004($t7)
	jal     face_dynlist_80184740
	nop
	b       507$
	nop
.globl L80183C28
L80183C28:
	lw      $t6, 0x0030($sp)
	nop
	lw      $a0, 0x0008($t6)
	lw      $a1, 0x0004($t6)
	jal     face_dynlist_801847AC
	nop
	b       507$
	nop
.globl L80183C48
L80183C48:
	lw      $t8, 0x0030($sp)
	nop
	lw      $a0, 0x0004($t8)
	jal     face_dynlist_80186CAC
	nop
	b       507$
	nop
.globl L80183C64
L80183C64:
	lw      $t9, 0x0030($sp)
	nop
	lw      $a0, 0x0004($t9)
	jal     dEndGroup
	nop
	b       507$
	nop
.globl L80183C80
L80183C80:
	lw      $t0, 0x0030($sp)
	nop
	lw      $a0, 0x0004($t0)
	jal     dAddToGroup
	nop
	b       507$
	nop
.globl L80183C9C
L80183C9C:
	lw      $t1, 0x0030($sp)
	nop
	lw      $a0, 0x0004($t1)
	jal     dUseObj
	nop
	b       507$
	nop
.globl L80183CB8
L80183CB8:
	lw      $t2, 0x0030($sp)
	nop
	lw      $a0, 0x0004($t2)
	jal     dLinkWith
	nop
	b       507$
	nop
.globl L80183CD4
L80183CD4:
	lw      $t3, 0x0030($sp)
	cfc1    $t4, $31
	li      $a1, 0x0001
	ctc1    $a1, $31
	lwc1    $f4, 0x0010($t3)
	lw      $a0, 0x0004($t3)
	cvt.w.s $f6, $f4
	cfc1    $a1, $31
	nop
	andi    $at, $a1, 0x0004
	andi    $a1, $a1, 0x0078
	beqz    $a1, 141$
	nop
	li      $at, 0x4F000000
	mtc1    $at, $f6
	li      $a1, 0x0001
	sub.s   $f6, $f4, $f6
	ctc1    $a1, $31
	nop
	cvt.w.s $f6, $f6
	cfc1    $a1, $31
	nop
	andi    $at, $a1, 0x0004
	andi    $a1, $a1, 0x0078
	bnez    $a1, 139$
	nop
	mfc1    $a1, $f6
	li      $at, 0x80000000
	b       145$
	or      $a1, $a1, $at
139$:
	b       145$
	li      $a1, -0x0001
141$:
	mfc1    $a1, $f6
	nop
	bltz    $a1, 139$
	nop
145$:
	ctc1    $t4, $31
	li      $a3, 0x0001
	lwc1    $f8, 0x000C($t3)
	cfc1    $t5, $31
	ctc1    $a3, $31
	lw      $a2, 0x0008($t3)
	cvt.w.s $f10, $f8
	cfc1    $a3, $31
	nop
	andi    $at, $a3, 0x0004
	andi    $a3, $a3, 0x0078
	beqz    $a3, 177$
	nop
	li      $at, 0x4F000000
	mtc1    $at, $f10
	li      $a3, 0x0001
	sub.s   $f10, $f8, $f10
	ctc1    $a3, $31
	nop
	cvt.w.s $f10, $f10
	cfc1    $a3, $31
	nop
	andi    $at, $a3, 0x0004
	andi    $a3, $a3, 0x0078
	bnez    $a3, 175$
	nop
	mfc1    $a3, $f10
	li      $at, 0x80000000
	b       181$
	or      $a3, $a3, $at
175$:
	b       181$
	li      $a3, -0x0001
177$:
	mfc1    $a3, $f10
	nop
	bltz    $a3, 175$
	nop
181$:
	ctc1    $t5, $31
	jal     dAddValPtr
	nop
	b       507$
	nop
.globl L80183E08
L80183E08:
	lw      $t7, 0x0030($sp)
	nop
	lw      $a0, 0x0004($t7)
	jal     dLinkWithPtr
	nop
	b       507$
	nop
.globl L80183E24
L80183E24:
	lw      $t6, 0x0030($sp)
	nop
	lw      $a0, 0x0004($t6)
	jal     proc_dynlist
	nop
	b       507$
	nop
.globl L80183E40
L80183E40:
	lw      $t8, 0x0030($sp)
	nop
	lw      $a0, 0x0008($t8)
	jal     face_dynlist_80186E5C
	nop
	b       507$
	nop
.globl L80183E5C
L80183E5C:
	lw      $t9, 0x0030($sp)
	nop
	lwc1    $f12, 0x000C($t9)
	lwc1    $f14, 0x0010($t9)
	lw      $a2, 0x0014($t9)
	jal     dSetInitPos
	nop
	b       507$
	nop
.globl L80183E80
L80183E80:
	lw      $t0, 0x0030($sp)
	nop
	lwc1    $f12, 0x000C($t0)
	lwc1    $f14, 0x0010($t0)
	lw      $a2, 0x0014($t0)
	jal     dSetRelPos
	nop
	b       507$
	nop
.globl L80183EA4
L80183EA4:
	lw      $t1, 0x0030($sp)
	nop
	lwc1    $f12, 0x000C($t1)
	lwc1    $f14, 0x0010($t1)
	lw      $a2, 0x0014($t1)
	jal     dSetWorldPos
	nop
	b       507$
	nop
.globl L80183EC8
L80183EC8:
	lw      $t2, 0x0030($sp)
	nop
	lwc1    $f12, 0x000C($t2)
	lwc1    $f14, 0x0010($t2)
	lw      $a2, 0x0014($t2)
	jal     dSetNormal
	nop
	b       507$
	nop
.globl L80183EEC
L80183EEC:
	lw      $t4, 0x0030($sp)
	nop
	lwc1    $f12, 0x000C($t4)
	lwc1    $f14, 0x0010($t4)
	lw      $a2, 0x0014($t4)
	jal     dSetScale
	nop
	b       507$
	nop
.globl L80183F10
L80183F10:
	lw      $a0, 0x0030($sp)
	jal     face_dynlist_801891F4
	addiu   $a0, $a0, 0x000C
	b       507$
	nop
.globl L80183F24
L80183F24:
	lw      $t3, 0x0030($sp)
	nop
	lwc1    $f12, 0x000C($t3)
	lwc1    $f14, 0x0010($t3)
	lw      $a2, 0x0014($t3)
	jal     dSetRotation
	nop
	b       507$
	nop
.globl L80183F48
L80183F48:
	lw      $t5, 0x0030($sp)
	nop
	lwc1    $f12, 0x000C($t5)
	lwc1    $f14, 0x0010($t5)
	lw      $a2, 0x0014($t5)
	jal     dCofG
	nop
	b       507$
	nop
.globl L80183F6C
L80183F6C:
	lw      $t7, 0x0030($sp)
	nop
	lwc1    $f12, 0x000C($t7)
	lwc1    $f14, 0x0010($t7)
	lw      $a2, 0x0014($t7)
	jal     dShapeOffset
	nop
	b       507$
	nop
.globl L80183F90
L80183F90:
	lw      $t6, 0x0030($sp)
	nop
	lw      $a0, 0x0008($t6)
	lw      $a1, 0x000C($t6)
	jal     dSetParmf
	nop
	b       507$
	nop
.globl L80183FB0
L80183FB0:
	lw      $t8, 0x0030($sp)
	nop
	lw      $a0, 0x0008($t8)
	lw      $a1, 0x0004($t8)
	jal     dSetParmp
	nop
	b       507$
	nop
.globl L80183FD0
L80183FD0:
	lw      $t9, 0x0030($sp)
	nop
	lw      $a0, 0x0008($t9)
	jal     dSetFlags
	nop
	b       507$
	nop
.globl L80183FEC
L80183FEC:
	lw      $t0, 0x0030($sp)
	nop
	lw      $a0, 0x0008($t0)
	jal     dClrFlags
	nop
	b       507$
	nop
.globl L80184008
L80184008:
	lw      $t1, 0x0030($sp)
	nop
	lw      $a0, 0x0008($t1)
	jal     face_dynlist_8018A530
	nop
	b       507$
	nop
.globl L80184024
L80184024:
	lw      $t2, 0x0030($sp)
	nop
	lw      $a0, 0x0004($t2)
	jal     dAttach
	nop
	b       507$
	nop
.globl L80184040
L80184040:
	lw      $t4, 0x0030($sp)
	nop
	lw      $a0, 0x0008($t4)
	lw      $a1, 0x0004($t4)
	jal     dAttachTo
	nop
	b       507$
	nop
.globl L80184060
L80184060:
	lw      $a0, 0x0030($sp)
	jal     dSetAttOffset
	addiu   $a0, $a0, 0x000C
	b       507$
	nop
.globl L80184074
L80184074:
	lw      $t3, 0x0030($sp)
	nop
	lw      $a0, 0x0004($t3)
	jal     dSetNodeGroup
	nop
	b       507$
	nop
.globl L80184090
L80184090:
	lw      $t5, 0x0030($sp)
	nop
	lw      $a0, 0x0004($t5)
	jal     dSetMatGroup
	nop
	b       507$
	nop
.globl L801840AC
L801840AC:
	lw      $t7, 0x0030($sp)
	nop
	lw      $a0, 0x0004($t7)
	jal     dSetSkinShape
	nop
	b       507$
	nop
.globl L801840C8
L801840C8:
	lw      $t6, 0x0030($sp)
	nop
	lw      $a0, 0x0004($t6)
	jal     dSetPlaneGroup
	nop
	b       507$
	nop
.globl L801840E4
L801840E4:
	lw      $t8, 0x0030($sp)
	nop
	lw      $a0, 0x0004($t8)
	jal     dSetShapePtrPtr
	nop
	b       507$
	nop
.globl L80184100
L80184100:
	lw      $t9, 0x0030($sp)
	nop
	lw      $a0, 0x0004($t9)
	jal     dSetShapePtr
	nop
	b       507$
	nop
.globl L8018411C
L8018411C:
	lw      $t0, 0x0030($sp)
	nop
	lw      $a0, 0x0008($t0)
	jal     dSetType
	nop
	b       507$
	nop
.globl L80184138
L80184138:
	lw      $t1, 0x0030($sp)
	nop
	lw      $a0, 0x0008($t1)
	jal     dSetColNum
	nop
	b       507$
	nop
.globl L80184154
L80184154:
	lw      $t2, 0x0030($sp)
	nop
	lwc1    $f12, 0x000C($t2)
	lwc1    $f14, 0x0010($t2)
	lw      $a2, 0x0014($t2)
	jal     dFriction
	nop
	b       507$
	nop
.globl L80184178
L80184178:
	lw      $t4, 0x0030($sp)
	nop
	lwc1    $f12, 0x000C($t4)
	jal     dSetSpring
	nop
	b       507$
	nop
.globl L80184194
L80184194:
	lw      $t3, 0x0030($sp)
	nop
	lwc1    $f12, 0x000C($t3)
	lwc1    $f14, 0x0010($t3)
	lw      $a2, 0x0014($t3)
	jal     dSetAmbient
	nop
	b       507$
	nop
.globl L801841B8
L801841B8:
	lw      $t5, 0x0030($sp)
	nop
	lwc1    $f12, 0x000C($t5)
	lwc1    $f14, 0x0010($t5)
	lw      $a2, 0x0014($t5)
	jal     dSetDiffuse
	nop
	b       507$
	nop
.globl L801841DC
L801841DC:
	lw      $t7, 0x0030($sp)
	nop
	lw      $a0, 0x0008($t7)
	jal     dControlType
	nop
	b       507$
	nop
.globl L801841F8
L801841F8:
	lw      $t6, 0x0030($sp)
	nop
	lw      $a0, 0x0008($t6)
	lw      $a1, 0x000C($t6)
	jal     dSetSkinWeight
	nop
	b       507$
	nop
.globl L80184218
L80184218:
	lw      $t8, 0x0030($sp)
	nop
	lw      $a0, 0x0008($t8)
	jal     dSetID
	nop
	b       507$
	nop
.globl L80184234
L80184234:
	lw      $t9, 0x0030($sp)
	nop
	lw      $a0, 0x0004($t9)
	lw      $a1, 0x0008($t9)
	jal     dSetMaterial
	nop
	b       507$
	nop
.globl L80184254
L80184254:
	lw      $t0, 0x0030($sp)
	nop
	lw      $a0, 0x0004($t0)
	jal     dMapMaterials
	nop
	b       507$
	nop
.globl L80184270
L80184270:
	lw      $t1, 0x0030($sp)
	nop
	lw      $a0, 0x0004($t1)
	jal     dMapVertices
	nop
	b       507$
	nop
.globl L8018428C
L8018428C:
	lw      $t2, 0x0030($sp)
	nop
	lwc1    $f12, 0x000C($t2)
	lwc1    $f14, 0x0010($t2)
	jal     dSetTextureST
	nop
	b       507$
	nop
.globl L801842AC
L801842AC:
	lw      $t4, 0x0030($sp)
	nop
	lw      $a0, 0x0008($t4)
	jal     dUseTexture
	nop
	b       507$
	nop
.globl L801842C8
L801842C8:
	lw      $t3, 0x0030($sp)
	nop
	lw      $a0, 0x0004($t3)
	jal     dMakeNetFromShape
	nop
	b       507$
	nop
.globl L801842E4
L801842E4:
	lw      $t5, 0x0030($sp)
	nop
	lw      $a0, 0x0004($t5)
	jal     dMakeNetFromShapePtrPtr
	nop
	b       507$
	nop
.globl L80184300
L80184300:
	la.u    $a0, str_face_dynlist_801B600C
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B600C
507$:
	lw      $t7, 0x0030($sp)
	nop
	addiu   $t6, $t7, 0x0018
	sw      $t6, 0x0030($sp)
	lw      $t8, 0x0030($sp)
	li      $at, 0x003A
	lw      $t9, 0x0000($t8)
	nop
	bne     $t9, $at, .L80183B78
	nop
517$:
	lui     $v0, %hi(face_dynlist_801A83E4)
	lw      $v0, %lo(face_dynlist_801A83E4)($v0)
	b       523$
	nop
	b       523$
	nop
523$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0030

.globl face_dynlist_8018435C
face_dynlist_8018435C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	nop
	beqz    $t6, 32$
	nop
	lw      $t7, 0x0018($sp)
	nop
	lb      $t8, 0x0000($t7)
	nop
	bnez    $t8, 26$
	nop
	lui     $t9, %hi(_face_dynlist_bss-0x5E0+0x608)
	lw      $t9, %lo(_face_dynlist_bss-0x5E0+0x608)($t9)
	la.u    $a0, _face_dynlist_bss-0x5E0+0x600
	la.u    $a1, str_face_dynlist_801B602C
	lui     $at, %hi(_face_dynlist_bss-0x5E0+0x608)
	addiu   $t0, $t9, 0x0001
	sw      $t0, %lo(_face_dynlist_bss-0x5E0+0x608)($at)
	move    $a2, $t0
	la.l    $a1, str_face_dynlist_801B602C
	jal     sprintf
	la.l    $a0, _face_dynlist_bss-0x5E0+0x600
	b       30$
	nop
26$:
	la.u    $a0, _face_dynlist_bss-0x5E0+0x600
	lw      $a1, 0x0018($sp)
	jal     face_stdio_8018DDD8
	la.l    $a0, _face_dynlist_bss-0x5E0+0x600
30$:
	b       35$
	nop
32$:
	la.u    $t1, _face_dynlist_bss-0x5E0+0x600
	la.l    $t1, _face_dynlist_bss-0x5E0+0x600
	sb      $0, 0x0000($t1)
35$:
	b       37$
	nop
37$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

face_dynlist_80184400:
	addiu   $sp, $sp, -0x0118
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0118($sp)
	lw      $t6, 0x0118($sp)
	nop
	beqz    $t6, 30$
	nop
	lw      $t7, 0x0118($sp)
	nop
	lb      $t8, 0x0000($t7)
	nop
	bnez    $t8, 25$
	nop
	lui     $t9, %hi(_face_dynlist_bss-0x5E0+0x608)
	lw      $t9, %lo(_face_dynlist_bss-0x5E0+0x608)($t9)
	la.u    $a1, str_face_dynlist_801B6034
	lui     $at, %hi(_face_dynlist_bss-0x5E0+0x608)
	addiu   $t0, $t9, 0x0001
	sw      $t0, %lo(_face_dynlist_bss-0x5E0+0x608)($at)
	move    $a2, $t0
	la.l    $a1, str_face_dynlist_801B6034
	jal     sprintf
	addiu   $a0, $sp, 0x0018
	b       28$
	nop
25$:
	lw      $a1, 0x0118($sp)
	jal     face_stdio_8018DDD8
	addiu   $a0, $sp, 0x0018
28$:
	b       32$
	nop
30$:
	addiu   $t1, $sp, 0x0018
	sb      $0, 0x0000($t1)
32$:
	la.u    $a0, _face_dynlist_bss-0x5E0+0x600
	la.l    $a0, _face_dynlist_bss-0x5E0+0x600
	jal     face_stdio_8018DF6C
	addiu   $a1, $sp, 0x0018
	b       38$
	nop
38$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0118
	jr      $ra
	nop

face_dynlist_801844A8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	la.u    $a0, _face_dynlist_bss-0x5E0+0x648
	la.u    $a1, _face_dynlist_bss-0x5E0+0x600
	la.l    $a1, _face_dynlist_bss-0x5E0+0x600
	jal     face_stdio_8018DDD8
	la.l    $a0, _face_dynlist_bss-0x5E0+0x648
	b       9$
	nop
9$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

face_dynlist_801844DC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	la.u    $a0, _face_dynlist_bss-0x5E0+0x600
	la.u    $a1, _face_dynlist_bss-0x5E0+0x648
	la.l    $a1, _face_dynlist_bss-0x5E0+0x648
	jal     face_stdio_8018DDD8
	la.l    $a0, _face_dynlist_bss-0x5E0+0x600
	b       9$
	nop
9$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

face_dynlist_80184510:
	addiu   $sp, $sp, -0x0120
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0120($sp)
	lui     $t6, %hi(_face_dynlist_bss-0x5E0+0x60C)
	lw      $t6, %lo(_face_dynlist_bss-0x5E0+0x60C)($t6)
	nop
	bnez    $t6, 10$
	nop
	b       68$
	move    $v0, $0
10$:
	lui     $t7, %hi(face_dynlist_801A8400)
	lw      $t7, %lo(face_dynlist_801A8400)($t7)
	nop
	beqz    $t7, 22$
	nop
	la.u    $a1, str_face_dynlist_801B603C
	lw      $a2, 0x0120($sp)
	la.l    $a1, str_face_dynlist_801B603C
	jal     sprintf
	addiu   $a0, $sp, 0x001C
	b       25$
	nop
22$:
	lw      $a1, 0x0120($sp)
	jal     face_stdio_8018DDD8
	addiu   $a0, $sp, 0x001C
25$:
	la.u    $a1, _face_dynlist_bss-0x5E0+0x600
	la.l    $a1, _face_dynlist_bss-0x5E0+0x600
	jal     face_stdio_8018DF6C
	addiu   $a0, $sp, 0x001C
	sw      $0, 0x011C($sp)
	lui     $t8, %hi(_face_dynlist_bss-0x5E0+0x60C)
	lw      $t8, %lo(_face_dynlist_bss-0x5E0+0x60C)($t8)
	sw      $0, 0x0018($sp)
	blez    $t8, 63$
	nop
35$:
	lw      $t0, 0x0018($sp)
	lui     $t9, %hi(face_dynlist_801A83E0)
	sll     $t1, $t0, 2
	lw      $t9, %lo(face_dynlist_801A83E0)($t9)
	addu    $t1, $t1, $t0
	sll     $t1, $t1, 2
	addiu   $a1, $sp, 0x001C
	jal     face_stdio_8018DFF0
	addu    $a0, $t9, $t1
	bnez    $v0, 56$
	nop
	lw      $t2, 0x0018($sp)
	lui     $t4, %hi(face_dynlist_801A83E0)
	sll     $t3, $t2, 2
	lw      $t4, %lo(face_dynlist_801A83E0)($t4)
	addu    $t3, $t3, $t2
	sll     $t3, $t3, 2
	addu    $t5, $t3, $t4
	sw      $t5, 0x011C($sp)
	b       63$
	nop
56$:
	lw      $t6, 0x0018($sp)
	lui     $t8, %hi(_face_dynlist_bss-0x5E0+0x60C)
	lw      $t8, %lo(_face_dynlist_bss-0x5E0+0x60C)($t8)
	addiu   $t7, $t6, 0x0001
	slt     $at, $t7, $t8
	bnez    $at, 35$
	sw      $t7, 0x0018($sp)
63$:
	lw      $v0, 0x011C($sp)
	b       68$
	nop
	b       68$
	nop
68$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0120
	jr      $ra
	nop

face_dynlist_80184630:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(_face_dynlist_bss-0x5E0+0x60C)
	lw      $t6, %lo(_face_dynlist_bss-0x5E0+0x60C)($t6)
	nop
	bnez    $t6, 9$
	nop
	b       19$
	nop
9$:
	lui     $a0, %hi(face_dynlist_801A83E0)
	lw      $a0, %lo(face_dynlist_801A83E0)($a0)
	jal     gd_free
	nop
	lui     $at, %hi(_face_dynlist_bss-0x5E0+0x60C)
	sw      $0, %lo(_face_dynlist_bss-0x5E0+0x60C)($at)
	lui     $at, %hi(face_dynlist_801A83E0)
	sw      $0, %lo(face_dynlist_801A83E0)($at)
	b       19$
	nop
19$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

face_dynlist_8018468C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	lw      $a1, 0x001C($sp)
	jal     dMakeObj
	li      $a0, 0x0001
	jal     face_dynlist_8018A530
	li      $a0, 0x0002
	lui     $t6, %hi(_face_dynlist_bss-0x5E0+0x620)
	lw      $t6, %lo(_face_dynlist_bss-0x5E0+0x620)($t6)
	la.u    $a0, _face_dynlist_bss-0x5E0+0x628
	la.u    $a1, str_face_dynlist_801B6040
	lui     $at, %hi(_face_dynlist_bss-0x5E0+0x620)
	addiu   $t7, $t6, 0x0001
	sw      $t7, %lo(_face_dynlist_bss-0x5E0+0x620)($at)
	move    $a2, $t7
	la.l    $a1, str_face_dynlist_801B6040
	jal     sprintf
	la.l    $a0, _face_dynlist_bss-0x5E0+0x628
	jal     dSetType
	li      $a0, 0x0004
	jal     face_dynlist_801844A8
	nop
	la.u    $a0, _face_dynlist_bss-0x5E0+0x628
	jal     face_dynlist_8018435C
	la.l    $a0, _face_dynlist_bss-0x5E0+0x628
	lw      $a0, 0x001C($sp)
	jal     face_dynlist_80186CAC
	nop
	jal     face_dynlist_801844DC
	nop
	lw      $a0, 0x001C($sp)
	jal     dUseObj
	nop
	lui     $t8, %hi(_face_dynlist_bss-0x5E0+0x610)
	lw      $t8, %lo(_face_dynlist_bss-0x5E0+0x610)($t8)
	lui     $at, %hi(_face_dynlist_bss-0x5E0+0x614)
	sw      $t8, %lo(_face_dynlist_bss-0x5E0+0x614)($at)
	b       41$
	nop
41$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

face_dynlist_80184740:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	jal     dUseObj
	nop
	jal     face_dynlist_801844A8
	nop
	la.u    $a0, _face_dynlist_bss-0x5E0+0x628
	jal     face_dynlist_8018435C
	la.l    $a0, _face_dynlist_bss-0x5E0+0x628
	lw      $a0, 0x0018($sp)
	jal     dEndGroup
	nop
	lw      $a0, 0x0018($sp)
	jal     dSetNodeGroup
	nop
	jal     face_dynlist_801844DC
	nop
	lui     $at, %hi(_face_dynlist_bss-0x5E0+0x614)
	sw      $0, %lo(_face_dynlist_bss-0x5E0+0x614)($at)
	b       23$
	nop
23$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

face_dynlist_801847AC:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	lui     $t6, %hi(_face_dynlist_bss-0x5E0+0x610)
	lw      $t6, %lo(_face_dynlist_bss-0x5E0+0x610)($t6)
	nop
	sw      $t6, 0x0024($sp)
	lw      $a1, 0x002C($sp)
	jal     dMakeObj
	li      $a0, 0x0002
	jal     dSetType
	li      $a0, 0x0003
	jal     dSetShapePtrPtr
	move    $a0, $0
	lui     $t7, %hi(_face_dynlist_bss-0x5E0+0x614)
	lw      $t7, %lo(_face_dynlist_bss-0x5E0+0x614)($t7)
	li      $a0, 0x000D
	lw      $a1, 0x0008($t7)
	jal     face_dynlist_80184FC4
	nop
	lui     $t8, %hi(_face_dynlist_bss-0x5E0+0x610)
	lw      $t8, %lo(_face_dynlist_bss-0x5E0+0x610)($t8)
	lui     $at, %hi(_face_dynlist_bss-0x5E0+0x614)
	sw      $t8, %lo(_face_dynlist_bss-0x5E0+0x614)($at)
	b       27$
	nop
27$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

dMakeNetFromShape:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lw      $a0, 0x0020($sp)
	jal     face_dynlist_80184510
	nop
	sw      $v0, 0x001C($sp)
	lw      $t6, 0x001C($sp)
	nop
	bnez    $t6, 15$
	nop
	la.u    $a0, str_face_dynlist_801B6044
	lw      $a1, 0x0020($sp)
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B6044
15$:
	lw      $t7, 0x001C($sp)
	nop
	lw      $a0, 0x0008($t7)
	jal     make_netfromshape
	nop
	sw      $v0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	jal     face_dynlist_801848E8
	move    $a1, $0
	b       26$
	nop
26$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

dMakeNetFromShapePtrPtr:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lw      $t6, 0x0020($sp)
	nop
	lw      $a0, 0x0000($t6)
	jal     make_netfromshape
	nop
	sw      $v0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	jal     face_dynlist_801848E8
	move    $a1, $0
	b       14$
	nop
14$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

face_dynlist_801848E8:
	addiu   $sp, $sp, -0x0120
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0120($sp)
	sw      $a1, 0x0124($sp)
	la.u    $a0, str_face_dynlist_801B608C
	jal     face_stdio_8018C44C
	la.l    $a0, str_face_dynlist_801B608C
	lui     $t6, %hi(face_dynlist_801A83E0)
	lw      $t6, %lo(face_dynlist_801A83E0)($t6)
	nop
	bnez    $t6, 24$
	nop
	jal     face_gfx_8019BD90
	li      $a0, 0xEA60
	lui     $at, %hi(face_dynlist_801A83E0)
	sw      $v0, %lo(face_dynlist_801A83E0)($at)
	lui     $t7, %hi(face_dynlist_801A83E0)
	lw      $t7, %lo(face_dynlist_801A83E0)($t7)
	nop
	bnez    $t7, 24$
	nop
	la.u    $a0, str_face_dynlist_801B6094
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B6094
24$:
	la.u    $a0, str_face_dynlist_801B60C0
	jal     face_stdio_8018C598
	la.l    $a0, str_face_dynlist_801B60C0
	lui     $t8, %hi(face_dynlist_801A8400)
	lw      $t8, %lo(face_dynlist_801A8400)($t8)
	nop
	beqz    $t8, 39$
	nop
	la.u    $a1, str_face_dynlist_801B60C8
	lw      $a2, 0x0124($sp)
	la.l    $a1, str_face_dynlist_801B60C8
	jal     sprintf
	addiu   $a0, $sp, 0x001C
	b       46$
	sw      $0, 0x0124($sp)
39$:
	lui     $a2, %hi(_face_dynlist_bss-0x5E0+0x60C)
	lw      $a2, %lo(_face_dynlist_bss-0x5E0+0x60C)($a2)
	la.u    $a1, str_face_dynlist_801B60CC
	la.l    $a1, str_face_dynlist_801B60CC
	addiu   $a0, $sp, 0x001C
	jal     sprintf
	addiu   $a2, $a2, 0x0001
46$:
	lw      $t9, 0x0124($sp)
	nop
	beqz    $t9, 71$
	nop
	lw      $a0, 0x0124($sp)
	jal     face_dynlist_80184510
	nop
	beqz    $v0, 59$
	nop
	la.u    $a0, str_face_dynlist_801B60D0
	lw      $a1, 0x0124($sp)
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B60D0
59$:
	lui     $t1, %hi(_face_dynlist_bss-0x5E0+0x60C)
	lw      $t1, %lo(_face_dynlist_bss-0x5E0+0x60C)($t1)
	lui     $t0, %hi(face_dynlist_801A83E0)
	sll     $t2, $t1, 2
	lw      $t0, %lo(face_dynlist_801A83E0)($t0)
	addu    $t2, $t2, $t1
	sll     $t2, $t2, 2
	lw      $a1, 0x0124($sp)
	jal     face_stdio_8018DDD8
	addu    $a0, $t0, $t2
	b       81$
	nop
71$:
	lui     $t4, %hi(_face_dynlist_bss-0x5E0+0x60C)
	lw      $t4, %lo(_face_dynlist_bss-0x5E0+0x60C)($t4)
	lui     $t3, %hi(face_dynlist_801A83E0)
	sll     $t5, $t4, 2
	lw      $t3, %lo(face_dynlist_801A83E0)($t3)
	addu    $t5, $t5, $t4
	sll     $t5, $t5, 2
	addiu   $a1, $sp, 0x001C
	jal     face_stdio_8018DDD8
	addu    $a0, $t3, $t5
81$:
	lui     $t7, %hi(_face_dynlist_bss-0x5E0+0x60C)
	lw      $t7, %lo(_face_dynlist_bss-0x5E0+0x60C)($t7)
	lui     $t6, %hi(face_dynlist_801A83E0)
	sll     $t8, $t7, 2
	lw      $t6, %lo(face_dynlist_801A83E0)($t6)
	addu    $t8, $t8, $t7
	sll     $t8, $t8, 2
	la.u    $a1, _face_dynlist_bss-0x5E0+0x600
	la.l    $a1, _face_dynlist_bss-0x5E0+0x600
	jal     face_stdio_8018DF6C
	addu    $a0, $t6, $t8
	lui     $t1, %hi(_face_dynlist_bss-0x5E0+0x60C)
	lw      $t1, %lo(_face_dynlist_bss-0x5E0+0x60C)($t1)
	lui     $t9, %hi(face_dynlist_801A83E0)
	sll     $t0, $t1, 2
	lw      $t9, %lo(face_dynlist_801A83E0)($t9)
	addu    $t0, $t0, $t1
	sll     $t0, $t0, 2
	jal     face_stdio_8018DF18
	addu    $a0, $t9, $t0
	sltiu   $at, $v0, 0x0008
	bnez    $at, 115$
	nop
	lui     $t4, %hi(_face_dynlist_bss-0x5E0+0x60C)
	lw      $t4, %lo(_face_dynlist_bss-0x5E0+0x60C)($t4)
	lui     $t2, %hi(face_dynlist_801A83E0)
	sll     $t3, $t4, 2
	lw      $t2, %lo(face_dynlist_801A83E0)($t2)
	addu    $t3, $t3, $t4
	sll     $t3, $t3, 2
	la.u    $a0, str_face_dynlist_801B6108
	la.l    $a0, str_face_dynlist_801B6108
	jal     face_stdio_8018D298
	addu    $a1, $t2, $t3
115$:
	lui     $t5, %hi(_face_dynlist_bss-0x5E0+0x60C)
	lw      $t5, %lo(_face_dynlist_bss-0x5E0+0x60C)($t5)
	lui     $t7, %hi(face_dynlist_801A83E0)
	sll     $t6, $t5, 2
	lw      $t7, %lo(face_dynlist_801A83E0)($t7)
	addu    $t6, $t6, $t5
	sll     $t6, $t6, 2
	addu    $t8, $t7, $t6
	sw      $t5, 0x000C($t8)
	lui     $t1, %hi(_face_dynlist_bss-0x5E0+0x60C)
	lw      $t1, %lo(_face_dynlist_bss-0x5E0+0x60C)($t1)
	lui     $t0, %hi(face_dynlist_801A83E0)
	sll     $t9, $t1, 2
	lw      $t0, %lo(face_dynlist_801A83E0)($t0)
	addu    $t9, $t9, $t1
	sll     $t9, $t9, 2
	lui     $at, %hi(_face_dynlist_bss-0x5E0+0x610)
	addu    $t4, $t9, $t0
	sw      $t4, %lo(_face_dynlist_bss-0x5E0+0x610)($at)
	lui     $t7, %hi(_face_dynlist_bss-0x5E0+0x60C)
	lw      $t7, %lo(_face_dynlist_bss-0x5E0+0x60C)($t7)
	lui     $t3, %hi(face_dynlist_801A83E0)
	sll     $t6, $t7, 2
	lw      $t3, %lo(face_dynlist_801A83E0)($t3)
	addu    $t6, $t6, $t7
	lw      $t2, 0x0120($sp)
	sll     $t6, $t6, 2
	addu    $t5, $t3, $t6
	lui     $t8, %hi(_face_dynlist_bss-0x5E0+0x60C)
	sw      $t2, 0x0008($t5)
	lw      $t8, %lo(_face_dynlist_bss-0x5E0+0x60C)($t8)
	lui     $at, %hi(_face_dynlist_bss-0x5E0+0x60C)
	addiu   $t1, $t8, 0x0001
	sw      $t1, %lo(_face_dynlist_bss-0x5E0+0x60C)($at)
	lui     $t9, %hi(_face_dynlist_bss-0x5E0+0x60C)
	lw      $t9, %lo(_face_dynlist_bss-0x5E0+0x60C)($t9)
	nop
	slti    $at, $t9, 0x0BB8
	bnez    $at, 158$
	nop
	la.u    $a0, str_face_dynlist_801B6128
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B6128
158$:
	lw      $t0, 0x0120($sp)
	lui     $at, %hi(face_dynlist_801A83E4)
	sw      $t0, %lo(face_dynlist_801A83E4)($at)
	b       163$
	nop
163$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0120
	jr      $ra
	nop

face_dynlist_80184B84:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	nop
	beqz    $t6, 21$
	nop
	lui     $t7, %hi(face_dynlist_801A8400)
	lw      $t7, %lo(face_dynlist_801A8400)($t7)
	nop
	beqz    $t7, 21$
	nop
	la.u    $a0, _face_dynlist_bss-0x5E0+0x5E0
	la.u    $a1, str_face_dynlist_801B6150
	lw      $a2, 0x0018($sp)
	la.l    $a1, str_face_dynlist_801B6150
	jal     sprintf
	la.l    $a0, _face_dynlist_bss-0x5E0+0x5E0
	la.u    $v0, _face_dynlist_bss-0x5E0+0x5E0
	b       25$
	la.l    $v0, _face_dynlist_bss-0x5E0+0x5E0
21$:
	b       25$
	move    $v0, $0
	b       25$
	nop
25$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl dMakeObj
dMakeObj:
	addiu   $sp, $sp, -0x0040
	sw      $ra, 0x002C($sp)
	sw      $a0, 0x0040($sp)
	sw      $a1, 0x0044($sp)
	sw      $s0, 0x0028($sp)
	lw      $t6, 0x0040($sp)
	nop
	sltiu   $at, $t6, 0x0013
	beqz    $at, 177$
	nop
	sll     $t6, $t6, 2
	lui     $at, %hi(face_dynlist_801B7FB8)
	addu    $at, $at, $t6
	lw      $t6, %lo(face_dynlist_801B7FB8)($at)
	nop
	jr      $t6
	nop
.globl L80184C3C
L80184C3C:
	la.u    $a0, str_face_dynlist_801B6154
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B6154
	b       180$
	nop
.globl L80184C50
L80184C50:
	move    $a0, $0
	li      $a1, 0x0000
	li      $a2, 0x0000
	jal     face_joint_8018F188
	li      $a3, 0x0000
	sw      $v0, 0x003C($sp)
	b       180$
	nop
.globl L80184C70
L80184C70:
	move    $a0, $0
	li      $a1, 0x0000
	li      $a2, 0x0000
	jal     face_joint_8018F188
	li      $a3, 0x0000
	sw      $v0, 0x003C($sp)
	b       180$
	nop
.globl L80184C90
L80184C90:
	move    $a0, $0
	move    $a1, $0
	move    $a2, $0
	move    $a3, $0
	jal     face_net_801924F4
	sw      $0, 0x0010($sp)
	sw      $v0, 0x003C($sp)
	b       180$
	nop
.globl L80184CB4
L80184CB4:
	jal     make_group
	move    $a0, $0
	sw      $v0, 0x003C($sp)
	lw      $t7, 0x003C($sp)
	nop
	sw      $t7, 0x0038($sp)
	b       180$
	nop
.globl L80184CD4
L80184CD4:
	lw      $a1, 0x0044($sp)
	jal     dMakeObj
	li      $a0, 0x0012
	lui     $t9, %hi(face_dynlist_801A83E4)
	lw      $t9, %lo(face_dynlist_801A83E4)($t9)
	li      $t8, 0x0001
	sw      $t8, 0x0030($t9)
	b       189$
	nop
.globl L80184CF8
L80184CF8:
	move    $a0, $0
	jal     face_object_8017D010
	move    $a1, $0
	sw      $v0, 0x003C($sp)
	b       180$
	nop
.globl L80184D10
L80184D10:
	move    $a0, $0
	move    $a1, $0
	move    $a2, $0
	jal     face_joint_8018FEDC
	move    $a3, $0
	sw      $v0, 0x003C($sp)
	b       180$
	nop
.globl L80184D30
L80184D30:
	mtc1    $0, $f4
	move    $a0, $0
	move    $a1, $0
	li      $a2, 0x0000
	li      $a3, 0x0000
	jal     face_particle_80182630
	swc1    $f4, 0x0010($sp)
	sw      $v0, 0x003C($sp)
	b       180$
	nop
.globl L80184D58
L80184D58:
	mtc1    $0, $f12
	mtc1    $0, $f14
	jal     face_shape_8019764C
	li      $a2, 0x0000
	sw      $v0, 0x003C($sp)
	b       180$
	nop
.globl L80184D74
L80184D74:
	li      $at, 0x3FF00000
	mtc1    $at, $f7
	mtc1    $0, $f6
	mtc1    $at, $f13
	mtc1    $at, $f15
	mtc1    $0, $f12
	mtc1    $0, $f14
	swc1    $f7, 0x0010($sp)
	jal     make_face
	swc1    $f6, 0x0014($sp)
	sw      $v0, 0x003C($sp)
	b       180$
	nop
.globl L80184DA8
L80184DA8:
	move    $a0, $0
	jal     face_object_8017CF7C
	move    $a1, $0
	sw      $v0, 0x003C($sp)
	b       180$
	nop
.globl L80184DC0
L80184DC0:
	move    $a0, $0
	move    $a1, $0
	jal     face_object_8017D22C
	move    $a2, $0
	sw      $v0, 0x003C($sp)
	b       180$
	nop
.globl L80184DDC
L80184DDC:
	lw      $a0, 0x0044($sp)
	jal     face_dynlist_80184B84
	nop
	move    $s0, $v0
	move    $a1, $s0
	jal     face_shape_8019797C
	move    $a0, $0
	sw      $v0, 0x003C($sp)
	b       180$
	nop
.globl L80184E04
L80184E04:
	move    $a0, $0
	jal     face_gadget_8018BBC0
	move    $a1, $0
	sw      $v0, 0x003C($sp)
	b       180$
	nop
.globl L80184E1C
L80184E1C:
	move    $a0, $0
	move    $a1, $0
	li      $a2, 0x0008
	move    $a3, $0
	sw      $0, 0x0010($sp)
	jal     face_gadget_8018BB00
	sw      $0, 0x0014($sp)
	sw      $v0, 0x003C($sp)
	b       180$
	nop
.globl L80184E44
L80184E44:
	li.u    $a1, 0x000E6018
	li.l    $a1, 0x000E6018
	move    $a0, $0
	li      $a2, 0x0002
	move    $a3, $0
	sw      $0, 0x0010($sp)
	sw      $0, 0x0014($sp)
	sw      $0, 0x0018($sp)
	jal     face_object_8017D3E8
	sw      $0, 0x001C($sp)
	sw      $v0, 0x003C($sp)
	b       180$
	nop
.globl L80184E78
L80184E78:
	jal     face_object_8017D67C
	nop
	sw      $v0, 0x003C($sp)
	b       180$
	nop
.globl L80184E8C
L80184E8C:
	move    $a0, $0
	move    $a1, $0
	jal     face_object_8017D2D4
	move    $a2, $0
	sw      $v0, 0x003C($sp)
	lui     $a0, %hi(_face_draw_bss-0x210+0x298)
	lw      $a0, %lo(_face_draw_bss-0x210+0x298)($a0)
	lw      $a1, 0x003C($sp)
	jal     addto_group
	nop
	b       180$
	nop
177$:
	la.u    $a0, str_face_dynlist_801B617C
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B617C
180$:
	lw      $a0, 0x003C($sp)
	lw      $a1, 0x0044($sp)
	jal     face_dynlist_801848E8
	nop
	lw      $v0, 0x003C($sp)
	b       189$
	nop
	b       189$
	nop
189$:
	lw      $ra, 0x002C($sp)
	lw      $s0, 0x0028($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0040

dAttach:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lui     $t6, %hi(face_dynlist_801A83E4)
	lw      $t6, %lo(face_dynlist_801A83E4)($t6)
	nop
	bnez    $t6, 11$
	nop
	la.u    $a0, str_face_dynlist_801B619C
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B619C
11$:
	lw      $a0, 0x0020($sp)
	jal     face_dynlist_80184510
	nop
	sw      $v0, 0x001C($sp)
	lw      $t7, 0x001C($sp)
	nop
	bnez    $t7, 23$
	nop
	la.u    $a0, str_face_dynlist_801B61C0
	lw      $a1, 0x0020($sp)
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B61C0
23$:
	lui     $t8, %hi(face_dynlist_801A83E4)
	lw      $t8, %lo(face_dynlist_801A83E4)($t8)
	li      $at, 0x0004
	lw      $t9, 0x000C($t8)
	nop
	bne     $t9, $at, 34$
	nop
	b       32$
	nop
32$:
	b       44$
	nop
34$:
	lui     $t0, %hi(face_dynlist_801A83E4)
	lw      $t0, %lo(face_dynlist_801A83E4)($t0)
	lui     $a2, %hi(_face_dynlist_bss-0x5E0+0x610)
	lw      $a2, %lo(_face_dynlist_bss-0x5E0+0x610)($a2)
	la.u    $a0, str_face_dynlist_801B61E0
	la.u    $a1, str_face_dynlist_801B6214
	lw      $a3, 0x000C($t0)
	la.l    $a1, str_face_dynlist_801B6214
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B61E0
44$:
	b       46$
	nop
46$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

face_dynlist_80184FC4:
	addiu   $sp, $sp, -0x0050
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0050($sp)
	sw      $a1, 0x0054($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(_face_dynlist_bss-0x5E0+0x610)
	lw      $t6, %lo(_face_dynlist_bss-0x5E0+0x610)($t6)
	nop
	sw      $t6, 0x003C($sp)
	jal     face_dynlist_80183A50
	nop
	lui     $t7, %hi(face_dynlist_801A83E4)
	lw      $t7, %lo(face_dynlist_801A83E4)($t7)
	nop
	bnez    $t7, 19$
	nop
	la.u    $a0, str_face_dynlist_801B6220
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B6220
19$:
	lw      $t8, 0x0054($sp)
	li      $at, 0x0004
	lw      $s0, 0x000C($t8)
	nop
	beq     $s0, $at, 36$
	nop
	li      $at, 0x0008
	beq     $s0, $at, 64$
	nop
	li      $at, 0x0020
	beq     $s0, $at, 50$
	nop
	li      $at, 0x00010000
	beq     $s0, $at, 78$
	nop
	b       92$
	nop
36$:
	lw      $t9, 0x0054($sp)
	nop
	lw      $t0, 0x01F8($t9)
	nop
	bnez    $t0, 48$
	sw      $t0, 0x0048($sp)
	jal     make_group
	move    $a0, $0
	lw      $t1, 0x0054($sp)
	move    $s0, $v0
	sw      $s0, 0x01F8($t1)
	sw      $s0, 0x0048($sp)
48$:
	b       102$
	nop
50$:
	lw      $t2, 0x0054($sp)
	nop
	lw      $t3, 0x01D4($t2)
	nop
	bnez    $t3, 62$
	sw      $t3, 0x0048($sp)
	jal     make_group
	move    $a0, $0
	lw      $t4, 0x0054($sp)
	move    $s0, $v0
	sw      $s0, 0x01D4($t4)
	sw      $s0, 0x0048($sp)
62$:
	b       102$
	nop
64$:
	lw      $t5, 0x0054($sp)
	nop
	lw      $t6, 0x00B4($t5)
	nop
	bnez    $t6, 76$
	sw      $t6, 0x0048($sp)
	jal     make_group
	move    $a0, $0
	lw      $t7, 0x0054($sp)
	move    $s0, $v0
	sw      $s0, 0x00B4($t7)
	sw      $s0, 0x0048($sp)
76$:
	b       102$
	nop
78$:
	lw      $t8, 0x0054($sp)
	nop
	lw      $t9, 0x0030($t8)
	nop
	bnez    $t9, 90$
	sw      $t9, 0x0048($sp)
	jal     make_group
	move    $a0, $0
	lw      $t0, 0x0054($sp)
	move    $s0, $v0
	sw      $s0, 0x0030($t0)
	sw      $s0, 0x0048($sp)
90$:
	b       102$
	nop
92$:
	lui     $t1, %hi(face_dynlist_801A83E4)
	lw      $t1, %lo(face_dynlist_801A83E4)($t1)
	lui     $a2, %hi(_face_dynlist_bss-0x5E0+0x610)
	lw      $a2, %lo(_face_dynlist_bss-0x5E0+0x610)($a2)
	la.u    $a0, str_face_dynlist_801B6244
	la.u    $a1, str_face_dynlist_801B6278
	lw      $a3, 0x000C($t1)
	la.l    $a1, str_face_dynlist_801B6278
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B6244
102$:
	lui     $a1, %hi(face_dynlist_801A83E4)
	lw      $a1, %lo(face_dynlist_801A83E4)($a1)
	lw      $a0, 0x0048($sp)
	jal     face_object_8017DDFC
	nop
	beqz    $v0, 111$
	nop
	b       230$
	nop
111$:
	lui     $a1, %hi(face_dynlist_801A83E4)
	lw      $a1, %lo(face_dynlist_801A83E4)($a1)
	lw      $a0, 0x0048($sp)
	jal     addto_group
	nop
	lw      $t2, 0x0050($sp)
	nop
	andi    $t3, $t2, 0x0009
	beqz    $t3, 143$
	nop
	jal     dGetWorldPos
	addiu   $a0, $sp, 0x0030
	lw      $a0, 0x0054($sp)
	jal     face_dynlist_80186C84
	nop
	jal     dGetWorldPos
	addiu   $a0, $sp, 0x0024
	lwc1    $f4, 0x0030($sp)
	lwc1    $f6, 0x0024($sp)
	nop
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x0030($sp)
	lwc1    $f10, 0x0034($sp)
	lwc1    $f16, 0x0028($sp)
	nop
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x0034($sp)
	lwc1    $f4, 0x0038($sp)
	lwc1    $f6, 0x002C($sp)
	nop
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x0038($sp)
143$:
	jal     face_dynlist_80183A80
	nop
	lui     $t4, %hi(face_dynlist_801A83E4)
	lw      $t4, %lo(face_dynlist_801A83E4)($t4)
	li      $at, 0x0004
	lw      $s0, 0x000C($t4)
	nop
	beq     $s0, $at, 163$
	nop
	li      $at, 0x0008
	beq     $s0, $at, 187$
	nop
	li      $at, 0x0020
	beq     $s0, $at, 175$
	nop
	li      $at, 0x00010000
	beq     $s0, $at, 199$
	nop
	b       211$
	nop
163$:
	lui     $t6, %hi(face_dynlist_801A83E4)
	lw      $t6, %lo(face_dynlist_801A83E4)($t6)
	lw      $t5, 0x0050($sp)
	nop
	sw      $t5, 0x01FC($t6)
	lui     $t8, %hi(face_dynlist_801A83E4)
	lw      $t8, %lo(face_dynlist_801A83E4)($t8)
	lw      $t7, 0x0054($sp)
	nop
	sw      $t7, 0x020C($t8)
	b       221$
	nop
175$:
	lui     $t0, %hi(face_dynlist_801A83E4)
	lw      $t0, %lo(face_dynlist_801A83E4)($t0)
	lw      $t9, 0x0050($sp)
	nop
	sw      $t9, 0x01E4($t0)
	lui     $t2, %hi(face_dynlist_801A83E4)
	lw      $t2, %lo(face_dynlist_801A83E4)($t2)
	lw      $t1, 0x0054($sp)
	nop
	sw      $t1, 0x01E8($t2)
	b       221$
	nop
187$:
	lui     $t4, %hi(face_dynlist_801A83E4)
	lw      $t4, %lo(face_dynlist_801A83E4)($t4)
	lw      $t3, 0x0050($sp)
	nop
	sw      $t3, 0x00B8($t4)
	lui     $t6, %hi(face_dynlist_801A83E4)
	lw      $t6, %lo(face_dynlist_801A83E4)($t6)
	lw      $t5, 0x0054($sp)
	nop
	sw      $t5, 0x00BC($t6)
	b       221$
	nop
199$:
	lui     $t8, %hi(face_dynlist_801A83E4)
	lw      $t8, %lo(face_dynlist_801A83E4)($t8)
	lw      $t7, 0x0050($sp)
	nop
	sw      $t7, 0x0034($t8)
	lui     $t0, %hi(face_dynlist_801A83E4)
	lw      $t0, %lo(face_dynlist_801A83E4)($t0)
	lw      $t9, 0x0054($sp)
	nop
	sw      $t9, 0x0044($t0)
	b       221$
	nop
211$:
	lui     $t1, %hi(face_dynlist_801A83E4)
	lw      $t1, %lo(face_dynlist_801A83E4)($t1)
	lui     $a2, %hi(_face_dynlist_bss-0x5E0+0x610)
	lw      $a2, %lo(_face_dynlist_bss-0x5E0+0x610)($a2)
	la.u    $a0, str_face_dynlist_801B6284
	la.u    $a1, str_face_dynlist_801B62B8
	lw      $a3, 0x000C($t1)
	la.l    $a1, str_face_dynlist_801B62B8
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B6284
221$:
	lw      $t2, 0x0050($sp)
	nop
	andi    $t3, $t2, 0x0009
	beqz    $t3, 228$
	nop
	jal     dSetAttOffset
	addiu   $a0, $sp, 0x0030
228$:
	b       230$
	nop
230$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0050

dAttachTo:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	lw      $t6, 0x0024($sp)
	nop
	bnez    $t6, 10$
	nop
	b       37$
	nop
10$:
	lui     $t7, %hi(face_dynlist_801A83E4)
	lw      $t7, %lo(face_dynlist_801A83E4)($t7)
	nop
	bnez    $t7, 18$
	nop
	la.u    $a0, str_face_dynlist_801B62C4
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B62C4
18$:
	lw      $a0, 0x0024($sp)
	jal     face_dynlist_80184510
	nop
	sw      $v0, 0x001C($sp)
	lw      $t8, 0x001C($sp)
	nop
	bnez    $t8, 30$
	nop
	la.u    $a0, str_face_dynlist_801B62E8
	lw      $a1, 0x0024($sp)
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B62E8
30$:
	lw      $t9, 0x001C($sp)
	lw      $a0, 0x0020($sp)
	lw      $a1, 0x0008($t9)
	jal     face_dynlist_80184FC4
	nop
	b       37$
	nop
37$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

face_dynlist_80185410:
	addiu   $sp, $sp, -0x0008
	bnez    $a2, 5$
	nop
	b       17$
	nop
5$:
	move    $a3, $a2
	beqz    $a3, 15$
	addiu   $a2, $a2, -0x0001
8$:
	lbu     $t6, 0x0000($a0)
	addiu   $a1, $a1, 0x0001
	addiu   $a0, $a0, 0x0001
	sb      $t6, -0x0001($a1)
	move    $a3, $a2
	bnez    $a3, 8$
	addiu   $a2, $a2, -0x0001
15$:
	b       17$
	nop
17$:
	jr      $ra
	addiu   $sp, $sp, 0x0008

animdata:
	addiu   $sp, $sp, -0x0080
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0080($sp)
	sw      $s0, 0x0018($sp)
	lui     $at, %hi(face_dynlist_801B8004)
	lwc1    $f4, %lo(face_dynlist_801B8004)($at)
	nop
	swc1    $f4, 0x002C($sp)
	la.u    $a0, str_face_dynlist_801B630C
	jal     face_stdio_8018C44C
	la.l    $a0, str_face_dynlist_801B630C
	lw      $t6, 0x0080($sp)
	nop
	lw      $t7, 0x0018($t6)
	nop
	bnez    $t7, 20$
	sw      $t7, 0x0044($sp)
	la.u    $a0, str_face_dynlist_801B6318
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B6318
20$:
	lw      $t8, 0x0044($sp)
	nop
	lw      $t9, 0x001C($t8)
	nop
	lw      $t0, 0x0008($t9)
	nop
	bnez    $t0, 31$
	sw      $t0, 0x0050($sp)
	la.u    $a0, str_face_dynlist_801B6328
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B6328
31$:
	lw      $t1, 0x0050($sp)
	nop
	sw      $t1, 0x004C($sp)
	sw      $0, 0x0038($sp)
	lw      $t2, 0x004C($sp)
	nop
	lw      $s0, 0x0000($t2)
	addiu   $t4, $t2, 0x000C
	slti    $t3, $s0, 0x0000
	xori    $t3, $t3, 0x0001
	move    $s0, $t3
	beqz    $s0, 57$
	sw      $t4, 0x004C($sp)
44$:
	lw      $t5, 0x0038($sp)
	nop
	addiu   $t6, $t5, 0x0001
	sw      $t6, 0x0038($sp)
	lw      $t7, 0x004C($sp)
	nop
	lw      $s0, 0x0000($t7)
	addiu   $t9, $t7, 0x000C
	slti    $t8, $s0, 0x0000
	xori    $t8, $t8, 0x0001
	move    $s0, $t8
	bnez    $s0, 44$
	sw      $t9, 0x004C($sp)
57$:
	lw      $a0, 0x0038($sp)
	nop
	sll     $t0, $a0, 2
	subu    $t0, $t0, $a0
	sll     $t0, $t0, 2
	jal     gd_malloc
	move    $a0, $t0
	sw      $v0, 0x004C($sp)
	lw      $t1, 0x004C($sp)
	nop
	bnez    $t1, 72$
	sw      $t1, 0x0048($sp)
	la.u    $a0, str_face_dynlist_801B633C
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B633C
72$:
	lw      $t3, 0x0038($sp)
	sw      $0, 0x0034($sp)
	blez    $t3, 353$
	nop
.L8018558C:
	sw      $0, 0x0030($sp)
	lw      $t2, 0x0050($sp)
	nop
	lw      $t4, 0x0004($t2)
	nop
	beqz    $t4, 317$
	nop
	lw      $t5, 0x0050($sp)
	nop
	lw      $t6, 0x0004($t5)
	nop
	addiu   $t8, $t6, -0x0001
	sltiu   $at, $t8, 0x000B
	beqz    $at, L80185654
	nop
	sll     $t8, $t8, 2
	lui     $at, %hi(face_dynlist_801B8008)
	addu    $at, $at, $t8
	lw      $t8, %lo(face_dynlist_801B8008)($at)
	nop
	jr      $t8
	nop
.globl L801855E4
L801855E4:
	li      $t7, 0x000C
	sw      $t7, 0x0040($sp)
	b       131$
	nop
.globl L801855F4
L801855F4:
	li      $t9, 0x0006
	sw      $t9, 0x0040($sp)
	b       131$
	nop
.globl L80185604
L80185604:
	li      $t0, 0x0006
	sw      $t0, 0x0040($sp)
	b       131$
	nop
.globl L80185614
L80185614:
	li      $t1, 0x000C
	sw      $t1, 0x0040($sp)
	b       131$
	nop
.globl L80185624
L80185624:
	li      $t3, 0x0024
	sw      $t3, 0x0040($sp)
	b       131$
	nop
.globl L80185634
L80185634:
	li      $t2, 0x004C
	sw      $t2, 0x0040($sp)
	b       131$
	nop
.globl L80185644
L80185644:
	li      $t4, 0x0040
	sw      $t4, 0x0040($sp)
	b       131$
	nop
.globl L80185654
L80185654:
	la.u    $a0, str_face_dynlist_801B635C
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B635C
	b       131$
	nop
131$:
	lw      $t5, 0x0050($sp)
	lw      $t8, 0x0040($sp)
	lw      $t6, 0x0000($t5)
	nop
	multu   $t6, $t8
	mflo    $a0
	jal     gd_malloc
	nop
	sw      $v0, 0x0030($sp)
	lw      $t7, 0x0030($sp)
	nop
	bnez    $t7, 147$
	nop
	la.u    $a0, str_face_dynlist_801B6380
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B6380
147$:
	lw      $t9, 0x0050($sp)
	li      $at, 0x0003
	lw      $t0, 0x0004($t9)
	nop
	bne     $t0, $at, 308$
	nop
	lw      $t1, 0x0050($sp)
	sw      $0, 0x003C($sp)
	lw      $t3, 0x0000($t1)
	nop
	blez    $t3, 304$
	nop
159$:
	lw      $t5, 0x003C($sp)
	lw      $t2, 0x0050($sp)
	sll     $t6, $t5, 3
	lw      $t4, 0x0008($t2)
	addu    $t6, $t6, $t5
	sll     $t6, $t6, 1
	addu    $t8, $t4, $t6
	sw      $t8, 0x0054($sp)
	lw      $t9, 0x003C($sp)
	lw      $t7, 0x0030($sp)
	sll     $t0, $t9, 2
	addu    $t0, $t0, $t9
	sll     $t0, $t0, 2
	subu    $t0, $t0, $t9
	sll     $t0, $t0, 2
	addu    $t1, $t7, $t0
	sw      $t1, 0x0028($sp)
	lw      $t3, 0x0054($sp)
	lwc1    $f10, 0x002C($sp)
	lh      $t2, 0x0000($t3)
	nop
	mtc1    $t2, $f6
	nop
	cvt.s.w $f8, $f6
	mul.s   $f16, $f8, $f10
	swc1    $f16, 0x0058($sp)
	lw      $t5, 0x0054($sp)
	lwc1    $f6, 0x002C($sp)
	lh      $t4, 0x0002($t5)
	nop
	mtc1    $t4, $f18
	nop
	cvt.s.w $f4, $f18
	mul.s   $f8, $f4, $f6
	swc1    $f8, 0x005C($sp)
	lw      $t6, 0x0054($sp)
	lwc1    $f18, 0x002C($sp)
	lh      $t8, 0x0004($t6)
	nop
	mtc1    $t8, $f10
	nop
	cvt.s.w $f16, $f10
	mul.s   $f4, $f16, $f18
	swc1    $f4, 0x0060($sp)
	lw      $t9, 0x0054($sp)
	lwc1    $f10, 0x002C($sp)
	lh      $t7, 0x0006($t9)
	nop
	mtc1    $t7, $f6
	nop
	cvt.s.w $f8, $f6
	mul.s   $f16, $f8, $f10
	swc1    $f16, 0x0064($sp)
	lw      $t0, 0x0054($sp)
	lwc1    $f6, 0x002C($sp)
	lh      $t1, 0x0008($t0)
	nop
	mtc1    $t1, $f18
	nop
	cvt.s.w $f4, $f18
	mul.s   $f8, $f4, $f6
	swc1    $f8, 0x0068($sp)
	lw      $t3, 0x0054($sp)
	lwc1    $f18, 0x002C($sp)
	lh      $t2, 0x000A($t3)
	nop
	mtc1    $t2, $f10
	nop
	cvt.s.w $f16, $f10
	mul.s   $f4, $f16, $f18
	swc1    $f4, 0x006C($sp)
	lw      $t5, 0x0054($sp)
	nop
	lh      $t4, 0x000C($t5)
	nop
	mtc1    $t4, $f6
	nop
	cvt.s.w $f8, $f6
	swc1    $f8, 0x0070($sp)
	lw      $t6, 0x0054($sp)
	nop
	lh      $t8, 0x000E($t6)
	nop
	mtc1    $t8, $f10
	nop
	cvt.s.w $f16, $f10
	swc1    $f16, 0x0074($sp)
	lw      $t9, 0x0054($sp)
	nop
	lh      $t7, 0x0010($t9)
	nop
	mtc1    $t7, $f18
	nop
	cvt.s.w $f4, $f18
	swc1    $f4, 0x0078($sp)
	lw      $a0, 0x0028($sp)
	jal     face_math_801963C0
	nop
	lw      $a0, 0x0028($sp)
	addiu   $a1, $sp, 0x0058
	jal     face_math_80194360
	addiu   $a1, $a1, 0x000C
	lw      $a0, 0x0028($sp)
	addiu   $a1, $sp, 0x0058
	jal     face_math_80194424
	addiu   $a1, $a1, 0x0018
	lw      $t1, 0x003C($sp)
	lw      $t0, 0x0030($sp)
	sll     $t3, $t1, 2
	addu    $t3, $t3, $t1
	sll     $t3, $t3, 2
	subu    $t3, $t3, $t1
	lwc1    $f6, 0x0058($sp)
	sll     $t3, $t3, 2
	addu    $t2, $t0, $t3
	swc1    $f6, 0x0040($t2)
	lw      $t4, 0x003C($sp)
	lw      $t5, 0x0030($sp)
	sll     $t6, $t4, 2
	addu    $t6, $t6, $t4
	sll     $t6, $t6, 2
	subu    $t6, $t6, $t4
	lwc1    $f8, 0x005C($sp)
	sll     $t6, $t6, 2
	addu    $t8, $t5, $t6
	swc1    $f8, 0x0044($t8)
	lw      $t7, 0x003C($sp)
	lw      $t9, 0x0030($sp)
	sll     $t1, $t7, 2
	addu    $t1, $t1, $t7
	sll     $t1, $t1, 2
	subu    $t1, $t1, $t7
	lwc1    $f10, 0x0060($sp)
	sll     $t1, $t1, 2
	addu    $t0, $t9, $t1
	swc1    $f10, 0x0048($t0)
	lw      $t3, 0x003C($sp)
	lw      $t4, 0x0050($sp)
	addiu   $t2, $t3, 0x0001
	sw      $t2, 0x003C($sp)
	lw      $t5, 0x0000($t4)
	nop
	slt     $at, $t2, $t5
	bnez    $at, 159$
	nop
304$:
	lw      $t8, 0x0050($sp)
	li      $t6, 0x0009
	b       317$
	sw      $t6, 0x0004($t8)
308$:
	lw      $t7, 0x0050($sp)
	lw      $t1, 0x0040($sp)
	lw      $t9, 0x0000($t7)
	lw      $a1, 0x0030($sp)
	multu   $t9, $t1
	lw      $a0, 0x0008($t7)
	mflo    $a2
	jal     face_dynlist_80185410
	nop
317$:
	lw      $t2, 0x0034($sp)
	lw      $t0, 0x0050($sp)
	sll     $t5, $t2, 2
	lw      $t4, 0x004C($sp)
	subu    $t5, $t5, $t2
	lw      $t3, 0x0004($t0)
	sll     $t5, $t5, 2
	addu    $t6, $t4, $t5
	sw      $t3, 0x0004($t6)
	lw      $t1, 0x0034($sp)
	lw      $t8, 0x0050($sp)
	sll     $t0, $t1, 2
	lw      $t9, 0x004C($sp)
	subu    $t0, $t0, $t1
	lw      $t7, 0x0000($t8)
	sll     $t0, $t0, 2
	addu    $t2, $t9, $t0
	sw      $t7, 0x0000($t2)
	lw      $t3, 0x0034($sp)
	lw      $t5, 0x004C($sp)
	sll     $t6, $t3, 2
	subu    $t6, $t6, $t3
	lw      $t4, 0x0030($sp)
	sll     $t6, $t6, 2
	addu    $t8, $t5, $t6
	sw      $t4, 0x0008($t8)
	lw      $t1, 0x0050($sp)
	nop
	addiu   $t9, $t1, 0x000C
	sw      $t9, 0x0050($sp)
	lw      $t0, 0x0034($sp)
	lw      $t2, 0x0038($sp)
	addiu   $t7, $t0, 0x0001
	slt     $at, $t7, $t2
	bnez    $at, .L8018558C
	sw      $t7, 0x0034($sp)
353$:
	lw      $t5, 0x0044($sp)
	lw      $t3, 0x0048($sp)
	lw      $t6, 0x001C($t5)
	nop
	sw      $t3, 0x0008($t6)
	la.u    $a0, str_face_dynlist_801B63A0
	jal     face_stdio_8018C598
	la.l    $a0, str_face_dynlist_801B63A0
	b       363$
	nop
363$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0080

chk_shapegen:
	addiu   $sp, $sp, -0x0060
	sw      $ra, 0x0024($sp)
	sw      $a0, 0x0060($sp)
	swc1    $f21, 0x0018($sp)
	swc1    $f20, 0x001C($sp)
	la.u    $a0, str_face_dynlist_801B63AC
	jal     face_stdio_8018C44C
	la.l    $a0, str_face_dynlist_801B63AC
	la.u    $a0, str_face_dynlist_801B63BC
	jal     imin
	la.l    $a0, str_face_dynlist_801B63BC
	lw      $t6, 0x0060($sp)
	nop
	lw      $t7, 0x002C($t6)
	nop
	sw      $t7, 0x0050($sp)
	lw      $t8, 0x0060($sp)
	nop
	lw      $t9, 0x001C($t8)
	nop
	sw      $t9, 0x004C($sp)
	lw      $t0, 0x0060($sp)
	nop
	lw      $t1, 0x0020($t0)
	nop
	sw      $t1, 0x0048($sp)
	lw      $t2, 0x0048($sp)
	nop
	beqz    $t2, 454$
	nop
	lw      $t3, 0x004C($sp)
	nop
	beqz    $t3, 454$
	nop
	lw      $t4, 0x0048($sp)
	nop
	lw      $t5, 0x0030($t4)
	nop
	andi    $t6, $t5, 0x0001
	beqz    $t6, 454$
	nop
	lw      $t7, 0x004C($sp)
	nop
	lw      $t8, 0x0030($t7)
	nop
	andi    $t9, $t8, 0x0001
	beqz    $t9, 454$
	nop
	lw      $t0, 0x0048($sp)
	nop
	lw      $t1, 0x001C($t0)
	nop
	lw      $t2, 0x0008($t1)
	nop
	sw      $t2, 0x0034($sp)
	lw      $t3, 0x004C($sp)
	nop
	lw      $t4, 0x001C($t3)
	nop
	lw      $t5, 0x0008($t4)
	nop
	sw      $t5, 0x0030($sp)
	lw      $t6, 0x0030($sp)
	li      $at, 0x0001
	lw      $t7, 0x0004($t6)
	nop
	beq     $t7, $at, 71$
	nop
	la.u    $a0, str_face_dynlist_801B63CC
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B63CC
71$:
	lw      $t8, 0x0034($sp)
	li      $at, 0x0001
	lw      $t9, 0x0004($t8)
	nop
	beq     $t9, $at, 80$
	nop
	la.u    $a0, str_face_dynlist_801B63E4
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B63E4
80$:
	lw      $t0, 0x0034($sp)
	nop
	lw      $t1, 0x0000($t0)
	nop
	sltiu   $at, $t1, 0x0BB8
	bnez    $at, 90$
	nop
	la.u    $a0, str_face_dynlist_801B63FC
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B63FC
90$:
	jal     face_gfx_8019BD90
	li      $a0, 0x2EE0
	sw      $v0, 0x0054($sp)
	lui     $t2, %hi(_face_object_bss-0x480+0x56C)
	lw      $t2, %lo(_face_object_bss-0x480+0x56C)($t2)
	nop
	sw      $t2, 0x002C($sp)
	lw      $t3, 0x0034($sp)
	sw      $0, 0x0038($sp)
	lw      $t4, 0x0000($t3)
	nop
	beqz    $t4, 149$
	nop
103$:
	lw      $t7, 0x0038($sp)
	lw      $t5, 0x0034($sp)
	sll     $t8, $t7, 2
	lw      $t6, 0x0008($t5)
	subu    $t8, $t8, $t7
	sll     $t8, $t8, 1
	addu    $t9, $t6, $t8
	lh      $t2, 0x0004($t9)
	lh      $t0, 0x0000($t9)
	mtc1    $t2, $f8
	lh      $t1, 0x0002($t9)
	cvt.s.w $f8, $f8
	mtc1    $t0, $f4
	mtc1    $t1, $f6
	mfc1    $a2, $f8
	cvt.s.w $f12, $f4
	jal     face_shape_8019764C
	cvt.s.w $f14, $f6
	sw      $v0, 0x0058($sp)
	mtc1    $0, $f10
	lw      $t3, 0x0058($sp)
	nop
	swc1    $f10, 0x0034($t3)
	lw      $t4, 0x0058($sp)
	nop
	lwc1    $f20, 0x0034($t4)
	nop
	swc1    $f20, 0x0030($t4)
	lw      $t5, 0x0058($sp)
	nop
	swc1    $f20, 0x002C($t5)
	lw      $t8, 0x0038($sp)
	lw      $t6, 0x0054($sp)
	lw      $t7, 0x0058($sp)
	sll     $t0, $t8, 2
	addu    $t1, $t6, $t0
	sw      $t7, 0x0000($t1)
	lw      $t9, 0x0038($sp)
	lw      $t3, 0x0034($sp)
	addiu   $t2, $t9, 0x0001
	sw      $t2, 0x0038($sp)
	lw      $t4, 0x0000($t3)
	nop
	sltu    $at, $t2, $t4
	bnez    $at, 103$
	nop
149$:
	lw      $a1, 0x002C($sp)
	li      $a0, 0x0100
	jal     face_object_8017D76C
	move    $a2, $0
	sw      $v0, 0x003C($sp)
	lui     $t5, %hi(_face_object_bss-0x480+0x56C)
	lw      $t5, %lo(_face_object_bss-0x480+0x56C)($t5)
	nop
	sw      $t5, 0x002C($sp)
	lw      $t8, 0x0030($sp)
	sw      $0, 0x0038($sp)
	lw      $t6, 0x0000($t8)
	nop
	beqz    $t6, 358$
	nop
164$:
	li      $at, 0x3FF00000
	mtc1    $at, $f17
	mtc1    $0, $f16
	mtc1    $at, $f13
	mtc1    $at, $f15
	mtc1    $0, $f12
	mtc1    $0, $f14
	swc1    $f17, 0x0010($sp)
	jal     make_face
	swc1    $f16, 0x0014($sp)
	sw      $v0, 0x005C($sp)
	lw      $t0, 0x0030($sp)
	lw      $t1, 0x0038($sp)
	lw      $t7, 0x0008($t0)
	sll     $t9, $t1, 3
	addu    $t3, $t7, $t9
	lhu     $t2, 0x0000($t3)
	lw      $t4, 0x005C($sp)
	nop
	sw      $t2, 0x0044($t4)
	lw      $t5, 0x0030($sp)
	lw      $t6, 0x0038($sp)
	lw      $t8, 0x0008($t5)
	sll     $t0, $t6, 3
	addu    $t1, $t8, $t0
	lhu     $t7, 0x0002($t1)
	lw      $t3, 0x0054($sp)
	lhu     $t4, 0x0004($t1)
	lhu     $t8, 0x0006($t1)
	sll     $t9, $t7, 2
	sll     $t5, $t4, 2
	sll     $t0, $t8, 2
	addu    $t7, $t3, $t0
	addu    $t6, $t3, $t5
	addu    $t2, $t3, $t9
	lw      $a1, 0x0000($t2)
	lw      $a2, 0x0000($t6)
	lw      $a3, 0x0000($t7)
	lw      $a0, 0x005C($sp)
	jal     face_shape_80197904
	nop
	lw      $t9, 0x0030($sp)
	lw      $t4, 0x0038($sp)
	lw      $t2, 0x0008($t9)
	sll     $t5, $t4, 3
	addu    $t6, $t2, $t5
	lhu     $t1, 0x0002($t6)
	lw      $t3, 0x0054($sp)
	sll     $t8, $t1, 2
	addu    $t0, $t3, $t8
	lw      $t7, 0x0000($t0)
	lw      $t9, 0x005C($sp)
	lwc1    $f18, 0x002C($t7)
	lwc1    $f4, 0x0024($t9)
	nop
	add.s   $f6, $f18, $f4
	swc1    $f6, 0x002C($t7)
	lw      $t4, 0x0030($sp)
	lw      $t5, 0x0038($sp)
	lw      $t2, 0x0008($t4)
	sll     $t6, $t5, 3
	addu    $t1, $t2, $t6
	lhu     $t3, 0x0002($t1)
	lw      $t0, 0x0054($sp)
	sll     $t8, $t3, 2
	addu    $t9, $t0, $t8
	lw      $t7, 0x0000($t9)
	lw      $t4, 0x005C($sp)
	lwc1    $f8, 0x0030($t7)
	lwc1    $f10, 0x0028($t4)
	nop
	add.s   $f16, $f8, $f10
	swc1    $f16, 0x0030($t7)
	lw      $t5, 0x0030($sp)
	lw      $t6, 0x0038($sp)
	lw      $t2, 0x0008($t5)
	sll     $t1, $t6, 3
	addu    $t3, $t2, $t1
	lhu     $t0, 0x0002($t3)
	lw      $t9, 0x0054($sp)
	sll     $t8, $t0, 2
	addu    $t4, $t9, $t8
	lw      $t7, 0x0000($t4)
	lw      $t5, 0x005C($sp)
	lwc1    $f18, 0x0034($t7)
	lwc1    $f4, 0x002C($t5)
	nop
	add.s   $f6, $f18, $f4
	swc1    $f6, 0x0034($t7)
	lw      $t6, 0x0030($sp)
	lw      $t1, 0x0038($sp)
	lw      $t2, 0x0008($t6)
	sll     $t3, $t1, 3
	addu    $t0, $t2, $t3
	lhu     $t9, 0x0004($t0)
	lw      $t4, 0x0054($sp)
	sll     $t8, $t9, 2
	addu    $t5, $t4, $t8
	lw      $t7, 0x0000($t5)
	lw      $t6, 0x005C($sp)
	lwc1    $f8, 0x002C($t7)
	lwc1    $f10, 0x0024($t6)
	nop
	add.s   $f16, $f8, $f10
	swc1    $f16, 0x002C($t7)
	lw      $t1, 0x0030($sp)
	lw      $t3, 0x0038($sp)
	lw      $t2, 0x0008($t1)
	sll     $t0, $t3, 3
	addu    $t9, $t2, $t0
	lhu     $t4, 0x0004($t9)
	lw      $t5, 0x0054($sp)
	sll     $t8, $t4, 2
	addu    $t6, $t5, $t8
	lw      $t7, 0x0000($t6)
	lw      $t1, 0x005C($sp)
	lwc1    $f18, 0x0030($t7)
	lwc1    $f4, 0x0028($t1)
	nop
	add.s   $f6, $f18, $f4
	swc1    $f6, 0x0030($t7)
	lw      $t3, 0x0030($sp)
	lw      $t0, 0x0038($sp)
	lw      $t2, 0x0008($t3)
	sll     $t9, $t0, 3
	addu    $t4, $t2, $t9
	lhu     $t5, 0x0004($t4)
	lw      $t6, 0x0054($sp)
	sll     $t8, $t5, 2
	addu    $t1, $t6, $t8
	lw      $t7, 0x0000($t1)
	lw      $t3, 0x005C($sp)
	lwc1    $f8, 0x0034($t7)
	lwc1    $f10, 0x002C($t3)
	nop
	add.s   $f16, $f8, $f10
	swc1    $f16, 0x0034($t7)
	lw      $t0, 0x0030($sp)
	lw      $t9, 0x0038($sp)
	lw      $t2, 0x0008($t0)
	sll     $t4, $t9, 3
	addu    $t5, $t2, $t4
	lhu     $t6, 0x0006($t5)
	lw      $t1, 0x0054($sp)
	sll     $t8, $t6, 2
	addu    $t3, $t1, $t8
	lw      $t7, 0x0000($t3)
	lw      $t0, 0x005C($sp)
	lwc1    $f18, 0x002C($t7)
	lwc1    $f4, 0x0024($t0)
	nop
	add.s   $f6, $f18, $f4
	swc1    $f6, 0x002C($t7)
	lw      $t9, 0x0030($sp)
	lw      $t4, 0x0038($sp)
	lw      $t2, 0x0008($t9)
	sll     $t5, $t4, 3
	addu    $t6, $t2, $t5
	lhu     $t1, 0x0006($t6)
	lw      $t3, 0x0054($sp)
	sll     $t8, $t1, 2
	addu    $t0, $t3, $t8
	lw      $t7, 0x0000($t0)
	lw      $t9, 0x005C($sp)
	lwc1    $f8, 0x0030($t7)
	lwc1    $f10, 0x0028($t9)
	nop
	add.s   $f16, $f8, $f10
	swc1    $f16, 0x0030($t7)
	lw      $t4, 0x0030($sp)
	lw      $t5, 0x0038($sp)
	lw      $t2, 0x0008($t4)
	sll     $t6, $t5, 3
	addu    $t1, $t2, $t6
	lhu     $t3, 0x0006($t1)
	lw      $t0, 0x0054($sp)
	sll     $t8, $t3, 2
	addu    $t9, $t0, $t8
	lw      $t7, 0x0000($t9)
	lw      $t4, 0x005C($sp)
	lwc1    $f18, 0x0034($t7)
	lwc1    $f4, 0x002C($t4)
	nop
	add.s   $f6, $f18, $f4
	swc1    $f6, 0x0034($t7)
	lw      $t5, 0x0038($sp)
	lw      $t6, 0x0030($sp)
	addiu   $t2, $t5, 0x0001
	sw      $t2, 0x0038($sp)
	lw      $t1, 0x0000($t6)
	nop
	sltu    $at, $t2, $t1
	bnez    $at, 164$
	nop
358$:
	lw      $t3, 0x0060($sp)
	nop
	lw      $t0, 0x0044($t3)
	nop
	andi    $t8, $t0, 0x0010
	beqz    $t8, 416$
	nop
	lw      $t9, 0x0034($sp)
	sw      $0, 0x0038($sp)
	lw      $t4, 0x0000($t9)
	nop
	beqz    $t4, 414$
	nop
371$:
	lw      $t5, 0x0038($sp)
	lw      $t7, 0x0054($sp)
	sll     $t6, $t5, 2
	addu    $t2, $t7, $t6
	lw      $t1, 0x0000($t2)
	nop
	lwc1    $f8, 0x0020($t1)
	nop
	swc1    $f8, 0x002C($t1)
	lw      $t0, 0x0038($sp)
	lw      $t3, 0x0054($sp)
	sll     $t8, $t0, 2
	addu    $t9, $t3, $t8
	lw      $t4, 0x0000($t9)
	nop
	lwc1    $f10, 0x0024($t4)
	nop
	swc1    $f10, 0x0030($t4)
	lw      $t7, 0x0038($sp)
	lw      $t5, 0x0054($sp)
	sll     $t6, $t7, 2
	addu    $t2, $t5, $t6
	lw      $t1, 0x0000($t2)
	nop
	lwc1    $f16, 0x0028($t1)
	nop
	swc1    $f16, 0x0034($t1)
	lw      $t3, 0x0038($sp)
	lw      $t0, 0x0054($sp)
	sll     $t8, $t3, 2
	addu    $t9, $t0, $t8
	lw      $a0, 0x0000($t9)
	jal     face_math_80194D34
	addiu   $a0, $a0, 0x002C
	lw      $t4, 0x0038($sp)
	lw      $t5, 0x0034($sp)
	addiu   $t7, $t4, 0x0001
	sw      $t7, 0x0038($sp)
	lw      $t6, 0x0000($t5)
	nop
	sltu    $at, $t7, $t6
	bnez    $at, 371$
	nop
414$:
	b       438$
	nop
416$:
	lw      $t2, 0x0034($sp)
	sw      $0, 0x0038($sp)
	lw      $t1, 0x0000($t2)
	nop
	beqz    $t1, 438$
	nop
422$:
	lw      $t0, 0x0038($sp)
	lw      $t3, 0x0054($sp)
	sll     $t8, $t0, 2
	addu    $t9, $t3, $t8
	lw      $a0, 0x0000($t9)
	jal     face_math_80194D34
	addiu   $a0, $a0, 0x002C
	lw      $t4, 0x0038($sp)
	lw      $t7, 0x0034($sp)
	addiu   $t5, $t4, 0x0001
	sw      $t5, 0x0038($sp)
	lw      $t6, 0x0000($t7)
	nop
	sltu    $at, $t5, $t6
	bnez    $at, 422$
	nop
438$:
	lw      $a0, 0x0054($sp)
	jal     gd_free
	nop
	lw      $a1, 0x002C($sp)
	li      $a0, 0x0080
	jal     face_object_8017D76C
	move    $a2, $0
	sw      $v0, 0x0040($sp)
	lw      $t2, 0x0040($sp)
	lw      $t1, 0x0060($sp)
	nop
	sw      $t2, 0x001C($t1)
	lw      $t0, 0x003C($sp)
	lw      $t3, 0x0060($sp)
	nop
	sw      $t0, 0x0020($t3)
454$:
	lw      $t8, 0x0050($sp)
	nop
	beqz    $t8, 474$
	nop
	lw      $t9, 0x0060($sp)
	nop
	lw      $t4, 0x001C($t9)
	nop
	beqz    $t4, 471$
	nop
	lw      $t7, 0x0060($sp)
	lw      $a1, 0x0050($sp)
	lw      $a0, 0x001C($t7)
	jal     face_draw_8017B1A4
	nop
	b       474$
	nop
471$:
	la.u    $a0, str_face_dynlist_801B641C
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B641C
474$:
	jal     imout
	nop
	la.u    $a0, str_face_dynlist_801B6450
	jal     face_stdio_8018C598
	la.l    $a0, str_face_dynlist_801B6450
	b       481$
	nop
481$:
	lw      $ra, 0x0024($sp)
	lwc1    $f21, 0x0018($sp)
	lwc1    $f20, 0x001C($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0060

dSetNodeGroup:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0030($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(face_dynlist_801A83E4)
	lw      $t6, %lo(face_dynlist_801A83E4)($t6)
	nop
	bnez    $t6, 12$
	nop
	la.u    $a0, str_face_dynlist_801B6460
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B6460
12$:
	lw      $a0, 0x0030($sp)
	jal     face_dynlist_80184510
	nop
	sw      $v0, 0x002C($sp)
	lw      $t7, 0x002C($sp)
	nop
	bnez    $t7, 24$
	nop
	la.u    $a0, str_face_dynlist_801B6484
	lw      $a1, 0x0030($sp)
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B6484
24$:
	lui     $t8, %hi(face_dynlist_801A83E4)
	lw      $t8, %lo(face_dynlist_801A83E4)($t8)
	li      $at, 0x0010
	lw      $s0, 0x000C($t8)
	nop
	beq     $s0, $at, 56$
	nop
	li      $at, 0x0020
	beq     $s0, $at, 42$
	nop
	li      $at, 0x2000
	beq     $s0, $at, 68$
	nop
	li      $at, 0x00010000
	beq     $s0, $at, 76$
	nop
	b       88$
	nop
42$:
	lw      $t9, 0x002C($sp)
	lui     $t1, %hi(face_dynlist_801A83E4)
	lw      $t1, %lo(face_dynlist_801A83E4)($t1)
	lw      $t0, 0x0008($t9)
	nop
	sw      $t0, 0x01C8($t1)
	lw      $t2, 0x002C($sp)
	lui     $t4, %hi(face_dynlist_801A83E4)
	lw      $t4, %lo(face_dynlist_801A83E4)($t4)
	lw      $t3, 0x0008($t2)
	nop
	sw      $t3, 0x01D0($t4)
	b       98$
	nop
56$:
	lw      $t5, 0x002C($sp)
	lui     $t7, %hi(face_dynlist_801A83E4)
	lw      $t7, %lo(face_dynlist_801A83E4)($t7)
	lw      $t6, 0x0008($t5)
	nop
	sw      $t6, 0x0020($t7)
	lui     $a0, %hi(face_dynlist_801A83E4)
	lw      $a0, %lo(face_dynlist_801A83E4)($a0)
	jal     chk_shapegen
	nop
	b       98$
	nop
68$:
	lw      $t8, 0x002C($sp)
	lui     $t0, %hi(face_dynlist_801A83E4)
	lw      $t0, %lo(face_dynlist_801A83E4)($t0)
	lw      $t9, 0x0008($t8)
	nop
	sw      $t9, 0x0054($t0)
	b       98$
	nop
76$:
	lw      $t1, 0x002C($sp)
	lui     $t3, %hi(face_dynlist_801A83E4)
	lw      $t3, %lo(face_dynlist_801A83E4)($t3)
	lw      $t2, 0x0008($t1)
	nop
	sw      $t2, 0x0018($t3)
	lui     $a0, %hi(face_dynlist_801A83E4)
	lw      $a0, %lo(face_dynlist_801A83E4)($a0)
	jal     animdata
	nop
	b       98$
	nop
88$:
	lui     $t4, %hi(face_dynlist_801A83E4)
	lw      $t4, %lo(face_dynlist_801A83E4)($t4)
	lui     $a2, %hi(_face_dynlist_bss-0x5E0+0x610)
	lw      $a2, %lo(_face_dynlist_bss-0x5E0+0x610)($a2)
	la.u    $a0, str_face_dynlist_801B64AC
	la.u    $a1, str_face_dynlist_801B64E0
	lw      $a3, 0x000C($t4)
	la.l    $a1, str_face_dynlist_801B64E0
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B64AC
98$:
	b       100$
	nop
100$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0030

dSetMatGroup:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lui     $t6, %hi(face_dynlist_801A83E4)
	lw      $t6, %lo(face_dynlist_801A83E4)($t6)
	nop
	bnez    $t6, 11$
	nop
	la.u    $a0, str_face_dynlist_801B64F0
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B64F0
11$:
	lw      $a0, 0x0020($sp)
	jal     face_dynlist_80184510
	nop
	sw      $v0, 0x001C($sp)
	lw      $t7, 0x001C($sp)
	nop
	bnez    $t7, 23$
	nop
	la.u    $a0, str_face_dynlist_801B6514
	lw      $a1, 0x0020($sp)
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B6514
23$:
	lui     $t8, %hi(face_dynlist_801A83E4)
	lw      $t8, %lo(face_dynlist_801A83E4)($t8)
	li      $at, 0x0010
	lw      $t9, 0x000C($t8)
	nop
	bne     $t9, $at, 44$
	nop
	b       32$
	nop
32$:
	lw      $t0, 0x001C($sp)
	lui     $t2, %hi(face_dynlist_801A83E4)
	lw      $t2, %lo(face_dynlist_801A83E4)($t2)
	lw      $t1, 0x0008($t0)
	nop
	sw      $t1, 0x002C($t2)
	lui     $a0, %hi(face_dynlist_801A83E4)
	lw      $a0, %lo(face_dynlist_801A83E4)($a0)
	jal     chk_shapegen
	nop
	b       54$
	nop
44$:
	lui     $t3, %hi(face_dynlist_801A83E4)
	lw      $t3, %lo(face_dynlist_801A83E4)($t3)
	lui     $a2, %hi(_face_dynlist_bss-0x5E0+0x610)
	lw      $a2, %lo(_face_dynlist_bss-0x5E0+0x610)($a2)
	la.u    $a0, str_face_dynlist_801B6538
	la.u    $a1, str_face_dynlist_801B656C
	lw      $a3, 0x000C($t3)
	la.l    $a1, str_face_dynlist_801B656C
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B6538
54$:
	b       56$
	nop
56$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

dSetTextureST:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	swc1    $f12, 0x0020($sp)
	swc1    $f14, 0x0024($sp)
	lui     $t6, %hi(face_dynlist_801A83E4)
	lw      $t6, %lo(face_dynlist_801A83E4)($t6)
	nop
	bnez    $t6, 12$
	nop
	la.u    $a0, str_face_dynlist_801B657C
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B657C
12$:
	lui     $t7, %hi(face_dynlist_801A83E4)
	lw      $t7, %lo(face_dynlist_801A83E4)($t7)
	li      $at, 0x0100
	lw      $t8, 0x000C($t7)
	nop
	bne     $t8, $at, 23$
	nop
	b       21$
	nop
21$:
	b       33$
	nop
23$:
	lui     $t9, %hi(face_dynlist_801A83E4)
	lw      $t9, %lo(face_dynlist_801A83E4)($t9)
	lui     $a2, %hi(_face_dynlist_bss-0x5E0+0x610)
	lw      $a2, %lo(_face_dynlist_bss-0x5E0+0x610)($a2)
	la.u    $a0, str_face_dynlist_801B65A0
	la.u    $a1, str_face_dynlist_801B65D4
	lw      $a3, 0x000C($t9)
	la.l    $a1, str_face_dynlist_801B65D4
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B65A0
33$:
	b       35$
	nop
35$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

dUseTexture:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lui     $t6, %hi(face_dynlist_801A83E4)
	lw      $t6, %lo(face_dynlist_801A83E4)($t6)
	nop
	bnez    $t6, 11$
	nop
	la.u    $a0, str_face_dynlist_801B65E4
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B65E4
11$:
	lui     $t7, %hi(face_dynlist_801A83E4)
	lw      $t7, %lo(face_dynlist_801A83E4)($t7)
	li      $at, 0x0800
	lw      $t8, 0x000C($t7)
	nop
	bne     $t8, $at, 27$
	nop
	b       20$
	nop
20$:
	lui     $t0, %hi(face_dynlist_801A83E4)
	lw      $t0, %lo(face_dynlist_801A83E4)($t0)
	lw      $t9, 0x0018($sp)
	nop
	sw      $t9, 0x0058($t0)
	b       37$
	nop
27$:
	lui     $t1, %hi(face_dynlist_801A83E4)
	lw      $t1, %lo(face_dynlist_801A83E4)($t1)
	lui     $a2, %hi(_face_dynlist_bss-0x5E0+0x610)
	lw      $a2, %lo(_face_dynlist_bss-0x5E0+0x610)($a2)
	la.u    $a0, str_face_dynlist_801B6608
	la.u    $a1, str_face_dynlist_801B663C
	lw      $a3, 0x000C($t1)
	la.l    $a1, str_face_dynlist_801B663C
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B6608
37$:
	b       39$
	nop
39$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

dSetSkinShape:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lui     $t6, %hi(face_dynlist_801A83E4)
	lw      $t6, %lo(face_dynlist_801A83E4)($t6)
	nop
	bnez    $t6, 11$
	nop
	la.u    $a0, str_face_dynlist_801B664C
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B664C
11$:
	lw      $a0, 0x0020($sp)
	jal     face_dynlist_80184510
	nop
	sw      $v0, 0x001C($sp)
	lw      $t7, 0x001C($sp)
	nop
	bnez    $t7, 23$
	nop
	la.u    $a0, str_face_dynlist_801B6670
	lw      $a1, 0x0020($sp)
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B6670
23$:
	lui     $t8, %hi(face_dynlist_801A83E4)
	lw      $t8, %lo(face_dynlist_801A83E4)($t8)
	li      $at, 0x0020
	lw      $t9, 0x000C($t8)
	nop
	bne     $t9, $at, 41$
	nop
	b       32$
	nop
32$:
	lw      $t0, 0x001C($sp)
	lui     $t3, %hi(face_dynlist_801A83E4)
	lw      $t1, 0x0008($t0)
	lw      $t3, %lo(face_dynlist_801A83E4)($t3)
	lw      $t2, 0x0020($t1)
	nop
	sw      $t2, 0x01C4($t3)
	b       51$
	nop
41$:
	lui     $t4, %hi(face_dynlist_801A83E4)
	lw      $t4, %lo(face_dynlist_801A83E4)($t4)
	lui     $a2, %hi(_face_dynlist_bss-0x5E0+0x610)
	lw      $a2, %lo(_face_dynlist_bss-0x5E0+0x610)($a2)
	la.u    $a0, str_face_dynlist_801B6698
	la.u    $a1, str_face_dynlist_801B66CC
	lw      $a3, 0x000C($t4)
	la.l    $a1, str_face_dynlist_801B66CC
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B6698
51$:
	b       53$
	nop
53$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

dMapMaterials:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lui     $t6, %hi(face_dynlist_801A83E4)
	lw      $t6, %lo(face_dynlist_801A83E4)($t6)
	nop
	bnez    $t6, 11$
	nop
	la.u    $a0, str_face_dynlist_801B66DC
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B66DC
11$:
	lw      $a0, 0x0020($sp)
	jal     face_dynlist_80184510
	nop
	sw      $v0, 0x001C($sp)
	lw      $t7, 0x001C($sp)
	nop
	bnez    $t7, 23$
	nop
	la.u    $a0, str_face_dynlist_801B6700
	lw      $a1, 0x0020($sp)
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B6700
23$:
	lw      $t8, 0x001C($sp)
	lui     $a0, %hi(face_dynlist_801A83E4)
	lw      $a0, %lo(face_dynlist_801A83E4)($a0)
	lw      $a1, 0x0008($t8)
	jal     face_draw_8017B1A4
	nop
	b       31$
	nop
31$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

dMapVertices:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lui     $t6, %hi(face_dynlist_801A83E4)
	lw      $t6, %lo(face_dynlist_801A83E4)($t6)
	nop
	bnez    $t6, 11$
	nop
	la.u    $a0, str_face_dynlist_801B6728
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B6728
11$:
	lw      $a0, 0x0020($sp)
	jal     face_dynlist_80184510
	nop
	sw      $v0, 0x001C($sp)
	lw      $t7, 0x001C($sp)
	nop
	bnez    $t7, 23$
	nop
	la.u    $a0, str_face_dynlist_801B674C
	lw      $a1, 0x0020($sp)
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B674C
23$:
	lw      $t8, 0x001C($sp)
	lui     $a0, %hi(face_dynlist_801A83E4)
	lw      $a0, %lo(face_dynlist_801A83E4)($a0)
	lw      $a1, 0x0008($t8)
	jal     map_vertices
	nop
	b       31$
	nop
31$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

dSetPlaneGroup:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0030($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(face_dynlist_801A83E4)
	lw      $t6, %lo(face_dynlist_801A83E4)($t6)
	nop
	bnez    $t6, 12$
	nop
	la.u    $a0, str_face_dynlist_801B6770
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B6770
12$:
	lw      $a0, 0x0030($sp)
	jal     face_dynlist_80184510
	nop
	sw      $v0, 0x002C($sp)
	lw      $t7, 0x002C($sp)
	nop
	bnez    $t7, 24$
	nop
	la.u    $a0, str_face_dynlist_801B6794
	lw      $a1, 0x0030($sp)
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B6794
24$:
	lui     $t8, %hi(face_dynlist_801A83E4)
	lw      $t8, %lo(face_dynlist_801A83E4)($t8)
	li      $at, 0x0010
	lw      $s0, 0x000C($t8)
	nop
	beq     $s0, $at, 44$
	nop
	li      $at, 0x0020
	beq     $s0, $at, 36$
	nop
	b       56$
	nop
36$:
	lw      $t9, 0x002C($sp)
	lui     $t1, %hi(face_dynlist_801A83E4)
	lw      $t1, %lo(face_dynlist_801A83E4)($t1)
	lw      $t0, 0x0008($t9)
	nop
	sw      $t0, 0x01CC($t1)
	b       66$
	nop
44$:
	lw      $t2, 0x002C($sp)
	lui     $t4, %hi(face_dynlist_801A83E4)
	lw      $t4, %lo(face_dynlist_801A83E4)($t4)
	lw      $t3, 0x0008($t2)
	nop
	sw      $t3, 0x001C($t4)
	lui     $a0, %hi(face_dynlist_801A83E4)
	lw      $a0, %lo(face_dynlist_801A83E4)($a0)
	jal     chk_shapegen
	nop
	b       66$
	nop
56$:
	lui     $t5, %hi(face_dynlist_801A83E4)
	lw      $t5, %lo(face_dynlist_801A83E4)($t5)
	lui     $a2, %hi(_face_dynlist_bss-0x5E0+0x610)
	lw      $a2, %lo(_face_dynlist_bss-0x5E0+0x610)($a2)
	la.u    $a0, str_face_dynlist_801B67BC
	la.u    $a1, str_face_dynlist_801B67F0
	lw      $a3, 0x000C($t5)
	la.l    $a1, str_face_dynlist_801B67F0
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B67BC
66$:
	b       68$
	nop
68$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0030

.globl dSetShapePtrPtr
dSetShapePtrPtr:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	sw      $0, 0x0024($sp)
	lui     $t6, %hi(face_dynlist_801A83E4)
	lw      $t6, %lo(face_dynlist_801A83E4)($t6)
	nop
	bnez    $t6, 13$
	nop
	la.u    $a0, str_face_dynlist_801B6804
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B6804
13$:
	lw      $t7, 0x0028($sp)
	nop
	bnez    $t7, 19$
	nop
	addiu   $t8, $sp, 0x0024
	sw      $t8, 0x0028($sp)
19$:
	lui     $t9, %hi(face_dynlist_801A83E4)
	lw      $t9, %lo(face_dynlist_801A83E4)($t9)
	li      $at, 0x0002
	lw      $s0, 0x000C($t9)
	nop
	beq     $s0, $at, 63$
	nop
	li      $at, 0x0004
	beq     $s0, $at, 43$
	nop
	li      $at, 0x0008
	beq     $s0, $at, 79$
	nop
	li      $at, 0x0020
	beq     $s0, $at, 55$
	nop
	li      $at, 0x2000
	beq     $s0, $at, 71$
	nop
	li      $at, 0x00080000
	beq     $s0, $at, 87$
	nop
	b       95$
	nop
43$:
	lw      $t0, 0x0028($sp)
	lui     $t2, %hi(face_dynlist_801A83E4)
	lw      $t2, %lo(face_dynlist_801A83E4)($t2)
	lw      $t1, 0x0000($t0)
	nop
	sw      $t1, 0x0020($t2)
	lui     $t3, %hi(face_dynlist_801A83E4)
	lw      $t3, %lo(face_dynlist_801A83E4)($t3)
	nop
	sw      $0, 0x01C8($t3)
	b       105$
	nop
55$:
	lw      $t4, 0x0028($sp)
	lui     $t6, %hi(face_dynlist_801A83E4)
	lw      $t6, %lo(face_dynlist_801A83E4)($t6)
	lw      $t5, 0x0000($t4)
	nop
	sw      $t5, 0x01A8($t6)
	b       105$
	nop
63$:
	lw      $t7, 0x0028($sp)
	lui     $t9, %hi(face_dynlist_801A83E4)
	lw      $t9, %lo(face_dynlist_801A83E4)($t9)
	lw      $t8, 0x0000($t7)
	nop
	sw      $t8, 0x00F0($t9)
	b       105$
	nop
71$:
	lw      $t0, 0x0028($sp)
	lui     $t2, %hi(face_dynlist_801A83E4)
	lw      $t2, %lo(face_dynlist_801A83E4)($t2)
	lw      $t1, 0x0000($t0)
	nop
	sw      $t1, 0x0050($t2)
	b       105$
	nop
79$:
	lw      $t3, 0x0028($sp)
	lui     $t5, %hi(face_dynlist_801A83E4)
	lw      $t5, %lo(face_dynlist_801A83E4)($t5)
	lw      $t4, 0x0000($t3)
	nop
	sw      $t4, 0x001C($t5)
	b       105$
	nop
87$:
	lw      $t6, 0x0028($sp)
	lui     $t8, %hi(face_dynlist_801A83E4)
	lw      $t8, %lo(face_dynlist_801A83E4)($t8)
	lw      $t7, 0x0000($t6)
	nop
	sw      $t7, 0x009C($t8)
	b       105$
	nop
95$:
	lui     $t9, %hi(face_dynlist_801A83E4)
	lw      $t9, %lo(face_dynlist_801A83E4)($t9)
	lui     $a2, %hi(_face_dynlist_bss-0x5E0+0x610)
	lw      $a2, %lo(_face_dynlist_bss-0x5E0+0x610)($a2)
	la.u    $a0, str_face_dynlist_801B6828
	la.u    $a1, str_face_dynlist_801B685C
	lw      $a3, 0x000C($t9)
	la.l    $a1, str_face_dynlist_801B685C
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B6828
105$:
	b       107$
	nop
107$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0028

dSetShapePtr:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	nop
	bnez    $t6, 10$
	nop
	b       99$
	nop
10$:
	lw      $a0, 0x0028($sp)
	jal     face_dynlist_80184510
	nop
	sw      $v0, 0x0024($sp)
	lw      $t7, 0x0024($sp)
	nop
	bnez    $t7, 22$
	nop
	la.u    $a0, str_face_dynlist_801B6870
	lw      $a1, 0x0028($sp)
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B6870
22$:
	lui     $t8, %hi(face_dynlist_801A83E4)
	lw      $t8, %lo(face_dynlist_801A83E4)($t8)
	li      $at, 0x0002
	lw      $s0, 0x000C($t8)
	nop
	beq     $s0, $at, 63$
	nop
	li      $at, 0x0004
	beq     $s0, $at, 43$
	nop
	li      $at, 0x0008
	beq     $s0, $at, 79$
	nop
	li      $at, 0x0020
	beq     $s0, $at, 55$
	nop
	li      $at, 0x2000
	beq     $s0, $at, 71$
	nop
	b       87$
	nop
43$:
	lw      $t9, 0x0024($sp)
	lui     $t1, %hi(face_dynlist_801A83E4)
	lw      $t1, %lo(face_dynlist_801A83E4)($t1)
	lw      $t0, 0x0008($t9)
	nop
	sw      $t0, 0x0020($t1)
	lui     $t2, %hi(face_dynlist_801A83E4)
	lw      $t2, %lo(face_dynlist_801A83E4)($t2)
	nop
	sw      $0, 0x01C8($t2)
	b       97$
	nop
55$:
	lw      $t3, 0x0024($sp)
	lui     $t5, %hi(face_dynlist_801A83E4)
	lw      $t5, %lo(face_dynlist_801A83E4)($t5)
	lw      $t4, 0x0008($t3)
	nop
	sw      $t4, 0x01A8($t5)
	b       97$
	nop
63$:
	lw      $t6, 0x0024($sp)
	lui     $t8, %hi(face_dynlist_801A83E4)
	lw      $t8, %lo(face_dynlist_801A83E4)($t8)
	lw      $t7, 0x0008($t6)
	nop
	sw      $t7, 0x00F0($t8)
	b       97$
	nop
71$:
	lw      $t9, 0x0024($sp)
	lui     $t1, %hi(face_dynlist_801A83E4)
	lw      $t1, %lo(face_dynlist_801A83E4)($t1)
	lw      $t0, 0x0008($t9)
	nop
	sw      $t0, 0x0050($t1)
	b       97$
	nop
79$:
	lw      $t2, 0x0024($sp)
	lui     $t4, %hi(face_dynlist_801A83E4)
	lw      $t4, %lo(face_dynlist_801A83E4)($t4)
	lw      $t3, 0x0008($t2)
	nop
	sw      $t3, 0x001C($t4)
	b       97$
	nop
87$:
	lui     $t5, %hi(face_dynlist_801A83E4)
	lw      $t5, %lo(face_dynlist_801A83E4)($t5)
	lui     $a2, %hi(_face_dynlist_bss-0x5E0+0x610)
	lw      $a2, %lo(_face_dynlist_bss-0x5E0+0x610)($a2)
	la.u    $a0, str_face_dynlist_801B6898
	la.u    $a1, str_face_dynlist_801B68CC
	lw      $a3, 0x000C($t5)
	la.l    $a1, str_face_dynlist_801B68CC
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B6898
97$:
	b       99$
	nop
99$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0028

.globl dUseObj
dUseObj:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lw      $a0, 0x0020($sp)
	jal     face_dynlist_80184510
	nop
	sw      $v0, 0x001C($sp)
	lw      $t6, 0x001C($sp)
	nop
	bnez    $t6, 15$
	nop
	la.u    $a0, str_face_dynlist_801B68DC
	lw      $a1, 0x0020($sp)
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B68DC
15$:
	lw      $t7, 0x001C($sp)
	lui     $at, %hi(face_dynlist_801A83E4)
	lw      $t8, 0x0008($t7)
	nop
	sw      $t8, %lo(face_dynlist_801A83E4)($at)
	lw      $t9, 0x001C($sp)
	lui     $at, %hi(_face_dynlist_bss-0x5E0+0x610)
	sw      $t9, %lo(_face_dynlist_bss-0x5E0+0x610)($at)
	lw      $t0, 0x001C($sp)
	nop
	lw      $v0, 0x0008($t0)
	b       30$
	nop
	b       30$
	nop
30$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl face_dynlist_80186C84
face_dynlist_80186C84:
	lui     $at, %hi(face_dynlist_801A83E4)
	sw      $a0, %lo(face_dynlist_801A83E4)($at)
	la.u    $t6, _face_dynlist_bss-0x5E0+0x5E8
	la.l    $t6, _face_dynlist_bss-0x5E0+0x5E8
	lui     $at, %hi(_face_dynlist_bss-0x5E0+0x610)
	sw      $t6, %lo(_face_dynlist_bss-0x5E0+0x610)($at)
	jr      $ra
	nop
	jr      $ra
	nop

.globl face_dynlist_80186CAC
face_dynlist_80186CAC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $a1, 0x0018($sp)
	jal     dMakeObj
	li      $a0, 0x0012
	b       8$
	nop
8$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl dEndGroup
dEndGroup:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	lw      $a0, 0x0028($sp)
	jal     face_dynlist_80184510
	nop
	sw      $v0, 0x0020($sp)
	lw      $t6, 0x0020($sp)
	nop
	bnez    $t6, 15$
	nop
	la.u    $a0, str_face_dynlist_801B68FC
	lw      $a1, 0x0028($sp)
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B68FC
15$:
	lw      $t7, 0x0020($sp)
	nop
	lw      $t8, 0x0008($t7)
	nop
	sw      $t8, 0x001C($sp)
	lw      $t9, 0x0020($sp)
	lui     $t2, %hi(_face_dynlist_bss-0x5E0+0x60C)
	lw      $t0, 0x000C($t9)
	lw      $t2, %lo(_face_dynlist_bss-0x5E0+0x60C)($t2)
	addiu   $t1, $t0, 0x0001
	slt     $at, $t1, $t2
	beqz    $at, 59$
	sw      $t1, 0x0018($sp)
28$:
	lw      $t4, 0x0018($sp)
	lui     $t3, %hi(face_dynlist_801A83E0)
	sll     $t5, $t4, 2
	lw      $t3, %lo(face_dynlist_801A83E0)($t3)
	addu    $t5, $t5, $t4
	sll     $t5, $t5, 2
	addu    $t6, $t3, $t5
	lw      $t7, 0x0008($t6)
	li      $at, 0x0001
	lw      $t8, 0x000C($t7)
	nop
	beq     $t8, $at, 52$
	nop
	lw      $t0, 0x0018($sp)
	lui     $t9, %hi(face_dynlist_801A83E0)
	sll     $t1, $t0, 2
	lw      $t9, %lo(face_dynlist_801A83E0)($t9)
	addu    $t1, $t1, $t0
	sll     $t1, $t1, 2
	addu    $t2, $t9, $t1
	lw      $a1, 0x0008($t2)
	lw      $a0, 0x001C($sp)
	jal     addto_group
	nop
52$:
	lw      $t4, 0x0018($sp)
	lui     $t5, %hi(_face_dynlist_bss-0x5E0+0x60C)
	lw      $t5, %lo(_face_dynlist_bss-0x5E0+0x60C)($t5)
	addiu   $t3, $t4, 0x0001
	slt     $at, $t3, $t5
	bnez    $at, 28$
	sw      $t3, 0x0018($sp)
59$:
	b       61$
	nop
61$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

dAddToGroup:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	lw      $a0, 0x0028($sp)
	jal     face_dynlist_80184510
	nop
	sw      $v0, 0x0020($sp)
	lw      $t6, 0x0020($sp)
	nop
	bnez    $t6, 15$
	nop
	la.u    $a0, str_face_dynlist_801B6920
	lw      $a1, 0x0028($sp)
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B6920
15$:
	lw      $t7, 0x0020($sp)
	nop
	lw      $t8, 0x0008($t7)
	nop
	sw      $t8, 0x001C($sp)
	lui     $a1, %hi(face_dynlist_801A83E4)
	lw      $a1, %lo(face_dynlist_801A83E4)($a1)
	lw      $a0, 0x001C($sp)
	jal     addto_group
	nop
	b       27$
	nop
27$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl face_dynlist_80186E5C
face_dynlist_80186E5C:
	lui     $at, %hi(face_dynlist_801A8400)
	sw      $a0, %lo(face_dynlist_801A8400)($at)
	jr      $ra
	nop
	jr      $ra
	nop

.globl dSetInitPos
dSetInitPos:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x001C($sp)
	sw      $a2, 0x0040($sp)
	swc1    $f12, 0x0038($sp)
	swc1    $f14, 0x003C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(face_dynlist_801A83E4)
	lw      $t6, %lo(face_dynlist_801A83E4)($t6)
	nop
	sw      $t6, 0x0028($sp)
	lui     $t7, %hi(face_dynlist_801A83E4)
	lw      $t7, %lo(face_dynlist_801A83E4)($t7)
	nop
	bnez    $t7, 18$
	nop
	la.u    $a0, str_face_dynlist_801B6944
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B6944
18$:
	lui     $t8, %hi(face_dynlist_801A83E4)
	lw      $t8, %lo(face_dynlist_801A83E4)($t8)
	li      $at, 0x0004
	lw      $s0, 0x000C($t8)
	nop
	beq     $s0, $at, 39$
	nop
	li      $at, 0x0008
	beq     $s0, $at, 103$
	nop
	li      $at, 0x0020
	beq     $s0, $at, 77$
	nop
	li      $at, 0x0100
	beq     $s0, $at, 131$
	nop
	li      $at, 0x0200
	beq     $s0, $at, 117$
	nop
	b       150$
	nop
39$:
	lwc1    $f4, 0x0038($sp)
	lw      $t9, 0x0028($sp)
	nop
	swc1    $f4, 0x0014($t9)
	lwc1    $f6, 0x003C($sp)
	lw      $t0, 0x0028($sp)
	nop
	swc1    $f6, 0x0018($t0)
	lwc1    $f8, 0x0040($sp)
	lw      $t1, 0x0028($sp)
	nop
	swc1    $f8, 0x001C($t1)
	lwc1    $f10, 0x0038($sp)
	lw      $t2, 0x0028($sp)
	nop
	swc1    $f10, 0x003C($t2)
	lwc1    $f16, 0x003C($sp)
	lw      $t3, 0x0028($sp)
	nop
	swc1    $f16, 0x0040($t3)
	lwc1    $f18, 0x0040($sp)
	lw      $t4, 0x0028($sp)
	nop
	swc1    $f18, 0x0044($t4)
	lwc1    $f4, 0x0038($sp)
	lw      $t5, 0x0028($sp)
	nop
	swc1    $f4, 0x0054($t5)
	lwc1    $f6, 0x003C($sp)
	lw      $t6, 0x0028($sp)
	nop
	swc1    $f6, 0x0058($t6)
	lwc1    $f8, 0x0040($sp)
	lw      $t7, 0x0028($sp)
	nop
	swc1    $f8, 0x005C($t7)
	b       160$
	nop
77$:
	lwc1    $f10, 0x0038($sp)
	lw      $t8, 0x0028($sp)
	nop
	swc1    $f10, 0x0014($t8)
	lwc1    $f16, 0x003C($sp)
	lw      $t9, 0x0028($sp)
	nop
	swc1    $f16, 0x0018($t9)
	lwc1    $f18, 0x0040($sp)
	lw      $t0, 0x0028($sp)
	nop
	swc1    $f18, 0x001C($t0)
	lwc1    $f4, 0x0038($sp)
	lw      $t1, 0x0028($sp)
	nop
	swc1    $f4, 0x0020($t1)
	lwc1    $f6, 0x003C($sp)
	lw      $t2, 0x0028($sp)
	nop
	swc1    $f6, 0x0024($t2)
	lwc1    $f8, 0x0040($sp)
	lw      $t3, 0x0028($sp)
	nop
	swc1    $f8, 0x0028($t3)
	b       160$
	nop
103$:
	lwc1    $f10, 0x0038($sp)
	lw      $t4, 0x0028($sp)
	nop
	swc1    $f10, 0x0020($t4)
	lwc1    $f16, 0x003C($sp)
	lw      $t5, 0x0028($sp)
	nop
	swc1    $f16, 0x0024($t5)
	lwc1    $f18, 0x0040($sp)
	lw      $t6, 0x0028($sp)
	nop
	swc1    $f18, 0x0028($t6)
	b       160$
	nop
117$:
	lwc1    $f4, 0x0038($sp)
	lw      $t7, 0x0028($sp)
	nop
	swc1    $f4, 0x0014($t7)
	lwc1    $f6, 0x003C($sp)
	lw      $t8, 0x0028($sp)
	nop
	swc1    $f6, 0x0018($t8)
	lwc1    $f8, 0x0040($sp)
	lw      $t9, 0x0028($sp)
	nop
	swc1    $f8, 0x001C($t9)
	b       160$
	nop
131$:
	lwc1    $f12, 0x0038($sp)
	lwc1    $f14, 0x003C($sp)
	lw      $a2, 0x0040($sp)
	jal     dSetRelPos
	nop
	lwc1    $f10, 0x0038($sp)
	lw      $t0, 0x0028($sp)
	nop
	swc1    $f10, 0x0014($t0)
	lwc1    $f16, 0x003C($sp)
	lw      $t1, 0x0028($sp)
	nop
	swc1    $f16, 0x0018($t1)
	lwc1    $f18, 0x0040($sp)
	lw      $t2, 0x0028($sp)
	nop
	swc1    $f18, 0x001C($t2)
	b       160$
	nop
150$:
	lui     $t3, %hi(face_dynlist_801A83E4)
	lw      $t3, %lo(face_dynlist_801A83E4)($t3)
	lui     $a2, %hi(_face_dynlist_bss-0x5E0+0x610)
	lw      $a2, %lo(_face_dynlist_bss-0x5E0+0x610)($a2)
	la.u    $a0, str_face_dynlist_801B6968
	la.u    $a1, str_face_dynlist_801B699C
	lw      $a3, 0x000C($t3)
	la.l    $a1, str_face_dynlist_801B699C
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B6968
160$:
	b       162$
	nop
162$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0038

dSetVelocity:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(face_dynlist_801A83E4)
	lw      $t6, %lo(face_dynlist_801A83E4)($t6)
	nop
	sw      $t6, 0x0024($sp)
	lui     $t7, %hi(face_dynlist_801A83E4)
	lw      $t7, %lo(face_dynlist_801A83E4)($t7)
	nop
	bnez    $t7, 16$
	nop
	la.u    $a0, str_face_dynlist_801B69AC
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B69AC
16$:
	lui     $t8, %hi(face_dynlist_801A83E4)
	lw      $t8, %lo(face_dynlist_801A83E4)($t8)
	li      $at, 0x0004
	lw      $s0, 0x000C($t8)
	nop
	beq     $s0, $at, 28$
	nop
	li      $at, 0x0020
	beq     $s0, $at, 45$
	nop
	b       62$
	nop
28$:
	lw      $t9, 0x0028($sp)
	lw      $t0, 0x0024($sp)
	lwc1    $f4, 0x0000($t9)
	nop
	swc1    $f4, 0x0078($t0)
	lw      $t1, 0x0028($sp)
	lw      $t2, 0x0024($sp)
	lwc1    $f6, 0x0004($t1)
	nop
	swc1    $f6, 0x007C($t2)
	lw      $t3, 0x0028($sp)
	lw      $t4, 0x0024($sp)
	lwc1    $f8, 0x0008($t3)
	nop
	swc1    $f8, 0x0080($t4)
	b       72$
	nop
45$:
	lw      $t5, 0x0028($sp)
	lw      $t6, 0x0024($sp)
	lwc1    $f10, 0x0000($t5)
	nop
	swc1    $f10, 0x0050($t6)
	lw      $t7, 0x0028($sp)
	lw      $t8, 0x0024($sp)
	lwc1    $f16, 0x0004($t7)
	nop
	swc1    $f16, 0x0054($t8)
	lw      $t9, 0x0028($sp)
	lw      $t0, 0x0024($sp)
	lwc1    $f18, 0x0008($t9)
	nop
	swc1    $f18, 0x0058($t0)
	b       72$
	nop
62$:
	lui     $t1, %hi(face_dynlist_801A83E4)
	lw      $t1, %lo(face_dynlist_801A83E4)($t1)
	lui     $a2, %hi(_face_dynlist_bss-0x5E0+0x610)
	lw      $a2, %lo(_face_dynlist_bss-0x5E0+0x610)($a2)
	la.u    $a0, str_face_dynlist_801B69D0
	la.u    $a1, str_face_dynlist_801B6A04
	lw      $a3, 0x000C($t1)
	la.l    $a1, str_face_dynlist_801B6A04
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B69D0
72$:
	b       74$
	nop
74$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0028

face_dynlist_80187244:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x0024($sp)
	sw      $a0, 0x0038($sp)
	sw      $s0, 0x0020($sp)
	swc1    $f21, 0x0018($sp)
	swc1    $f20, 0x001C($sp)
	lui     $t6, %hi(face_dynlist_801A83E4)
	lw      $t6, %lo(face_dynlist_801A83E4)($t6)
	nop
	sw      $t6, 0x0034($sp)
	lui     $t7, %hi(face_dynlist_801A83E4)
	lw      $t7, %lo(face_dynlist_801A83E4)($t7)
	nop
	bnez    $t7, 18$
	nop
	la.u    $a0, str_face_dynlist_801B6A14
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B6A14
18$:
	lui     $t8, %hi(face_dynlist_801A83E4)
	lw      $t8, %lo(face_dynlist_801A83E4)($t8)
	li      $at, 0x0004
	lw      $s0, 0x000C($t8)
	nop
	beq     $s0, $at, 30$
	nop
	li      $at, 0x0020
	beq     $s0, $at, 47$
	nop
	b       64$
	nop
30$:
	lw      $t9, 0x0034($sp)
	lw      $t0, 0x0038($sp)
	lwc1    $f4, 0x0078($t9)
	nop
	swc1    $f4, 0x0000($t0)
	lw      $t1, 0x0034($sp)
	lw      $t2, 0x0038($sp)
	lwc1    $f6, 0x007C($t1)
	nop
	swc1    $f6, 0x0004($t2)
	lw      $t3, 0x0034($sp)
	lw      $t4, 0x0038($sp)
	lwc1    $f8, 0x0080($t3)
	nop
	swc1    $f8, 0x0008($t4)
	b       78$
	nop
47$:
	lw      $t5, 0x0034($sp)
	lw      $t6, 0x0038($sp)
	lwc1    $f10, 0x0050($t5)
	nop
	swc1    $f10, 0x0000($t6)
	lw      $t7, 0x0034($sp)
	lw      $t8, 0x0038($sp)
	lwc1    $f16, 0x0054($t7)
	nop
	swc1    $f16, 0x0004($t8)
	lw      $t9, 0x0034($sp)
	lw      $t0, 0x0038($sp)
	lwc1    $f18, 0x0058($t9)
	nop
	swc1    $f18, 0x0008($t0)
	b       78$
	nop
64$:
	mtc1    $0, $f4
	lw      $t1, 0x0038($sp)
	nop
	swc1    $f4, 0x0008($t1)
	lw      $t2, 0x0038($sp)
	nop
	lwc1    $f20, 0x0008($t2)
	nop
	swc1    $f20, 0x0004($t2)
	lw      $t3, 0x0038($sp)
	nop
	swc1    $f20, 0x0000($t3)
	b       78$
	nop
78$:
	b       80$
	nop
80$:
	lw      $ra, 0x0024($sp)
	lwc1    $f21, 0x0018($sp)
	lwc1    $f20, 0x001C($sp)
	lw      $s0, 0x0020($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0038

dSetTorque:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lui     $t6, %hi(face_dynlist_801A83E4)
	lw      $t6, %lo(face_dynlist_801A83E4)($t6)
	nop
	sw      $t6, 0x001C($sp)
	lui     $t7, %hi(face_dynlist_801A83E4)
	lw      $t7, %lo(face_dynlist_801A83E4)($t7)
	nop
	bnez    $t7, 15$
	nop
	la.u    $a0, str_face_dynlist_801B6A38
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B6A38
15$:
	lui     $t8, %hi(face_dynlist_801A83E4)
	lw      $t8, %lo(face_dynlist_801A83E4)($t8)
	li      $at, 0x0020
	lw      $t9, 0x000C($t8)
	nop
	bne     $t9, $at, 41$
	nop
	b       24$
	nop
24$:
	lw      $t0, 0x0020($sp)
	lw      $t1, 0x001C($sp)
	lwc1    $f4, 0x0000($t0)
	nop
	swc1    $f4, 0x00A4($t1)
	lw      $t2, 0x0020($sp)
	lw      $t3, 0x001C($sp)
	lwc1    $f6, 0x0004($t2)
	nop
	swc1    $f6, 0x00A8($t3)
	lw      $t4, 0x0020($sp)
	lw      $t5, 0x001C($sp)
	lwc1    $f8, 0x0008($t4)
	nop
	swc1    $f8, 0x00AC($t5)
	b       51$
	nop
41$:
	lui     $t6, %hi(face_dynlist_801A83E4)
	lw      $t6, %lo(face_dynlist_801A83E4)($t6)
	lui     $a2, %hi(_face_dynlist_bss-0x5E0+0x610)
	lw      $a2, %lo(_face_dynlist_bss-0x5E0+0x610)($a2)
	la.u    $a0, str_face_dynlist_801B6A5C
	la.u    $a1, str_face_dynlist_801B6A90
	lw      $a3, 0x000C($t6)
	la.l    $a1, str_face_dynlist_801B6A90
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B6A5C
51$:
	b       53$
	nop
53$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl dGetInitPos
dGetInitPos:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(face_dynlist_801A83E4)
	lw      $t6, %lo(face_dynlist_801A83E4)($t6)
	nop
	sw      $t6, 0x0024($sp)
	lui     $t7, %hi(face_dynlist_801A83E4)
	lw      $t7, %lo(face_dynlist_801A83E4)($t7)
	nop
	bnez    $t7, 16$
	nop
	la.u    $a0, str_face_dynlist_801B6AA0
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B6AA0
16$:
	lui     $t8, %hi(face_dynlist_801A83E4)
	lw      $t8, %lo(face_dynlist_801A83E4)($t8)
	li      $at, 0x0004
	lw      $s0, 0x000C($t8)
	nop
	beq     $s0, $at, 31$
	nop
	li      $at, 0x0020
	beq     $s0, $at, 48$
	nop
	li      $at, 0x0100
	beq     $s0, $at, 65$
	nop
	b       82$
	nop
31$:
	lw      $t9, 0x0024($sp)
	lw      $t0, 0x0028($sp)
	lwc1    $f4, 0x0054($t9)
	nop
	swc1    $f4, 0x0000($t0)
	lw      $t1, 0x0024($sp)
	lw      $t2, 0x0028($sp)
	lwc1    $f6, 0x0058($t1)
	nop
	swc1    $f6, 0x0004($t2)
	lw      $t3, 0x0024($sp)
	lw      $t4, 0x0028($sp)
	lwc1    $f8, 0x005C($t3)
	nop
	swc1    $f8, 0x0008($t4)
	b       92$
	nop
48$:
	lw      $t5, 0x0024($sp)
	lw      $t6, 0x0028($sp)
	lwc1    $f10, 0x0020($t5)
	nop
	swc1    $f10, 0x0000($t6)
	lw      $t7, 0x0024($sp)
	lw      $t8, 0x0028($sp)
	lwc1    $f16, 0x0024($t7)
	nop
	swc1    $f16, 0x0004($t8)
	lw      $t9, 0x0024($sp)
	lw      $t0, 0x0028($sp)
	lwc1    $f18, 0x0028($t9)
	nop
	swc1    $f18, 0x0008($t0)
	b       92$
	nop
65$:
	lw      $t1, 0x0024($sp)
	lw      $t2, 0x0028($sp)
	lwc1    $f4, 0x0014($t1)
	nop
	swc1    $f4, 0x0000($t2)
	lw      $t3, 0x0024($sp)
	lw      $t4, 0x0028($sp)
	lwc1    $f6, 0x0018($t3)
	nop
	swc1    $f6, 0x0004($t4)
	lw      $t5, 0x0024($sp)
	lw      $t6, 0x0028($sp)
	lwc1    $f8, 0x001C($t5)
	nop
	swc1    $f8, 0x0008($t6)
	b       92$
	nop
82$:
	lui     $t7, %hi(face_dynlist_801A83E4)
	lw      $t7, %lo(face_dynlist_801A83E4)($t7)
	lui     $a2, %hi(_face_dynlist_bss-0x5E0+0x610)
	lw      $a2, %lo(_face_dynlist_bss-0x5E0+0x610)($a2)
	la.u    $a0, str_face_dynlist_801B6AC4
	la.u    $a1, str_face_dynlist_801B6AF8
	lw      $a3, 0x000C($t7)
	la.l    $a1, str_face_dynlist_801B6AF8
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B6AC4
92$:
	b       94$
	nop
94$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0028

.globl dGetInitRot
dGetInitRot:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x0024($sp)
	sw      $a0, 0x0038($sp)
	sw      $s0, 0x0020($sp)
	swc1    $f21, 0x0018($sp)
	swc1    $f20, 0x001C($sp)
	lui     $t6, %hi(face_dynlist_801A83E4)
	lw      $t6, %lo(face_dynlist_801A83E4)($t6)
	nop
	sw      $t6, 0x0034($sp)
	lui     $t7, %hi(face_dynlist_801A83E4)
	lw      $t7, %lo(face_dynlist_801A83E4)($t7)
	nop
	bnez    $t7, 18$
	nop
	la.u    $a0, str_face_dynlist_801B6B08
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B6B08
18$:
	lui     $t8, %hi(face_dynlist_801A83E4)
	lw      $t8, %lo(face_dynlist_801A83E4)($t8)
	li      $at, 0x0004
	lw      $s0, 0x000C($t8)
	nop
	beq     $s0, $at, 33$
	nop
	li      $at, 0x0020
	beq     $s0, $at, 50$
	nop
	li      $at, 0x00080000
	beq     $s0, $at, 67$
	nop
	b       81$
	nop
33$:
	lw      $t9, 0x0034($sp)
	lw      $t0, 0x0038($sp)
	lwc1    $f4, 0x006C($t9)
	nop
	swc1    $f4, 0x0000($t0)
	lw      $t1, 0x0034($sp)
	lw      $t2, 0x0038($sp)
	lwc1    $f6, 0x0070($t1)
	nop
	swc1    $f6, 0x0004($t2)
	lw      $t3, 0x0034($sp)
	lw      $t4, 0x0038($sp)
	lwc1    $f8, 0x0074($t3)
	nop
	swc1    $f8, 0x0008($t4)
	b       91$
	nop
50$:
	lw      $t5, 0x0034($sp)
	lw      $t6, 0x0038($sp)
	lwc1    $f10, 0x0068($t5)
	nop
	swc1    $f10, 0x0000($t6)
	lw      $t7, 0x0034($sp)
	lw      $t8, 0x0038($sp)
	lwc1    $f16, 0x006C($t7)
	nop
	swc1    $f16, 0x0004($t8)
	lw      $t9, 0x0034($sp)
	lw      $t0, 0x0038($sp)
	lwc1    $f18, 0x0070($t9)
	nop
	swc1    $f18, 0x0008($t0)
	b       91$
	nop
67$:
	mtc1    $0, $f4
	lw      $t1, 0x0038($sp)
	nop
	swc1    $f4, 0x0008($t1)
	lw      $t2, 0x0038($sp)
	nop
	lwc1    $f20, 0x0008($t2)
	nop
	swc1    $f20, 0x0004($t2)
	lw      $t3, 0x0038($sp)
	nop
	swc1    $f20, 0x0000($t3)
	b       91$
	nop
81$:
	lui     $t4, %hi(face_dynlist_801A83E4)
	lw      $t4, %lo(face_dynlist_801A83E4)($t4)
	lui     $a2, %hi(_face_dynlist_bss-0x5E0+0x610)
	lw      $a2, %lo(_face_dynlist_bss-0x5E0+0x610)($a2)
	la.u    $a0, str_face_dynlist_801B6B2C
	la.u    $a1, str_face_dynlist_801B6B60
	lw      $a3, 0x000C($t4)
	la.l    $a1, str_face_dynlist_801B6B60
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B6B2C
91$:
	b       93$
	nop
93$:
	lw      $ra, 0x0024($sp)
	lwc1    $f21, 0x0018($sp)
	lwc1    $f20, 0x001C($sp)
	lw      $s0, 0x0020($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0038

.globl dSetRelPos
dSetRelPos:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x001C($sp)
	sw      $a2, 0x0040($sp)
	swc1    $f12, 0x0038($sp)
	swc1    $f14, 0x003C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(face_dynlist_801A83E4)
	lw      $t6, %lo(face_dynlist_801A83E4)($t6)
	nop
	sw      $t6, 0x0034($sp)
	lui     $t7, %hi(face_dynlist_801A83E4)
	lw      $t7, %lo(face_dynlist_801A83E4)($t7)
	nop
	bnez    $t7, 18$
	nop
	la.u    $a0, str_face_dynlist_801B6B70
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B6B70
18$:
	lui     $t8, %hi(face_dynlist_801A83E4)
	lw      $t8, %lo(face_dynlist_801A83E4)($t8)
	li      $at, 0x0004
	lw      $s0, 0x000C($t8)
	nop
	beq     $s0, $at, 42$
	nop
	li      $at, 0x0008
	beq     $s0, $at, 167$
	nop
	li      $at, 0x0020
	beq     $s0, $at, 181$
	nop
	li      $at, 0x0100
	beq     $s0, $at, 139$
	nop
	li      $at, 0x0200
	beq     $s0, $at, 56$
	nop
	li      $at, 0x8000
	beq     $s0, $at, 153$
	nop
	b       183$
	nop
42$:
	lwc1    $f4, 0x0038($sp)
	lw      $t9, 0x0034($sp)
	nop
	swc1    $f4, 0x003C($t9)
	lwc1    $f6, 0x003C($sp)
	lw      $t0, 0x0034($sp)
	nop
	swc1    $f6, 0x0040($t0)
	lwc1    $f8, 0x0040($sp)
	lw      $t1, 0x0034($sp)
	nop
	swc1    $f8, 0x0044($t1)
	b       193$
	nop
56$:
	lwc1    $f10, 0x0038($sp)
	nop
	swc1    $f10, 0x0028($sp)
	lwc1    $f16, 0x003C($sp)
	nop
	swc1    $f16, 0x002C($sp)
	lwc1    $f18, 0x0040($sp)
	nop
	swc1    $f18, 0x0030($sp)
	lwc1    $f4, 0x0038($sp)
	lw      $t2, 0x0034($sp)
	nop
	swc1    $f4, 0x0040($t2)
	lwc1    $f6, 0x003C($sp)
	lw      $t3, 0x0034($sp)
	nop
	swc1    $f6, 0x0044($t3)
	lwc1    $f8, 0x0040($sp)
	lw      $t4, 0x0034($sp)
	nop
	swc1    $f8, 0x0048($t4)
	lwc1    $f10, 0x0038($sp)
	lw      $t5, 0x0034($sp)
	nop
	swc1    $f10, 0x0140($t5)
	lwc1    $f16, 0x003C($sp)
	lw      $t6, 0x0034($sp)
	nop
	swc1    $f16, 0x0144($t6)
	lwc1    $f18, 0x0040($sp)
	lw      $t7, 0x0034($sp)
	nop
	swc1    $f18, 0x0148($t7)
	lwc1    $f4, 0x0038($sp)
	li      $at, 0x3FF80000
	mtc1    $at, $f9
	mtc1    $0, $f8
	cvt.d.s $f6, $f4
	mul.d   $f10, $f6, $f8
	lw      $t8, 0x0034($sp)
	cvt.s.d $f16, $f10
	swc1    $f16, 0x014C($t8)
	lwc1    $f18, 0x003C($sp)
	li      $at, 0x3FF80000
	mtc1    $at, $f7
	mtc1    $0, $f6
	cvt.d.s $f4, $f18
	mul.d   $f8, $f4, $f6
	lw      $t9, 0x0034($sp)
	cvt.s.d $f10, $f8
	swc1    $f10, 0x0150($t9)
	lwc1    $f16, 0x0040($sp)
	li      $at, 0x3FF80000
	mtc1    $at, $f5
	mtc1    $0, $f4
	cvt.d.s $f18, $f16
	mul.d   $f6, $f18, $f4
	lw      $t0, 0x0034($sp)
	cvt.s.d $f8, $f6
	swc1    $f8, 0x0154($t0)
	li      $at, 0x40000000
	mtc1    $at, $f16
	lwc1    $f10, 0x0038($sp)
	lw      $t1, 0x0034($sp)
	mul.s   $f18, $f10, $f16
	swc1    $f18, 0x0158($t1)
	li      $at, 0x40000000
	mtc1    $at, $f6
	lwc1    $f4, 0x003C($sp)
	lw      $t2, 0x0034($sp)
	mul.s   $f8, $f4, $f6
	swc1    $f8, 0x015C($t2)
	li      $at, 0x40000000
	mtc1    $at, $f16
	lwc1    $f10, 0x0040($sp)
	lw      $t3, 0x0034($sp)
	mul.s   $f18, $f10, $f16
	swc1    $f18, 0x0160($t3)
	lw      $t5, 0x0034($sp)
	li      $t4, 0x0002
	sw      $t4, 0x0170($t5)
	b       193$
	nop
139$:
	lwc1    $f4, 0x0038($sp)
	lw      $t6, 0x0034($sp)
	nop
	swc1    $f4, 0x0020($t6)
	lwc1    $f6, 0x003C($sp)
	lw      $t7, 0x0034($sp)
	nop
	swc1    $f6, 0x0024($t7)
	lwc1    $f8, 0x0040($sp)
	lw      $t8, 0x0034($sp)
	nop
	swc1    $f8, 0x0028($t8)
	b       193$
	nop
153$:
	lwc1    $f10, 0x0038($sp)
	lw      $t9, 0x0034($sp)
	nop
	swc1    $f10, 0x0014($t9)
	lwc1    $f16, 0x003C($sp)
	lw      $t0, 0x0034($sp)
	nop
	swc1    $f16, 0x0018($t0)
	lwc1    $f18, 0x0040($sp)
	lw      $t1, 0x0034($sp)
	nop
	swc1    $f18, 0x001C($t1)
	b       193$
	nop
167$:
	lwc1    $f4, 0x0038($sp)
	lw      $t2, 0x0034($sp)
	nop
	swc1    $f4, 0x0020($t2)
	lwc1    $f6, 0x003C($sp)
	lw      $t3, 0x0034($sp)
	nop
	swc1    $f6, 0x0024($t3)
	lwc1    $f8, 0x0040($sp)
	lw      $t4, 0x0034($sp)
	nop
	swc1    $f8, 0x0028($t4)
	b       193$
	nop
181$:
	b       193$
	nop
183$:
	lui     $t5, %hi(face_dynlist_801A83E4)
	lw      $t5, %lo(face_dynlist_801A83E4)($t5)
	lui     $a2, %hi(_face_dynlist_bss-0x5E0+0x610)
	lw      $a2, %lo(_face_dynlist_bss-0x5E0+0x610)($a2)
	la.u    $a0, str_face_dynlist_801B6B94
	la.u    $a1, str_face_dynlist_801B6BC8
	lw      $a3, 0x000C($t5)
	la.l    $a1, str_face_dynlist_801B6BC8
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B6B94
193$:
	b       195$
	nop
195$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0038

dAddToRelPos:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(face_dynlist_801A83E4)
	lw      $t6, %lo(face_dynlist_801A83E4)($t6)
	nop
	sw      $t6, 0x0024($sp)
	lui     $t7, %hi(face_dynlist_801A83E4)
	lw      $t7, %lo(face_dynlist_801A83E4)($t7)
	nop
	bnez    $t7, 16$
	nop
	la.u    $a0, str_face_dynlist_801B6BD8
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B6BD8
16$:
	lui     $t8, %hi(face_dynlist_801A83E4)
	lw      $t8, %lo(face_dynlist_801A83E4)($t8)
	li      $at, 0x0004
	lw      $s0, 0x000C($t8)
	nop
	beq     $s0, $at, 54$
	nop
	li      $at, 0x0008
	beq     $s0, $at, 77$
	nop
	li      $at, 0x0100
	beq     $s0, $at, 31$
	nop
	b       100$
	nop
31$:
	lw      $t9, 0x0024($sp)
	lw      $t0, 0x0028($sp)
	lwc1    $f4, 0x0020($t9)
	lwc1    $f6, 0x0000($t0)
	nop
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x0020($t9)
	lw      $t1, 0x0024($sp)
	lw      $t2, 0x0028($sp)
	lwc1    $f10, 0x0024($t1)
	lwc1    $f16, 0x0004($t2)
	nop
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x0024($t1)
	lw      $t3, 0x0024($sp)
	lw      $t4, 0x0028($sp)
	lwc1    $f4, 0x0028($t3)
	lwc1    $f6, 0x0008($t4)
	nop
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x0028($t3)
	b       110$
	nop
54$:
	lw      $t5, 0x0024($sp)
	lw      $t6, 0x0028($sp)
	lwc1    $f10, 0x003C($t5)
	lwc1    $f16, 0x0000($t6)
	nop
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x003C($t5)
	lw      $t7, 0x0024($sp)
	lw      $t8, 0x0028($sp)
	lwc1    $f4, 0x0040($t7)
	lwc1    $f6, 0x0004($t8)
	nop
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x0040($t7)
	lw      $t0, 0x0024($sp)
	lw      $t9, 0x0028($sp)
	lwc1    $f10, 0x0044($t0)
	lwc1    $f16, 0x0008($t9)
	nop
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x0044($t0)
	b       110$
	nop
77$:
	lw      $t2, 0x0024($sp)
	lw      $t1, 0x0028($sp)
	lwc1    $f4, 0x0020($t2)
	lwc1    $f6, 0x0000($t1)
	nop
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x0020($t2)
	lw      $t4, 0x0024($sp)
	lw      $t3, 0x0028($sp)
	lwc1    $f10, 0x0024($t4)
	lwc1    $f16, 0x0004($t3)
	nop
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x0024($t4)
	lw      $t6, 0x0024($sp)
	lw      $t5, 0x0028($sp)
	lwc1    $f4, 0x0028($t6)
	lwc1    $f6, 0x0008($t5)
	nop
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x0028($t6)
	b       110$
	nop
100$:
	lui     $t8, %hi(face_dynlist_801A83E4)
	lw      $t8, %lo(face_dynlist_801A83E4)($t8)
	lui     $a2, %hi(_face_dynlist_bss-0x5E0+0x610)
	lw      $a2, %lo(_face_dynlist_bss-0x5E0+0x610)($a2)
	la.u    $a0, str_face_dynlist_801B6BFC
	la.u    $a1, str_face_dynlist_801B6C30
	lw      $a3, 0x000C($t8)
	la.l    $a1, str_face_dynlist_801B6C30
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B6BFC
110$:
	b       112$
	nop
112$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0028

.globl dGetRelPos
dGetRelPos:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(face_dynlist_801A83E4)
	lw      $t6, %lo(face_dynlist_801A83E4)($t6)
	nop
	bnez    $t6, 12$
	nop
	la.u    $a0, str_face_dynlist_801B6C40
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B6C40
12$:
	lui     $t7, %hi(face_dynlist_801A83E4)
	lw      $t7, %lo(face_dynlist_801A83E4)($t7)
	li      $at, 0x0004
	lw      $s0, 0x000C($t7)
	nop
	beq     $s0, $at, 50$
	nop
	li      $at, 0x0008
	beq     $s0, $at, 90$
	nop
	li      $at, 0x0100
	beq     $s0, $at, 30$
	nop
	li      $at, 0x0200
	beq     $s0, $at, 70$
	nop
	b       110$
	nop
30$:
	lui     $t8, %hi(face_dynlist_801A83E4)
	lw      $t8, %lo(face_dynlist_801A83E4)($t8)
	lw      $t9, 0x0028($sp)
	lwc1    $f4, 0x0020($t8)
	nop
	swc1    $f4, 0x0000($t9)
	lui     $t0, %hi(face_dynlist_801A83E4)
	lw      $t0, %lo(face_dynlist_801A83E4)($t0)
	lw      $t1, 0x0028($sp)
	lwc1    $f6, 0x0024($t0)
	nop
	swc1    $f6, 0x0004($t1)
	lui     $t2, %hi(face_dynlist_801A83E4)
	lw      $t2, %lo(face_dynlist_801A83E4)($t2)
	lw      $t3, 0x0028($sp)
	lwc1    $f8, 0x0028($t2)
	nop
	swc1    $f8, 0x0008($t3)
	b       120$
	nop
50$:
	lui     $t4, %hi(face_dynlist_801A83E4)
	lw      $t4, %lo(face_dynlist_801A83E4)($t4)
	lw      $t5, 0x0028($sp)
	lwc1    $f10, 0x003C($t4)
	nop
	swc1    $f10, 0x0000($t5)
	lui     $t6, %hi(face_dynlist_801A83E4)
	lw      $t6, %lo(face_dynlist_801A83E4)($t6)
	lw      $t7, 0x0028($sp)
	lwc1    $f16, 0x0040($t6)
	nop
	swc1    $f16, 0x0004($t7)
	lui     $t8, %hi(face_dynlist_801A83E4)
	lw      $t8, %lo(face_dynlist_801A83E4)($t8)
	lw      $t9, 0x0028($sp)
	lwc1    $f18, 0x0044($t8)
	nop
	swc1    $f18, 0x0008($t9)
	b       120$
	nop
70$:
	lui     $t0, %hi(face_dynlist_801A83E4)
	lw      $t0, %lo(face_dynlist_801A83E4)($t0)
	lw      $t1, 0x0028($sp)
	lwc1    $f4, 0x0040($t0)
	nop
	swc1    $f4, 0x0000($t1)
	lui     $t2, %hi(face_dynlist_801A83E4)
	lw      $t2, %lo(face_dynlist_801A83E4)($t2)
	lw      $t3, 0x0028($sp)
	lwc1    $f6, 0x0044($t2)
	nop
	swc1    $f6, 0x0004($t3)
	lui     $t4, %hi(face_dynlist_801A83E4)
	lw      $t4, %lo(face_dynlist_801A83E4)($t4)
	lw      $t5, 0x0028($sp)
	lwc1    $f8, 0x0048($t4)
	nop
	swc1    $f8, 0x0008($t5)
	b       120$
	nop
90$:
	lui     $t6, %hi(face_dynlist_801A83E4)
	lw      $t6, %lo(face_dynlist_801A83E4)($t6)
	lw      $t7, 0x0028($sp)
	lwc1    $f10, 0x0020($t6)
	nop
	swc1    $f10, 0x0000($t7)
	lui     $t8, %hi(face_dynlist_801A83E4)
	lw      $t8, %lo(face_dynlist_801A83E4)($t8)
	lw      $t9, 0x0028($sp)
	lwc1    $f16, 0x0024($t8)
	nop
	swc1    $f16, 0x0004($t9)
	lui     $t0, %hi(face_dynlist_801A83E4)
	lw      $t0, %lo(face_dynlist_801A83E4)($t0)
	lw      $t1, 0x0028($sp)
	lwc1    $f18, 0x0028($t0)
	nop
	swc1    $f18, 0x0008($t1)
	b       120$
	nop
110$:
	lui     $t2, %hi(face_dynlist_801A83E4)
	lw      $t2, %lo(face_dynlist_801A83E4)($t2)
	lui     $a2, %hi(_face_dynlist_bss-0x5E0+0x610)
	lw      $a2, %lo(_face_dynlist_bss-0x5E0+0x610)($a2)
	la.u    $a0, str_face_dynlist_801B6C64
	la.u    $a1, str_face_dynlist_801B6C98
	lw      $a3, 0x000C($t2)
	la.l    $a1, str_face_dynlist_801B6C98
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B6C64
120$:
	b       122$
	nop
122$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0028

.globl dGetAttObjGroup
dGetAttObjGroup:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(face_dynlist_801A83E4)
	lw      $t6, %lo(face_dynlist_801A83E4)($t6)
	nop
	bnez    $t6, 11$
	nop
	la.u    $a0, str_face_dynlist_801B6CA8
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B6CA8
11$:
	lui     $t7, %hi(face_dynlist_801A83E4)
	lw      $t7, %lo(face_dynlist_801A83E4)($t7)
	li      $at, 0x0004
	lw      $s0, 0x000C($t7)
	nop
	beq     $s0, $at, 23$
	nop
	li      $at, 0x0020
	beq     $s0, $at, 31$
	nop
	b       39$
	nop
23$:
	lui     $t8, %hi(face_dynlist_801A83E4)
	lw      $t8, %lo(face_dynlist_801A83E4)($t8)
	nop
	lw      $v0, 0x01F8($t8)
	b       51$
	nop
	b       49$
	nop
31$:
	lui     $t9, %hi(face_dynlist_801A83E4)
	lw      $t9, %lo(face_dynlist_801A83E4)($t9)
	nop
	lw      $v0, 0x01D4($t9)
	b       51$
	nop
	b       49$
	nop
39$:
	lui     $t0, %hi(face_dynlist_801A83E4)
	lw      $t0, %lo(face_dynlist_801A83E4)($t0)
	lui     $a2, %hi(_face_dynlist_bss-0x5E0+0x610)
	lw      $a2, %lo(_face_dynlist_bss-0x5E0+0x610)($a2)
	la.u    $a0, str_face_dynlist_801B6CCC
	la.u    $a1, str_face_dynlist_801B6D00
	lw      $a3, 0x000C($t0)
	la.l    $a1, str_face_dynlist_801B6D00
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B6CCC
49$:
	b       51$
	nop
51$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0028

dGetAttToObj:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(face_dynlist_801A83E4)
	lw      $t6, %lo(face_dynlist_801A83E4)($t6)
	nop
	bnez    $t6, 11$
	nop
	la.u    $a0, str_face_dynlist_801B6D14
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B6D14
11$:
	lui     $t7, %hi(face_dynlist_801A83E4)
	lw      $t7, %lo(face_dynlist_801A83E4)($t7)
	li      $at, 0x0004
	lw      $s0, 0x000C($t7)
	nop
	beq     $s0, $at, 23$
	nop
	li      $at, 0x0020
	beq     $s0, $at, 31$
	nop
	b       39$
	nop
23$:
	lui     $t8, %hi(face_dynlist_801A83E4)
	lw      $t8, %lo(face_dynlist_801A83E4)($t8)
	nop
	lw      $v0, 0x020C($t8)
	b       51$
	nop
	b       49$
	nop
31$:
	lui     $t9, %hi(face_dynlist_801A83E4)
	lw      $t9, %lo(face_dynlist_801A83E4)($t9)
	nop
	lw      $v0, 0x01E8($t9)
	b       51$
	nop
	b       49$
	nop
39$:
	lui     $t0, %hi(face_dynlist_801A83E4)
	lw      $t0, %lo(face_dynlist_801A83E4)($t0)
	lui     $a2, %hi(_face_dynlist_bss-0x5E0+0x610)
	lw      $a2, %lo(_face_dynlist_bss-0x5E0+0x610)($a2)
	la.u    $a0, str_face_dynlist_801B6D38
	la.u    $a1, str_face_dynlist_801B6D6C
	lw      $a3, 0x000C($t0)
	la.l    $a1, str_face_dynlist_801B6D6C
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B6D38
49$:
	b       51$
	nop
51$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0028

.globl dGetScale
dGetScale:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(face_dynlist_801A83E4)
	lw      $t6, %lo(face_dynlist_801A83E4)($t6)
	nop
	bnez    $t6, 12$
	nop
	la.u    $a0, str_face_dynlist_801B6D7C
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B6D7C
12$:
	lui     $t7, %hi(face_dynlist_801A83E4)
	lw      $t7, %lo(face_dynlist_801A83E4)($t7)
	nop
	sw      $t7, 0x0024($sp)
	lui     $t8, %hi(face_dynlist_801A83E4)
	lw      $t8, %lo(face_dynlist_801A83E4)($t8)
	li      $at, 0x0004
	lw      $s0, 0x000C($t8)
	nop
	beq     $s0, $at, 31$
	nop
	li      $at, 0x0020
	beq     $s0, $at, 48$
	nop
	li      $at, 0x00080000
	beq     $s0, $at, 65$
	nop
	b       82$
	nop
31$:
	lw      $t9, 0x0024($sp)
	lw      $t0, 0x0028($sp)
	lwc1    $f4, 0x009C($t9)
	nop
	swc1    $f4, 0x0000($t0)
	lw      $t1, 0x0024($sp)
	lw      $t2, 0x0028($sp)
	lwc1    $f6, 0x00A0($t1)
	nop
	swc1    $f6, 0x0004($t2)
	lw      $t3, 0x0024($sp)
	lw      $t4, 0x0028($sp)
	lwc1    $f8, 0x00A4($t3)
	nop
	swc1    $f8, 0x0008($t4)
	b       92$
	nop
48$:
	lw      $t5, 0x0024($sp)
	lw      $t6, 0x0028($sp)
	lwc1    $f10, 0x01AC($t5)
	nop
	swc1    $f10, 0x0000($t6)
	lw      $t7, 0x0024($sp)
	lw      $t8, 0x0028($sp)
	lwc1    $f16, 0x01B0($t7)
	nop
	swc1    $f16, 0x0004($t8)
	lw      $t9, 0x0024($sp)
	lw      $t0, 0x0028($sp)
	lwc1    $f18, 0x01B4($t9)
	nop
	swc1    $f18, 0x0008($t0)
	b       92$
	nop
65$:
	li      $at, 0x3F800000
	mtc1    $at, $f4
	lw      $t1, 0x0028($sp)
	nop
	swc1    $f4, 0x0000($t1)
	li      $at, 0x3F800000
	mtc1    $at, $f6
	lw      $t2, 0x0028($sp)
	nop
	swc1    $f6, 0x0004($t2)
	li      $at, 0x3F800000
	mtc1    $at, $f8
	lw      $t3, 0x0028($sp)
	nop
	swc1    $f8, 0x0008($t3)
	b       92$
	nop
82$:
	lui     $t4, %hi(face_dynlist_801A83E4)
	lw      $t4, %lo(face_dynlist_801A83E4)($t4)
	lui     $a2, %hi(_face_dynlist_bss-0x5E0+0x610)
	lw      $a2, %lo(_face_dynlist_bss-0x5E0+0x610)($a2)
	la.u    $a0, str_face_dynlist_801B6DA0
	la.u    $a1, str_face_dynlist_801B6DD4
	lw      $a3, 0x000C($t4)
	la.l    $a1, str_face_dynlist_801B6DD4
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B6DA0
92$:
	b       94$
	nop
94$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0028

dSetAttOffset:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(face_dynlist_801A83E4)
	lw      $t6, %lo(face_dynlist_801A83E4)($t6)
	nop
	bnez    $t6, 12$
	nop
	la.u    $a0, str_face_dynlist_801B6DE0
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B6DE0
12$:
	lui     $t7, %hi(face_dynlist_801A83E4)
	lw      $t7, %lo(face_dynlist_801A83E4)($t7)
	nop
	sw      $t7, 0x0024($sp)
	lui     $t8, %hi(face_dynlist_801A83E4)
	lw      $t8, %lo(face_dynlist_801A83E4)($t8)
	li      $at, 0x0004
	lw      $s0, 0x000C($t8)
	nop
	beq     $s0, $at, 31$
	nop
	li      $at, 0x0008
	beq     $s0, $at, 95$
	nop
	li      $at, 0x0020
	beq     $s0, $at, 63$
	nop
	b       97$
	nop
31$:
	lw      $t9, 0x0028($sp)
	lw      $t0, 0x0024($sp)
	lwc1    $f4, 0x0000($t9)
	nop
	swc1    $f4, 0x0200($t0)
	lw      $t1, 0x0028($sp)
	lw      $t2, 0x0024($sp)
	lwc1    $f6, 0x0004($t1)
	nop
	swc1    $f6, 0x0204($t2)
	lw      $t3, 0x0028($sp)
	lw      $t4, 0x0024($sp)
	lwc1    $f8, 0x0008($t3)
	nop
	swc1    $f8, 0x0208($t4)
	lw      $t5, 0x0028($sp)
	lw      $t6, 0x0024($sp)
	lwc1    $f10, 0x0000($t5)
	nop
	swc1    $f10, 0x0054($t6)
	lw      $t7, 0x0028($sp)
	lw      $t8, 0x0024($sp)
	lwc1    $f16, 0x0004($t7)
	nop
	swc1    $f16, 0x0058($t8)
	lw      $t9, 0x0028($sp)
	lw      $t0, 0x0024($sp)
	lwc1    $f18, 0x0008($t9)
	nop
	swc1    $f18, 0x005C($t0)
	b       107$
	nop
63$:
	lw      $t1, 0x0028($sp)
	lw      $t2, 0x0024($sp)
	lwc1    $f4, 0x0000($t1)
	nop
	swc1    $f4, 0x01D8($t2)
	lw      $t3, 0x0028($sp)
	lw      $t4, 0x0024($sp)
	lwc1    $f6, 0x0004($t3)
	nop
	swc1    $f6, 0x01DC($t4)
	lw      $t5, 0x0028($sp)
	lw      $t6, 0x0024($sp)
	lwc1    $f8, 0x0008($t5)
	nop
	swc1    $f8, 0x01E0($t6)
	lw      $t7, 0x0028($sp)
	lw      $t8, 0x0024($sp)
	lwc1    $f10, 0x0000($t7)
	nop
	swc1    $f10, 0x0020($t8)
	lw      $t9, 0x0028($sp)
	lw      $t0, 0x0024($sp)
	lwc1    $f16, 0x0004($t9)
	nop
	swc1    $f16, 0x0024($t0)
	lw      $t1, 0x0028($sp)
	lw      $t2, 0x0024($sp)
	lwc1    $f18, 0x0008($t1)
	nop
	swc1    $f18, 0x0028($t2)
	b       107$
	nop
95$:
	b       107$
	nop
97$:
	lui     $t3, %hi(face_dynlist_801A83E4)
	lw      $t3, %lo(face_dynlist_801A83E4)($t3)
	lui     $a2, %hi(_face_dynlist_bss-0x5E0+0x610)
	lw      $a2, %lo(_face_dynlist_bss-0x5E0+0x610)($a2)
	la.u    $a0, str_face_dynlist_801B6E04
	la.u    $a1, str_face_dynlist_801B6E38
	lw      $a3, 0x000C($t3)
	la.l    $a1, str_face_dynlist_801B6E38
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B6E04
107$:
	b       109$
	nop
109$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0028

dSetAttToOffset:
	addiu   $sp, $sp, -0x0040
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0040($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(face_dynlist_801A83E4)
	lw      $t6, %lo(face_dynlist_801A83E4)($t6)
	nop
	bnez    $t6, 12$
	nop
	la.u    $a0, str_face_dynlist_801B6E48
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B6E48
12$:
	lui     $t7, %hi(face_dynlist_801A83E4)
	lw      $t7, %lo(face_dynlist_801A83E4)($t7)
	nop
	sw      $t7, 0x003C($sp)
	jal     face_dynlist_80183A50
	nop
	lui     $t8, %hi(face_dynlist_801A83E4)
	lw      $t8, %lo(face_dynlist_801A83E4)($t8)
	li      $at, 0x0004
	lw      $s0, 0x000C($t8)
	nop
	beq     $s0, $at, 33$
	nop
	li      $at, 0x0008
	beq     $s0, $at, 47$
	nop
	li      $at, 0x0020
	beq     $s0, $at, 40$
	nop
	b       54$
	nop
33$:
	lw      $t9, 0x003C($sp)
	nop
	lw      $a0, 0x020C($t9)
	jal     face_dynlist_80186C84
	nop
	b       64$
	nop
40$:
	lw      $t0, 0x003C($sp)
	nop
	lw      $a0, 0x01E8($t0)
	jal     face_dynlist_80186C84
	nop
	b       64$
	nop
47$:
	lw      $t1, 0x003C($sp)
	nop
	lw      $a0, 0x00BC($t1)
	jal     face_dynlist_80186C84
	nop
	b       64$
	nop
54$:
	lui     $t2, %hi(face_dynlist_801A83E4)
	lw      $t2, %lo(face_dynlist_801A83E4)($t2)
	lui     $a2, %hi(_face_dynlist_bss-0x5E0+0x610)
	lw      $a2, %lo(_face_dynlist_bss-0x5E0+0x610)($a2)
	la.u    $a0, str_face_dynlist_801B6E6C
	la.u    $a1, str_face_dynlist_801B6EA0
	lw      $a3, 0x000C($t2)
	la.l    $a1, str_face_dynlist_801B6EA0
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B6E6C
64$:
	lui     $t3, %hi(face_dynlist_801A83E4)
	lw      $t3, %lo(face_dynlist_801A83E4)($t3)
	nop
	bnez    $t3, 74$
	nop
	lui     $a1, %hi(_face_dynlist_bss-0x5E0+0x618)
	lw      $a1, %lo(_face_dynlist_bss-0x5E0+0x618)($a1)
	la.u    $a0, str_face_dynlist_801B6EB4
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B6EB4
74$:
	lw      $a0, 0x0040($sp)
	jal     dSetAttToOffset
	nop
	jal     face_dynlist_80183A80
	nop
	b       81$
	nop
81$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0040

dGetAttOffset:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(face_dynlist_801A83E4)
	lw      $t6, %lo(face_dynlist_801A83E4)($t6)
	nop
	bnez    $t6, 12$
	nop
	la.u    $a0, str_face_dynlist_801B6EEC
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B6EEC
12$:
	lui     $t7, %hi(face_dynlist_801A83E4)
	lw      $t7, %lo(face_dynlist_801A83E4)($t7)
	li      $at, 0x0004
	lw      $s0, 0x000C($t7)
	nop
	beq     $s0, $at, 27$
	nop
	li      $at, 0x0008
	beq     $s0, $at, 67$
	nop
	li      $at, 0x0020
	beq     $s0, $at, 47$
	nop
	b       69$
	nop
27$:
	lui     $t8, %hi(face_dynlist_801A83E4)
	lw      $t8, %lo(face_dynlist_801A83E4)($t8)
	lw      $t9, 0x0028($sp)
	lwc1    $f4, 0x0200($t8)
	nop
	swc1    $f4, 0x0000($t9)
	lui     $t0, %hi(face_dynlist_801A83E4)
	lw      $t0, %lo(face_dynlist_801A83E4)($t0)
	lw      $t1, 0x0028($sp)
	lwc1    $f6, 0x0204($t0)
	nop
	swc1    $f6, 0x0004($t1)
	lui     $t2, %hi(face_dynlist_801A83E4)
	lw      $t2, %lo(face_dynlist_801A83E4)($t2)
	lw      $t3, 0x0028($sp)
	lwc1    $f8, 0x0208($t2)
	nop
	swc1    $f8, 0x0008($t3)
	b       79$
	nop
47$:
	lui     $t4, %hi(face_dynlist_801A83E4)
	lw      $t4, %lo(face_dynlist_801A83E4)($t4)
	lw      $t5, 0x0028($sp)
	lwc1    $f10, 0x01D8($t4)
	nop
	swc1    $f10, 0x0000($t5)
	lui     $t6, %hi(face_dynlist_801A83E4)
	lw      $t6, %lo(face_dynlist_801A83E4)($t6)
	lw      $t7, 0x0028($sp)
	lwc1    $f16, 0x01DC($t6)
	nop
	swc1    $f16, 0x0004($t7)
	lui     $t8, %hi(face_dynlist_801A83E4)
	lw      $t8, %lo(face_dynlist_801A83E4)($t8)
	lw      $t9, 0x0028($sp)
	lwc1    $f18, 0x01E0($t8)
	nop
	swc1    $f18, 0x0008($t9)
	b       79$
	nop
67$:
	b       79$
	nop
69$:
	lui     $t0, %hi(face_dynlist_801A83E4)
	lw      $t0, %lo(face_dynlist_801A83E4)($t0)
	lui     $a2, %hi(_face_dynlist_bss-0x5E0+0x610)
	lw      $a2, %lo(_face_dynlist_bss-0x5E0+0x610)($a2)
	la.u    $a0, str_face_dynlist_801B6F10
	la.u    $a1, str_face_dynlist_801B6F44
	lw      $a3, 0x000C($t0)
	la.l    $a1, str_face_dynlist_801B6F44
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B6F10
79$:
	b       81$
	nop
81$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0028

dGetAttFlags:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(face_dynlist_801A83E4)
	lw      $t6, %lo(face_dynlist_801A83E4)($t6)
	nop
	bnez    $t6, 11$
	nop
	la.u    $a0, str_face_dynlist_801B6F54
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B6F54
11$:
	lui     $t7, %hi(face_dynlist_801A83E4)
	lw      $t7, %lo(face_dynlist_801A83E4)($t7)
	li      $at, 0x0004
	lw      $s0, 0x000C($t7)
	nop
	beq     $s0, $at, 26$
	nop
	li      $at, 0x0008
	beq     $s0, $at, 42$
	nop
	li      $at, 0x0020
	beq     $s0, $at, 34$
	nop
	b       50$
	nop
26$:
	lui     $t8, %hi(face_dynlist_801A83E4)
	lw      $t8, %lo(face_dynlist_801A83E4)($t8)
	nop
	lw      $t9, 0x01FC($t8)
	nop
	sw      $t9, 0x0024($sp)
	b       60$
	nop
34$:
	lui     $t0, %hi(face_dynlist_801A83E4)
	lw      $t0, %lo(face_dynlist_801A83E4)($t0)
	nop
	lw      $t1, 0x01E4($t0)
	nop
	sw      $t1, 0x0024($sp)
	b       60$
	nop
42$:
	lui     $t2, %hi(face_dynlist_801A83E4)
	lw      $t2, %lo(face_dynlist_801A83E4)($t2)
	nop
	lw      $t3, 0x00B8($t2)
	nop
	sw      $t3, 0x0024($sp)
	b       60$
	nop
50$:
	lui     $t4, %hi(face_dynlist_801A83E4)
	lw      $t4, %lo(face_dynlist_801A83E4)($t4)
	lui     $a2, %hi(_face_dynlist_bss-0x5E0+0x610)
	lw      $a2, %lo(_face_dynlist_bss-0x5E0+0x610)($a2)
	la.u    $a0, str_face_dynlist_801B6F78
	la.u    $a1, str_face_dynlist_801B6FAC
	lw      $a3, 0x000C($t4)
	la.l    $a1, str_face_dynlist_801B6FAC
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B6F78
60$:
	lw      $v0, 0x0024($sp)
	b       65$
	nop
	b       65$
	nop
65$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0028

.globl dSetWorldPos
dSetWorldPos:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a2, 0x0030($sp)
	swc1    $f12, 0x0028($sp)
	swc1    $f14, 0x002C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(face_dynlist_801A83E4)
	lw      $t6, %lo(face_dynlist_801A83E4)($t6)
	nop
	bnez    $t6, 14$
	nop
	la.u    $a0, str_face_dynlist_801B6FBC
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B6FBC
14$:
	lui     $t7, %hi(face_dynlist_801A83E4)
	lw      $t7, %lo(face_dynlist_801A83E4)($t7)
	li      $at, 0x0004
	lw      $s0, 0x000C($t7)
	nop
	beq     $s0, $at, 55$
	nop
	li      $at, 0x0020
	beq     $s0, $at, 72$
	nop
	li      $at, 0x0100
	beq     $s0, $at, 123$
	nop
	li      $at, 0x0200
	beq     $s0, $at, 38$
	nop
	li      $at, 0x2000
	beq     $s0, $at, 89$
	nop
	li      $at, 0x4000
	beq     $s0, $at, 106$
	nop
	b       140$
	nop
38$:
	lui     $t8, %hi(face_dynlist_801A83E4)
	lw      $t8, %lo(face_dynlist_801A83E4)($t8)
	lwc1    $f4, 0x0028($sp)
	nop
	swc1    $f4, 0x0014($t8)
	lui     $t9, %hi(face_dynlist_801A83E4)
	lw      $t9, %lo(face_dynlist_801A83E4)($t9)
	lwc1    $f6, 0x002C($sp)
	nop
	swc1    $f6, 0x0018($t9)
	lui     $t0, %hi(face_dynlist_801A83E4)
	lw      $t0, %lo(face_dynlist_801A83E4)($t0)
	lwc1    $f8, 0x0030($sp)
	nop
	swc1    $f8, 0x001C($t0)
	b       150$
	nop
55$:
	lui     $t1, %hi(face_dynlist_801A83E4)
	lw      $t1, %lo(face_dynlist_801A83E4)($t1)
	lwc1    $f10, 0x0028($sp)
	nop
	swc1    $f10, 0x0014($t1)
	lui     $t2, %hi(face_dynlist_801A83E4)
	lw      $t2, %lo(face_dynlist_801A83E4)($t2)
	lwc1    $f16, 0x002C($sp)
	nop
	swc1    $f16, 0x0018($t2)
	lui     $t3, %hi(face_dynlist_801A83E4)
	lw      $t3, %lo(face_dynlist_801A83E4)($t3)
	lwc1    $f18, 0x0030($sp)
	nop
	swc1    $f18, 0x001C($t3)
	b       150$
	nop
72$:
	lui     $t4, %hi(face_dynlist_801A83E4)
	lw      $t4, %lo(face_dynlist_801A83E4)($t4)
	lwc1    $f4, 0x0028($sp)
	nop
	swc1    $f4, 0x0014($t4)
	lui     $t5, %hi(face_dynlist_801A83E4)
	lw      $t5, %lo(face_dynlist_801A83E4)($t5)
	lwc1    $f6, 0x002C($sp)
	nop
	swc1    $f6, 0x0018($t5)
	lui     $t6, %hi(face_dynlist_801A83E4)
	lw      $t6, %lo(face_dynlist_801A83E4)($t6)
	lwc1    $f8, 0x0030($sp)
	nop
	swc1    $f8, 0x001C($t6)
	b       150$
	nop
89$:
	lui     $t7, %hi(face_dynlist_801A83E4)
	lw      $t7, %lo(face_dynlist_801A83E4)($t7)
	lwc1    $f10, 0x0028($sp)
	nop
	swc1    $f10, 0x0014($t7)
	lui     $t8, %hi(face_dynlist_801A83E4)
	lw      $t8, %lo(face_dynlist_801A83E4)($t8)
	lwc1    $f16, 0x002C($sp)
	nop
	swc1    $f16, 0x0018($t8)
	lui     $t9, %hi(face_dynlist_801A83E4)
	lw      $t9, %lo(face_dynlist_801A83E4)($t9)
	lwc1    $f18, 0x0030($sp)
	nop
	swc1    $f18, 0x001C($t9)
	b       150$
	nop
106$:
	lui     $t0, %hi(face_dynlist_801A83E4)
	lw      $t0, %lo(face_dynlist_801A83E4)($t0)
	lwc1    $f4, 0x0028($sp)
	nop
	swc1    $f4, 0x003C($t0)
	lui     $t1, %hi(face_dynlist_801A83E4)
	lw      $t1, %lo(face_dynlist_801A83E4)($t1)
	lwc1    $f6, 0x002C($sp)
	nop
	swc1    $f6, 0x0040($t1)
	lui     $t2, %hi(face_dynlist_801A83E4)
	lw      $t2, %lo(face_dynlist_801A83E4)($t2)
	lwc1    $f8, 0x0030($sp)
	nop
	swc1    $f8, 0x0044($t2)
	b       150$
	nop
123$:
	lui     $t3, %hi(face_dynlist_801A83E4)
	lw      $t3, %lo(face_dynlist_801A83E4)($t3)
	lwc1    $f10, 0x0028($sp)
	nop
	swc1    $f10, 0x0020($t3)
	lui     $t4, %hi(face_dynlist_801A83E4)
	lw      $t4, %lo(face_dynlist_801A83E4)($t4)
	lwc1    $f16, 0x002C($sp)
	nop
	swc1    $f16, 0x0024($t4)
	lui     $t5, %hi(face_dynlist_801A83E4)
	lw      $t5, %lo(face_dynlist_801A83E4)($t5)
	lwc1    $f18, 0x0030($sp)
	nop
	swc1    $f18, 0x0028($t5)
	b       150$
	nop
140$:
	lui     $t6, %hi(face_dynlist_801A83E4)
	lw      $t6, %lo(face_dynlist_801A83E4)($t6)
	lui     $a2, %hi(_face_dynlist_bss-0x5E0+0x610)
	lw      $a2, %lo(_face_dynlist_bss-0x5E0+0x610)($a2)
	la.u    $a0, str_face_dynlist_801B6FE0
	la.u    $a1, str_face_dynlist_801B7014
	lw      $a3, 0x000C($t6)
	la.l    $a1, str_face_dynlist_801B7014
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B6FE0
150$:
	b       152$
	nop
152$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0028

dSetNormal:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a2, 0x0030($sp)
	swc1    $f12, 0x0028($sp)
	swc1    $f14, 0x002C($sp)
	lui     $t6, %hi(face_dynlist_801A83E4)
	lw      $t6, %lo(face_dynlist_801A83E4)($t6)
	nop
	bnez    $t6, 13$
	nop
	la.u    $a0, str_face_dynlist_801B7024
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B7024
13$:
	lwc1    $f4, 0x0028($sp)
	nop
	swc1    $f4, 0x001C($sp)
	lwc1    $f6, 0x002C($sp)
	nop
	swc1    $f6, 0x0020($sp)
	lwc1    $f8, 0x0030($sp)
	nop
	swc1    $f8, 0x0024($sp)
	jal     face_math_80194D34
	addiu   $a0, $sp, 0x001C
	lui     $t7, %hi(face_dynlist_801A83E4)
	lw      $t7, %lo(face_dynlist_801A83E4)($t7)
	li      $at, 0x0100
	lw      $t8, 0x000C($t7)
	nop
	bne     $t8, $at, 50$
	nop
	b       33$
	nop
33$:
	lui     $t9, %hi(face_dynlist_801A83E4)
	lw      $t9, %lo(face_dynlist_801A83E4)($t9)
	lwc1    $f10, 0x001C($sp)
	nop
	swc1    $f10, 0x002C($t9)
	lui     $t0, %hi(face_dynlist_801A83E4)
	lw      $t0, %lo(face_dynlist_801A83E4)($t0)
	lwc1    $f16, 0x0020($sp)
	nop
	swc1    $f16, 0x0030($t0)
	lui     $t1, %hi(face_dynlist_801A83E4)
	lw      $t1, %lo(face_dynlist_801A83E4)($t1)
	lwc1    $f18, 0x0024($sp)
	nop
	swc1    $f18, 0x0034($t1)
	b       60$
	nop
50$:
	lui     $t2, %hi(face_dynlist_801A83E4)
	lw      $t2, %lo(face_dynlist_801A83E4)($t2)
	lui     $a2, %hi(_face_dynlist_bss-0x5E0+0x610)
	lw      $a2, %lo(_face_dynlist_bss-0x5E0+0x610)($a2)
	la.u    $a0, str_face_dynlist_801B7048
	la.u    $a1, str_face_dynlist_801B707C
	lw      $a3, 0x000C($t2)
	la.l    $a1, str_face_dynlist_801B707C
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B7048
60$:
	b       62$
	nop
62$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

dGetWorldPosPtr:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(face_dynlist_801A83E4)
	lw      $t6, %lo(face_dynlist_801A83E4)($t6)
	nop
	bnez    $t6, 11$
	nop
	la.u    $a0, str_face_dynlist_801B708C
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B708C
11$:
	lui     $t7, %hi(face_dynlist_801A83E4)
	lw      $t7, %lo(face_dynlist_801A83E4)($t7)
	li      $at, 0x0008
	lw      $s0, 0x000C($t7)
	nop
	beq     $s0, $at, 29$
	nop
	li      $at, 0x0100
	beq     $s0, $at, 23$
	nop
	b       35$
	nop
23$:
	lui     $v0, %hi(face_dynlist_801A83E4)
	lw      $v0, %lo(face_dynlist_801A83E4)($v0)
	b       47$
	addiu   $v0, $v0, 0x0020
	b       45$
	nop
29$:
	lui     $v0, %hi(face_dynlist_801A83E4)
	lw      $v0, %lo(face_dynlist_801A83E4)($v0)
	b       47$
	addiu   $v0, $v0, 0x0020
	b       45$
	nop
35$:
	lui     $t8, %hi(face_dynlist_801A83E4)
	lw      $t8, %lo(face_dynlist_801A83E4)($t8)
	lui     $a2, %hi(_face_dynlist_bss-0x5E0+0x610)
	lw      $a2, %lo(_face_dynlist_bss-0x5E0+0x610)($a2)
	la.u    $a0, str_face_dynlist_801B70B0
	la.u    $a1, str_face_dynlist_801B70E4
	lw      $a3, 0x000C($t8)
	la.l    $a1, str_face_dynlist_801B70E4
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B70B0
45$:
	b       47$
	nop
47$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0028

.globl dGetWorldPos
dGetWorldPos:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x0024($sp)
	sw      $a0, 0x0030($sp)
	sw      $s0, 0x0020($sp)
	swc1    $f21, 0x0018($sp)
	swc1    $f20, 0x001C($sp)
	lui     $t6, %hi(face_dynlist_801A83E4)
	lw      $t6, %lo(face_dynlist_801A83E4)($t6)
	nop
	bnez    $t6, 14$
	nop
	la.u    $a0, str_face_dynlist_801B70F8
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B70F8
14$:
	lui     $t7, %hi(face_dynlist_801A83E4)
	lw      $t7, %lo(face_dynlist_801A83E4)($t7)
	nop
	lw      $s0, 0x000C($t7)
	nop
	slti    $at, $s0, 0x0201
	bnez    $at, 36$
	nop
	li      $at, 0x2000
	beq     $s0, $at, 214$
	nop
	li      $at, 0x8000
	beq     $s0, $at, 200$
	nop
	li      $at, 0x00080000
	beq     $s0, $at, 376$
	nop
	li      $at, 0x00100000
	beq     $s0, $at, 305$
	nop
	b       L801891AC
	nop
36$:
	slti    $at, $s0, 0x0041
	bnez    $at, 47$
	nop
	li      $at, 0x0100
	beq     $s0, $at, 66$
	nop
	li      $at, 0x0200
	beq     $s0, $at, 146$
	nop
	b       L801891AC
	nop
47$:
	slti    $at, $s0, 0x0021
	bnez    $at, 55$
	nop
	li      $at, 0x0040
	beq     $s0, $at, 234$
	nop
	b       L801891AC
	nop
55$:
	addiu   $t8, $s0, -0x0002
	sltiu   $at, $t8, 0x001F
	beqz    $at, L801891AC
	nop
	sll     $t8, $t8, 2
	lui     $at, %hi(face_dynlist_801B8034)
	addu    $at, $at, $t8
	lw      $t8, %lo(face_dynlist_801B8034)($at)
	nop
	jr      $t8
	nop
66$:
	lui     $t9, %hi(face_dynlist_801A83E4)
	lw      $t9, %lo(face_dynlist_801A83E4)($t9)
	lw      $t0, 0x0030($sp)
	lwc1    $f4, 0x0020($t9)
	nop
	swc1    $f4, 0x0000($t0)
	lui     $t1, %hi(face_dynlist_801A83E4)
	lw      $t1, %lo(face_dynlist_801A83E4)($t1)
	lw      $t2, 0x0030($sp)
	lwc1    $f6, 0x0024($t1)
	nop
	swc1    $f6, 0x0004($t2)
	lui     $t3, %hi(face_dynlist_801A83E4)
	lw      $t3, %lo(face_dynlist_801A83E4)($t3)
	lw      $t4, 0x0030($sp)
	lwc1    $f8, 0x0028($t3)
	nop
	swc1    $f8, 0x0008($t4)
	b       406$
	nop
.globl L80188CD4
L80188CD4:
	lui     $t5, %hi(face_dynlist_801A83E4)
	lw      $t5, %lo(face_dynlist_801A83E4)($t5)
	lw      $t6, 0x0030($sp)
	lwc1    $f10, 0x0014($t5)
	nop
	swc1    $f10, 0x0000($t6)
	lui     $t7, %hi(face_dynlist_801A83E4)
	lw      $t7, %lo(face_dynlist_801A83E4)($t7)
	lw      $t8, 0x0030($sp)
	lwc1    $f16, 0x0018($t7)
	nop
	swc1    $f16, 0x0004($t8)
	lui     $t9, %hi(face_dynlist_801A83E4)
	lw      $t9, %lo(face_dynlist_801A83E4)($t9)
	lw      $t0, 0x0030($sp)
	lwc1    $f18, 0x001C($t9)
	nop
	swc1    $f18, 0x0008($t0)
	b       406$
	nop
.globl L80188D24
L80188D24:
	lui     $t1, %hi(face_dynlist_801A83E4)
	lw      $t1, %lo(face_dynlist_801A83E4)($t1)
	lw      $t2, 0x0030($sp)
	lwc1    $f4, 0x0014($t1)
	nop
	swc1    $f4, 0x0000($t2)
	lui     $t3, %hi(face_dynlist_801A83E4)
	lw      $t3, %lo(face_dynlist_801A83E4)($t3)
	lw      $t4, 0x0030($sp)
	lwc1    $f6, 0x0018($t3)
	nop
	swc1    $f6, 0x0004($t4)
	lui     $t5, %hi(face_dynlist_801A83E4)
	lw      $t5, %lo(face_dynlist_801A83E4)($t5)
	lw      $t6, 0x0030($sp)
	lwc1    $f8, 0x001C($t5)
	nop
	swc1    $f8, 0x0008($t6)
	b       406$
	nop
.globl L80188D74
L80188D74:
	lui     $t7, %hi(face_dynlist_801A83E4)
	lw      $t7, %lo(face_dynlist_801A83E4)($t7)
	lw      $t8, 0x0030($sp)
	lwc1    $f10, 0x0020($t7)
	nop
	swc1    $f10, 0x0000($t8)
	lui     $t9, %hi(face_dynlist_801A83E4)
	lw      $t9, %lo(face_dynlist_801A83E4)($t9)
	lw      $t0, 0x0030($sp)
	lwc1    $f16, 0x0024($t9)
	nop
	swc1    $f16, 0x0004($t0)
	lui     $t1, %hi(face_dynlist_801A83E4)
	lw      $t1, %lo(face_dynlist_801A83E4)($t1)
	lw      $t2, 0x0030($sp)
	lwc1    $f18, 0x0028($t1)
	nop
	swc1    $f18, 0x0008($t2)
	b       406$
	nop
146$:
	lui     $t3, %hi(face_dynlist_801A83E4)
	lw      $t3, %lo(face_dynlist_801A83E4)($t3)
	lw      $t4, 0x0030($sp)
	lwc1    $f4, 0x0014($t3)
	nop
	swc1    $f4, 0x0000($t4)
	lui     $t5, %hi(face_dynlist_801A83E4)
	lw      $t5, %lo(face_dynlist_801A83E4)($t5)
	lw      $t6, 0x0030($sp)
	lwc1    $f6, 0x0018($t5)
	nop
	swc1    $f6, 0x0004($t6)
	lui     $t7, %hi(face_dynlist_801A83E4)
	lw      $t7, %lo(face_dynlist_801A83E4)($t7)
	lw      $t8, 0x0030($sp)
	lwc1    $f8, 0x001C($t7)
	nop
	swc1    $f8, 0x0008($t8)
	b       406$
	nop
.globl L80188E14
L80188E14:
	lui     $t9, %hi(face_dynlist_801A83E4)
	lw      $t9, %lo(face_dynlist_801A83E4)($t9)
	lw      $t0, 0x0030($sp)
	lwc1    $f10, 0x0014($t9)
	nop
	swc1    $f10, 0x0000($t0)
	lui     $t1, %hi(face_dynlist_801A83E4)
	lw      $t1, %lo(face_dynlist_801A83E4)($t1)
	lw      $t2, 0x0030($sp)
	lwc1    $f16, 0x0018($t1)
	nop
	swc1    $f16, 0x0004($t2)
	lui     $t3, %hi(face_dynlist_801A83E4)
	lw      $t3, %lo(face_dynlist_801A83E4)($t3)
	lw      $t4, 0x0030($sp)
	lwc1    $f18, 0x001C($t3)
	nop
	swc1    $f18, 0x0008($t4)
	b       406$
	nop
.globl L80188E64
L80188E64:
	mtc1    $0, $f4
	lw      $t5, 0x0030($sp)
	nop
	swc1    $f4, 0x0008($t5)
	lw      $t6, 0x0030($sp)
	nop
	lwc1    $f20, 0x0008($t6)
	nop
	swc1    $f20, 0x0004($t6)
	lw      $t7, 0x0030($sp)
	nop
	swc1    $f20, 0x0000($t7)
	b       406$
	nop
200$:
	mtc1    $0, $f6
	lw      $t8, 0x0030($sp)
	nop
	swc1    $f6, 0x0008($t8)
	lw      $t9, 0x0030($sp)
	nop
	lwc1    $f20, 0x0008($t9)
	nop
	swc1    $f20, 0x0004($t9)
	lw      $t0, 0x0030($sp)
	nop
	swc1    $f20, 0x0000($t0)
	b       406$
	nop
214$:
	lui     $t1, %hi(face_dynlist_801A83E4)
	lw      $t1, %lo(face_dynlist_801A83E4)($t1)
	lw      $t2, 0x0030($sp)
	lwc1    $f8, 0x0014($t1)
	nop
	swc1    $f8, 0x0000($t2)
	lui     $t3, %hi(face_dynlist_801A83E4)
	lw      $t3, %lo(face_dynlist_801A83E4)($t3)
	lw      $t4, 0x0030($sp)
	lwc1    $f10, 0x0018($t3)
	nop
	swc1    $f10, 0x0004($t4)
	lui     $t5, %hi(face_dynlist_801A83E4)
	lw      $t5, %lo(face_dynlist_801A83E4)($t5)
	lw      $t6, 0x0030($sp)
	lwc1    $f16, 0x001C($t5)
	nop
	swc1    $f16, 0x0008($t6)
	b       406$
	nop
234$:
	lui     $t7, %hi(face_dynlist_801A83E4)
	lw      $t7, %lo(face_dynlist_801A83E4)($t7)
	lw      $t8, 0x0030($sp)
	lwc1    $f18, 0x0028($t7)
	nop
	swc1    $f18, 0x0000($t8)
	lui     $t9, %hi(face_dynlist_801A83E4)
	lw      $t9, %lo(face_dynlist_801A83E4)($t9)
	lw      $t0, 0x0030($sp)
	lwc1    $f4, 0x002C($t9)
	nop
	swc1    $f4, 0x0004($t0)
	lui     $t1, %hi(face_dynlist_801A83E4)
	lw      $t1, %lo(face_dynlist_801A83E4)($t1)
	lw      $t2, 0x0030($sp)
	lwc1    $f6, 0x0030($t1)
	nop
	swc1    $f6, 0x0008($t2)
	lui     $t4, %hi(face_dynlist_801A83E4)
	lw      $t4, %lo(face_dynlist_801A83E4)($t4)
	lw      $t3, 0x0030($sp)
	lwc1    $f10, 0x0034($t4)
	lwc1    $f8, 0x0000($t3)
	nop
	add.s   $f16, $f8, $f10
	swc1    $f16, 0x0000($t3)
	lui     $t6, %hi(face_dynlist_801A83E4)
	lw      $t6, %lo(face_dynlist_801A83E4)($t6)
	lw      $t5, 0x0030($sp)
	lwc1    $f4, 0x0038($t6)
	lwc1    $f18, 0x0004($t5)
	nop
	add.s   $f6, $f18, $f4
	swc1    $f6, 0x0004($t5)
	lui     $t8, %hi(face_dynlist_801A83E4)
	lw      $t8, %lo(face_dynlist_801A83E4)($t8)
	lw      $t7, 0x0030($sp)
	lwc1    $f10, 0x003C($t8)
	lwc1    $f8, 0x0008($t7)
	nop
	add.s   $f16, $f8, $f10
	swc1    $f16, 0x0008($t7)
	lw      $t9, 0x0030($sp)
	li      $at, 0x3FE00000
	lwc1    $f18, 0x0000($t9)
	mtc1    $at, $f7
	mtc1    $0, $f6
	cvt.d.s $f4, $f18
	mul.d   $f8, $f4, $f6
	cvt.s.d $f10, $f8
	swc1    $f10, 0x0000($t9)
	lw      $t0, 0x0030($sp)
	li      $at, 0x3FE00000
	lwc1    $f16, 0x0004($t0)
	mtc1    $at, $f5
	mtc1    $0, $f4
	cvt.d.s $f18, $f16
	mul.d   $f6, $f18, $f4
	cvt.s.d $f8, $f6
	swc1    $f8, 0x0004($t0)
	lw      $t1, 0x0030($sp)
	li      $at, 0x3FE00000
	lwc1    $f10, 0x0008($t1)
	mtc1    $at, $f19
	mtc1    $0, $f18
	cvt.d.s $f16, $f10
	mul.d   $f4, $f16, $f18
	cvt.s.d $f6, $f4
	swc1    $f6, 0x0008($t1)
	b       406$
	nop
305$:
	lui     $t2, %hi(face_dynlist_801A83E4)
	lw      $t2, %lo(face_dynlist_801A83E4)($t2)
	lw      $t4, 0x0030($sp)
	lwc1    $f8, 0x0014($t2)
	nop
	swc1    $f8, 0x0000($t4)
	lui     $t3, %hi(face_dynlist_801A83E4)
	lw      $t3, %lo(face_dynlist_801A83E4)($t3)
	lw      $t6, 0x0030($sp)
	lwc1    $f10, 0x0018($t3)
	nop
	swc1    $f10, 0x0004($t6)
	lui     $t5, %hi(face_dynlist_801A83E4)
	lw      $t5, %lo(face_dynlist_801A83E4)($t5)
	lw      $t8, 0x0030($sp)
	lwc1    $f16, 0x001C($t5)
	nop
	swc1    $f16, 0x0008($t8)
	lui     $t9, %hi(face_dynlist_801A83E4)
	lw      $t9, %lo(face_dynlist_801A83E4)($t9)
	lw      $t7, 0x0030($sp)
	lwc1    $f4, 0x0020($t9)
	lwc1    $f18, 0x0000($t7)
	nop
	add.s   $f6, $f18, $f4
	swc1    $f6, 0x0000($t7)
	lui     $t1, %hi(face_dynlist_801A83E4)
	lw      $t1, %lo(face_dynlist_801A83E4)($t1)
	lw      $t0, 0x0030($sp)
	lwc1    $f10, 0x0024($t1)
	lwc1    $f8, 0x0004($t0)
	nop
	add.s   $f16, $f8, $f10
	swc1    $f16, 0x0004($t0)
	lui     $t4, %hi(face_dynlist_801A83E4)
	lw      $t4, %lo(face_dynlist_801A83E4)($t4)
	lw      $t2, 0x0030($sp)
	lwc1    $f4, 0x0028($t4)
	lwc1    $f18, 0x0008($t2)
	nop
	add.s   $f6, $f18, $f4
	swc1    $f6, 0x0008($t2)
	lw      $t3, 0x0030($sp)
	li      $at, 0x3FE00000
	lwc1    $f8, 0x0000($t3)
	mtc1    $at, $f17
	mtc1    $0, $f16
	cvt.d.s $f10, $f8
	mul.d   $f18, $f10, $f16
	cvt.s.d $f4, $f18
	swc1    $f4, 0x0000($t3)
	lw      $t6, 0x0030($sp)
	li      $at, 0x3FE00000
	lwc1    $f6, 0x0004($t6)
	mtc1    $at, $f11
	mtc1    $0, $f10
	cvt.d.s $f8, $f6
	mul.d   $f16, $f8, $f10
	cvt.s.d $f18, $f16
	swc1    $f18, 0x0004($t6)
	lw      $t5, 0x0030($sp)
	li      $at, 0x3FE00000
	lwc1    $f4, 0x0008($t5)
	mtc1    $at, $f9
	mtc1    $0, $f8
	cvt.d.s $f6, $f4
	mul.d   $f10, $f6, $f8
	cvt.s.d $f16, $f10
	swc1    $f16, 0x0008($t5)
	b       406$
	nop
376$:
	lui     $t8, %hi(face_dynlist_801A83E4)
	lw      $t8, %lo(face_dynlist_801A83E4)($t8)
	lw      $t9, 0x0030($sp)
	lwc1    $f18, 0x0074($t8)
	nop
	swc1    $f18, 0x0000($t9)
	lui     $t7, %hi(face_dynlist_801A83E4)
	lw      $t7, %lo(face_dynlist_801A83E4)($t7)
	lw      $t1, 0x0030($sp)
	lwc1    $f4, 0x0078($t7)
	nop
	swc1    $f4, 0x0004($t1)
	lui     $t0, %hi(face_dynlist_801A83E4)
	lw      $t0, %lo(face_dynlist_801A83E4)($t0)
	lw      $t4, 0x0030($sp)
	lwc1    $f6, 0x007C($t0)
	nop
	swc1    $f6, 0x0008($t4)
	b       406$
	nop
.globl L801891AC
L801891AC:
	lui     $t2, %hi(face_dynlist_801A83E4)
	lw      $t2, %lo(face_dynlist_801A83E4)($t2)
	lui     $a2, %hi(_face_dynlist_bss-0x5E0+0x610)
	lw      $a2, %lo(_face_dynlist_bss-0x5E0+0x610)($a2)
	la.u    $a0, str_face_dynlist_801B711C
	la.u    $a1, str_face_dynlist_801B7150
	lw      $a3, 0x000C($t2)
	la.l    $a1, str_face_dynlist_801B7150
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B711C
406$:
	b       408$
	nop
408$:
	lw      $ra, 0x0024($sp)
	lwc1    $f21, 0x0018($sp)
	lwc1    $f20, 0x001C($sp)
	lw      $s0, 0x0020($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0030

face_dynlist_801891F4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	li      $a0, 0x0005
	jal     dMakeObj
	move    $a1, $0
	lw      $t6, 0x0018($sp)
	nop
	lwc1    $f12, 0x0000($t6)
	lwc1    $f14, 0x0004($t6)
	lw      $a2, 0x0008($t6)
	jal     dSetInitPos
	nop
	b       15$
	nop
15$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl dSetScale
dSetScale:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a2, 0x0030($sp)
	swc1    $f12, 0x0028($sp)
	swc1    $f14, 0x002C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(face_dynlist_801A83E4)
	lw      $t6, %lo(face_dynlist_801A83E4)($t6)
	nop
	bnez    $t6, 14$
	nop
	la.u    $a0, str_face_dynlist_801B7160
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B7160
14$:
	lui     $t7, %hi(face_dynlist_801A83E4)
	lw      $t7, %lo(face_dynlist_801A83E4)($t7)
	nop
	sw      $t7, 0x0024($sp)
	jal     face_dynlist_80183A50
	nop
	lui     $t8, %hi(face_dynlist_801A83E4)
	lw      $t8, %lo(face_dynlist_801A83E4)($t8)
	li      $at, 0x0004
	lw      $s0, 0x000C($t8)
	nop
	beq     $s0, $at, 44$
	nop
	li      $at, 0x0008
	beq     $s0, $at, 86$
	nop
	li      $at, 0x0020
	beq     $s0, $at, 58$
	nop
	li      $at, 0x2000
	beq     $s0, $at, 88$
	nop
	li      $at, 0x4000
	beq     $s0, $at, 72$
	nop
	li      $at, 0x00080000
	beq     $s0, $at, 115$
	nop
	b       117$
	nop
44$:
	lwc1    $f4, 0x0028($sp)
	lw      $t9, 0x0024($sp)
	nop
	swc1    $f4, 0x009C($t9)
	lwc1    $f6, 0x002C($sp)
	lw      $t0, 0x0024($sp)
	nop
	swc1    $f6, 0x00A0($t0)
	lwc1    $f8, 0x0030($sp)
	lw      $t1, 0x0024($sp)
	nop
	swc1    $f8, 0x00A4($t1)
	b       127$
	nop
58$:
	lwc1    $f10, 0x0028($sp)
	lw      $t2, 0x0024($sp)
	nop
	swc1    $f10, 0x01AC($t2)
	lwc1    $f16, 0x002C($sp)
	lw      $t3, 0x0024($sp)
	nop
	swc1    $f16, 0x01B0($t3)
	lwc1    $f18, 0x0030($sp)
	lw      $t4, 0x0024($sp)
	nop
	swc1    $f18, 0x01B4($t4)
	b       127$
	nop
72$:
	lwc1    $f4, 0x0028($sp)
	lw      $t5, 0x0024($sp)
	nop
	swc1    $f4, 0x0054($t5)
	lwc1    $f6, 0x002C($sp)
	lw      $t6, 0x0024($sp)
	nop
	swc1    $f6, 0x0058($t6)
	lwc1    $f8, 0x0030($sp)
	lw      $t7, 0x0024($sp)
	nop
	swc1    $f8, 0x005C($t7)
	b       127$
	nop
86$:
	b       127$
	nop
88$:
	lw      $t8, 0x0024($sp)
	nop
	lw      $t9, 0x0050($t8)
	nop
	beqz    $t9, 101$
	nop
	lw      $t0, 0x0024($sp)
	lw      $a1, 0x0028($sp)
	lw      $a2, 0x002C($sp)
	lw      $a3, 0x0030($sp)
	lw      $a0, 0x0050($t0)
	jal     face_shape_8019848C
	nop
101$:
	lwc1    $f10, 0x0028($sp)
	lw      $t1, 0x0024($sp)
	nop
	swc1    $f10, 0x0040($t1)
	lwc1    $f16, 0x002C($sp)
	lw      $t2, 0x0024($sp)
	nop
	swc1    $f16, 0x0044($t2)
	lwc1    $f18, 0x0030($sp)
	lw      $t3, 0x0024($sp)
	nop
	swc1    $f18, 0x0048($t3)
	b       127$
	nop
115$:
	b       127$
	nop
117$:
	lui     $t4, %hi(face_dynlist_801A83E4)
	lw      $t4, %lo(face_dynlist_801A83E4)($t4)
	lui     $a2, %hi(_face_dynlist_bss-0x5E0+0x610)
	lw      $a2, %lo(_face_dynlist_bss-0x5E0+0x610)($a2)
	la.u    $a0, str_face_dynlist_801B7184
	la.u    $a1, str_face_dynlist_801B71B8
	lw      $a3, 0x000C($t4)
	la.l    $a1, str_face_dynlist_801B71B8
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B7184
127$:
	jal     face_dynlist_80183A80
	nop
	b       131$
	nop
131$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0028

dSetRotation:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $a2, 0x0038($sp)
	swc1    $f12, 0x0030($sp)
	swc1    $f14, 0x0034($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(face_dynlist_801A83E4)
	lw      $t6, %lo(face_dynlist_801A83E4)($t6)
	nop
	bnez    $t6, 14$
	nop
	la.u    $a0, str_face_dynlist_801B71C4
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B71C4
14$:
	lui     $t7, %hi(face_dynlist_801A83E4)
	lw      $t7, %lo(face_dynlist_801A83E4)($t7)
	nop
	sw      $t7, 0x002C($sp)
	lui     $t8, %hi(face_dynlist_801A83E4)
	lw      $t8, %lo(face_dynlist_801A83E4)($t8)
	li      $at, 0x0004
	lw      $s0, 0x000C($t8)
	nop
	beq     $s0, $at, 30$
	nop
	li      $at, 0x0020
	beq     $s0, $at, 44$
	nop
	b       58$
	nop
30$:
	lwc1    $f4, 0x0030($sp)
	lw      $t9, 0x002C($sp)
	nop
	swc1    $f4, 0x006C($t9)
	lwc1    $f6, 0x0034($sp)
	lw      $t0, 0x002C($sp)
	nop
	swc1    $f6, 0x0070($t0)
	lwc1    $f8, 0x0038($sp)
	lw      $t1, 0x002C($sp)
	nop
	swc1    $f8, 0x0074($t1)
	b       68$
	nop
44$:
	lwc1    $f10, 0x0030($sp)
	lw      $t2, 0x002C($sp)
	nop
	swc1    $f10, 0x0068($t2)
	lwc1    $f16, 0x0034($sp)
	lw      $t3, 0x002C($sp)
	nop
	swc1    $f16, 0x006C($t3)
	lwc1    $f18, 0x0038($sp)
	lw      $t4, 0x002C($sp)
	nop
	swc1    $f18, 0x0070($t4)
	b       68$
	nop
58$:
	lui     $t5, %hi(face_dynlist_801A83E4)
	lw      $t5, %lo(face_dynlist_801A83E4)($t5)
	lui     $a2, %hi(_face_dynlist_bss-0x5E0+0x610)
	lw      $a2, %lo(_face_dynlist_bss-0x5E0+0x610)($a2)
	la.u    $a0, str_face_dynlist_801B71E8
	la.u    $a1, str_face_dynlist_801B721C
	lw      $a3, 0x000C($t5)
	la.l    $a1, str_face_dynlist_801B721C
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B71E8
68$:
	b       70$
	nop
70$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0030

dCofG:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a2, 0x0020($sp)
	swc1    $f12, 0x0018($sp)
	swc1    $f14, 0x001C($sp)
	lui     $t6, %hi(face_dynlist_801A83E4)
	lw      $t6, %lo(face_dynlist_801A83E4)($t6)
	nop
	bnez    $t6, 13$
	nop
	la.u    $a0, str_face_dynlist_801B722C
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B722C
13$:
	lui     $t7, %hi(face_dynlist_801A83E4)
	lw      $t7, %lo(face_dynlist_801A83E4)($t7)
	li      $at, 0x0020
	lw      $t8, 0x000C($t7)
	nop
	bne     $t8, $at, 39$
	nop
	b       22$
	nop
22$:
	lui     $t9, %hi(face_dynlist_801A83E4)
	lw      $t9, %lo(face_dynlist_801A83E4)($t9)
	lwc1    $f4, 0x0018($sp)
	nop
	swc1    $f4, 0x00B0($t9)
	lui     $t0, %hi(face_dynlist_801A83E4)
	lw      $t0, %lo(face_dynlist_801A83E4)($t0)
	lwc1    $f6, 0x001C($sp)
	nop
	swc1    $f6, 0x00B4($t0)
	lui     $t1, %hi(face_dynlist_801A83E4)
	lw      $t1, %lo(face_dynlist_801A83E4)($t1)
	lwc1    $f8, 0x0020($sp)
	nop
	swc1    $f8, 0x00B8($t1)
	b       49$
	nop
39$:
	lui     $t2, %hi(face_dynlist_801A83E4)
	lw      $t2, %lo(face_dynlist_801A83E4)($t2)
	lui     $a2, %hi(_face_dynlist_bss-0x5E0+0x610)
	lw      $a2, %lo(_face_dynlist_bss-0x5E0+0x610)($a2)
	la.u    $a0, str_face_dynlist_801B7250
	la.u    $a1, str_face_dynlist_801B7284
	lw      $a3, 0x000C($t2)
	la.l    $a1, str_face_dynlist_801B7284
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B7250
49$:
	b       51$
	nop
51$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

dShapeOffset:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a2, 0x0020($sp)
	swc1    $f12, 0x0018($sp)
	swc1    $f14, 0x001C($sp)
	lui     $t6, %hi(face_dynlist_801A83E4)
	lw      $t6, %lo(face_dynlist_801A83E4)($t6)
	nop
	bnez    $t6, 13$
	nop
	la.u    $a0, str_face_dynlist_801B728C
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B728C
13$:
	lui     $t7, %hi(face_dynlist_801A83E4)
	lw      $t7, %lo(face_dynlist_801A83E4)($t7)
	li      $at, 0x0004
	lw      $t8, 0x000C($t7)
	nop
	bne     $t8, $at, 39$
	nop
	b       22$
	nop
22$:
	lui     $t9, %hi(face_dynlist_801A83E4)
	lw      $t9, %lo(face_dynlist_801A83E4)($t9)
	lwc1    $f4, 0x0018($sp)
	nop
	swc1    $f4, 0x00C0($t9)
	lui     $t0, %hi(face_dynlist_801A83E4)
	lw      $t0, %lo(face_dynlist_801A83E4)($t0)
	lwc1    $f6, 0x001C($sp)
	nop
	swc1    $f6, 0x00C4($t0)
	lui     $t1, %hi(face_dynlist_801A83E4)
	lw      $t1, %lo(face_dynlist_801A83E4)($t1)
	lwc1    $f8, 0x0020($sp)
	nop
	swc1    $f8, 0x00C8($t1)
	b       49$
	nop
39$:
	lui     $t2, %hi(face_dynlist_801A83E4)
	lw      $t2, %lo(face_dynlist_801A83E4)($t2)
	lui     $a2, %hi(_face_dynlist_bss-0x5E0+0x610)
	lw      $a2, %lo(_face_dynlist_bss-0x5E0+0x610)($a2)
	la.u    $a0, str_face_dynlist_801B72B0
	la.u    $a1, str_face_dynlist_801B72E4
	lw      $a3, 0x000C($t2)
	la.l    $a1, str_face_dynlist_801B72E4
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B72B0
49$:
	b       51$
	nop
51$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl dAddValPtr
dAddValPtr:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0030($sp)
	sw      $a1, 0x0034($sp)
	sw      $a2, 0x0038($sp)
	sw      $a3, 0x003C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(face_dynlist_801A83E4)
	lw      $t6, %lo(face_dynlist_801A83E4)($t6)
	nop
	bnez    $t6, 15$
	nop
	la.u    $a0, str_face_dynlist_801B72F4
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B72F4
15$:
	lui     $t7, %hi(face_dynlist_801A83E4)
	lw      $t7, %lo(face_dynlist_801A83E4)($t7)
	nop
	sw      $t7, 0x002C($sp)
	lw      $t8, 0x0034($sp)
	li      $at, 0x00040000
	bne     $t8, $at, 44$
	nop
	lw      $a0, 0x0030($sp)
	jal     face_dynlist_80184510
	nop
	sw      $v0, 0x0024($sp)
	lw      $t9, 0x0024($sp)
	nop
	bnez    $t9, 35$
	nop
	la.u    $a0, str_face_dynlist_801B7318
	lw      $a1, 0x0030($sp)
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B7318
35$:
	lw      $t0, 0x0024($sp)
	lw      $a1, 0x0034($sp)
	lw      $a2, 0x0038($sp)
	lw      $a3, 0x003C($sp)
	lw      $a0, 0x0008($t0)
	jal     face_object_8017CAC4
	nop
	b       51$
	sw      $v0, 0x0028($sp)
44$:
	lw      $a0, 0x0030($sp)
	lw      $a1, 0x0034($sp)
	lw      $a2, 0x0038($sp)
	lw      $a3, 0x003C($sp)
	jal     face_object_8017CAC4
	nop
	sw      $v0, 0x0028($sp)
51$:
	lui     $t1, %hi(face_dynlist_801A83E4)
	lw      $t1, %lo(face_dynlist_801A83E4)($t1)
	li      $at, 0x2000
	lw      $s0, 0x000C($t1)
	nop
	beq     $s0, $at, 63$
	nop
	li      $at, 0x8000
	beq     $s0, $at, 81$
	nop
	b       87$
	nop
63$:
	lw      $t2, 0x002C($sp)
	nop
	lw      $t3, 0x004C($t2)
	nop
	bnez    $t3, 74$
	nop
	jal     make_group
	move    $a0, $0
	lw      $t4, 0x002C($sp)
	nop
	sw      $v0, 0x004C($t4)
74$:
	lw      $t5, 0x002C($sp)
	lw      $a1, 0x0028($sp)
	lw      $a0, 0x004C($t5)
	jal     addto_group
	nop
	b       97$
	nop
81$:
	lw      $t6, 0x0028($sp)
	lw      $t7, 0x002C($sp)
	nop
	sw      $t6, 0x0028($t7)
	b       97$
	nop
87$:
	lui     $t8, %hi(face_dynlist_801A83E4)
	lw      $t8, %lo(face_dynlist_801A83E4)($t8)
	lui     $a2, %hi(_face_dynlist_bss-0x5E0+0x610)
	lw      $a2, %lo(_face_dynlist_bss-0x5E0+0x610)($a2)
	la.u    $a0, str_face_dynlist_801B733C
	la.u    $a1, str_face_dynlist_801B7370
	lw      $a3, 0x000C($t8)
	la.l    $a1, str_face_dynlist_801B7370
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B733C
97$:
	b       99$
	nop
99$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0030

.globl dAddValProc
dAddValProc:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lui     $t6, %hi(face_dynlist_801A83E4)
	lw      $t6, %lo(face_dynlist_801A83E4)($t6)
	nop
	bnez    $t6, 11$
	nop
	la.u    $a0, str_face_dynlist_801B7380
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B7380
11$:
	lui     $t7, %hi(face_dynlist_801A83E4)
	lw      $t7, %lo(face_dynlist_801A83E4)($t7)
	nop
	sw      $t7, 0x001C($sp)
	lui     $t8, %hi(face_dynlist_801A83E4)
	lw      $t8, %lo(face_dynlist_801A83E4)($t8)
	li      $at, 0x8000
	lw      $t9, 0x000C($t8)
	nop
	bne     $t9, $at, 30$
	nop
	b       24$
	nop
24$:
	lw      $t0, 0x0020($sp)
	lw      $t1, 0x001C($sp)
	nop
	sw      $t0, 0x002C($t1)
	b       40$
	nop
30$:
	lui     $t2, %hi(face_dynlist_801A83E4)
	lw      $t2, %lo(face_dynlist_801A83E4)($t2)
	lui     $a2, %hi(_face_dynlist_bss-0x5E0+0x610)
	lw      $a2, %lo(_face_dynlist_bss-0x5E0+0x610)($a2)
	la.u    $a0, str_face_dynlist_801B73A4
	la.u    $a1, str_face_dynlist_801B73D8
	lw      $a3, 0x000C($t2)
	la.l    $a1, str_face_dynlist_801B73D8
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B73A4
40$:
	b       42$
	nop
42$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

dLinkWithPtr:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x0024($sp)
	sw      $a0, 0x0038($sp)
	sw      $s0, 0x0020($sp)
	lui     $t6, %hi(face_dynlist_801A83E4)
	lw      $t6, %lo(face_dynlist_801A83E4)($t6)
	nop
	bnez    $t6, 12$
	nop
	la.u    $a0, str_face_dynlist_801B73E8
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B73E8
12$:
	lui     $t7, %hi(face_dynlist_801A83E4)
	lw      $t7, %lo(face_dynlist_801A83E4)($t7)
	nop
	sw      $t7, 0x0034($sp)
	la.u    $a0, str_face_dynlist_801B740C
	jal     imin
	la.l    $a0, str_face_dynlist_801B740C
	lui     $t8, %hi(face_dynlist_801A83E4)
	lw      $t8, %lo(face_dynlist_801A83E4)($t8)
	li      $at, 0x0001
	lw      $s0, 0x000C($t8)
	nop
	beq     $s0, $at, 52$
	nop
	li      $at, 0x0002
	beq     $s0, $at, 62$
	nop
	li      $at, 0x0080
	beq     $s0, $at, 126$
	nop
	li      $at, 0x0200
	beq     $s0, $at, 46$
	nop
	li      $at, 0x4000
	beq     $s0, $at, 68$
	nop
	li      $at, 0x8000
	beq     $s0, $at, 179$
	nop
	li      $at, 0x00010000
	beq     $s0, $at, 161$
	nop
	b       192$
	nop
46$:
	lw      $t9, 0x0038($sp)
	lw      $t0, 0x0034($sp)
	nop
	sw      $t9, 0x0030($t0)
	b       202$
	nop
52$:
	lw      $a1, 0x0038($sp)
	jal     face_object_8017C940
	move    $a0, $0
	sw      $v0, 0x002C($sp)
	lw      $t1, 0x002C($sp)
	lw      $t2, 0x0034($sp)
	nop
	sw      $t1, 0x001C($t2)
	b       202$
	nop
62$:
	lw      $a0, 0x0034($sp)
	lw      $a1, 0x0038($sp)
	jal     add_joint2bone
	nop
	b       202$
	nop
68$:
	lw      $t3, 0x0038($sp)
	lw      $t4, 0x0034($sp)
	nop
	sw      $t3, 0x0028($t4)
	cfc1    $t6, $31
	lw      $t5, 0x0034($sp)
	ori     $at, $t6, 0x0003
	xori    $at, $at, 0x0002
	ctc1    $at, $31
	lwc1    $f4, 0x003C($t5)
	lwc1    $f8, 0x0040($t5)
	cvt.w.s $f6, $f4
	lwc1    $f16, 0x0054($t5)
	ctc1    $t6, $31
	lw      $a0, 0x006C($t5)
	mfc1    $a2, $f6
	cfc1    $t7, $31
	move    $a1, $t5
	ori     $at, $t7, 0x0003
	xori    $at, $at, 0x0002
	ctc1    $at, $31
	nop
	cvt.w.s $f10, $f8
	ctc1    $t7, $31
	mfc1    $a3, $f10
	nop
	cfc1    $t8, $31
	nop
	ori     $at, $t8, 0x0003
	xori    $at, $at, 0x0002
	ctc1    $at, $31
	nop
	cvt.w.s $f18, $f16
	ctc1    $t8, $31
	mfc1    $t9, $f18
	nop
	cfc1    $t0, $31
	sw      $t9, 0x0010($sp)
	ori     $at, $t0, 0x0003
	xori    $at, $at, 0x0002
	ctc1    $at, $31
	lwc1    $f4, 0x0058($t5)
	nop
	cvt.w.s $f6, $f4
	mfc1    $t1, $f6
	ctc1    $t0, $31
	jal     face_gfx_801A3F9C
	sw      $t1, 0x0014($sp)
	lw      $t2, 0x0034($sp)
	nop
	sw      $v0, 0x001C($t2)
	lw      $t3, 0x0034($sp)
	nop
	lw      $a0, 0x0028($t3)
	jal     face_object_80181634
	nop
	b       202$
	nop
126$:
	lw      $t4, 0x0034($sp)
	nop
	lw      $t6, 0x0030($t4)
	nop
	slti    $at, $t6, 0x0004
	bnez    $at, 136$
	nop
	la.u    $a0, str_face_dynlist_801B741C
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B741C
136$:
	lw      $t8, 0x0034($sp)
	lw      $t7, 0x0038($sp)
	lw      $t9, 0x0030($t8)
	nop
	sll     $t5, $t9, 2
	addu    $t0, $t8, $t5
	sw      $t7, 0x0034($t0)
	lw      $t1, 0x0034($sp)
	nop
	lw      $t2, 0x0030($t1)
	nop
	addiu   $t3, $t2, 0x0001
	sw      $t3, 0x0030($t1)
	lw      $t4, 0x0034($sp)
	nop
	lw      $t6, 0x0030($t4)
	nop
	slti    $at, $t6, 0x0003
	bnez    $at, 159$
	nop
	lw      $a0, 0x0034($sp)
	jal     calc_facenormal
	nop
159$:
	b       202$
	nop
161$:
	lw      $t9, 0x0034($sp)
	nop
	lw      $t8, 0x0014($t9)
	nop
	bnez    $t8, 172$
	nop
	jal     make_group
	move    $a0, $0
	lw      $t5, 0x0034($sp)
	nop
	sw      $v0, 0x0014($t5)
172$:
	lw      $t7, 0x0034($sp)
	lw      $a1, 0x0038($sp)
	lw      $a0, 0x0014($t7)
	jal     addto_group
	nop
	b       202$
	nop
179$:
	lw      $a0, 0x0038($sp)
	li.u    $a1, 0x00FFFFFF
	li.l    $a1, 0x00FFFFFF
	move    $a2, $0
	jal     face_object_8017CAC4
	move    $a3, $0
	sw      $v0, 0x0030($sp)
	lw      $t0, 0x0030($sp)
	lw      $t2, 0x0034($sp)
	nop
	sw      $t0, 0x0028($t2)
	b       202$
	nop
192$:
	lui     $t3, %hi(face_dynlist_801A83E4)
	lw      $t3, %lo(face_dynlist_801A83E4)($t3)
	lui     $a2, %hi(_face_dynlist_bss-0x5E0+0x610)
	lw      $a2, %lo(_face_dynlist_bss-0x5E0+0x610)($a2)
	la.u    $a0, str_face_dynlist_801B742C
	la.u    $a1, str_face_dynlist_801B7460
	lw      $a3, 0x000C($t3)
	la.l    $a1, str_face_dynlist_801B7460
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B742C
202$:
	jal     imout
	nop
	b       206$
	nop
206$:
	lw      $ra, 0x0024($sp)
	lw      $s0, 0x0020($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0038

dLinkWith:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lui     $t6, %hi(_face_dynlist_bss-0x5E0+0x610)
	lw      $t6, %lo(_face_dynlist_bss-0x5E0+0x610)($t6)
	nop
	sw      $t6, 0x0018($sp)
	lui     $t7, %hi(face_dynlist_801A83E4)
	lw      $t7, %lo(face_dynlist_801A83E4)($t7)
	nop
	bnez    $t7, 15$
	nop
	la.u    $a0, str_face_dynlist_801B7470
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B7470
15$:
	lw      $t8, 0x0020($sp)
	nop
	bnez    $t8, 21$
	nop
	b       48$
	nop
21$:
	lw      $a0, 0x0020($sp)
	jal     face_dynlist_80184510
	nop
	sw      $v0, 0x001C($sp)
	lw      $t9, 0x001C($sp)
	nop
	bnez    $t9, 33$
	nop
	la.u    $a0, str_face_dynlist_801B7494
	lw      $a1, 0x0020($sp)
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B7494
33$:
	lw      $t0, 0x001C($sp)
	nop
	lw      $a0, 0x0008($t0)
	jal     dLinkWithPtr
	nop
	lw      $t1, 0x0018($sp)
	nop
	lw      $a0, 0x0008($t1)
	jal     face_dynlist_80186C84
	nop
	lw      $t2, 0x0018($sp)
	lui     $at, %hi(_face_dynlist_bss-0x5E0+0x610)
	sw      $t2, %lo(_face_dynlist_bss-0x5E0+0x610)($at)
	b       48$
	nop
48$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl dSetFlags
dSetFlags:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(face_dynlist_801A83E4)
	lw      $t6, %lo(face_dynlist_801A83E4)($t6)
	nop
	bnez    $t6, 12$
	nop
	la.u    $a0, str_face_dynlist_801B74B8
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B74B8
12$:
	lui     $t7, %hi(face_dynlist_801A83E4)
	lw      $t7, %lo(face_dynlist_801A83E4)($t7)
	nop
	sw      $t7, 0x0024($sp)
	lui     $t8, %hi(face_dynlist_801A83E4)
	lw      $t8, %lo(face_dynlist_801A83E4)($t8)
	nop
	lw      $s0, 0x000C($t8)
	nop
	slti    $at, $s0, 0x0201
	bnez    $at, 32$
	nop
	li      $at, 0x4000
	beq     $s0, $at, 83$
	nop
	li      $at, 0x00080000
	beq     $s0, $at, 107$
	nop
	b       L80189F74
	nop
32$:
	slti    $at, $s0, 0x0021
	bnez    $at, 40$
	nop
	li      $at, 0x0200
	beq     $s0, $at, 75$
	nop
	b       L80189F74
	nop
40$:
	addiu   $t9, $s0, -0x0002
	sltiu   $at, $t9, 0x001F
	beqz    $at, L80189F74
	nop
	sll     $t9, $t9, 2
	lui     $at, %hi(face_dynlist_801B80B0)
	addu    $at, $at, $t9
	lw      $t9, %lo(face_dynlist_801B80B0)($at)
	nop
	jr      $t9
	nop
.globl L80189E74
L80189E74:
	lw      $t0, 0x0024($sp)
	lw      $t2, 0x0028($sp)
	lw      $t1, 0x01BC($t0)
	nop
	or      $t3, $t1, $t2
	sw      $t3, 0x01BC($t0)
	b       125$
	nop
.globl L80189E94
L80189E94:
	lw      $t4, 0x0024($sp)
	lw      $t6, 0x0028($sp)
	lw      $t5, 0x0104($t4)
	nop
	or      $t7, $t5, $t6
	sw      $t7, 0x0104($t4)
	b       125$
	nop
.globl L80189EB4
L80189EB4:
	lw      $t8, 0x0024($sp)
	lw      $t1, 0x0028($sp)
	lw      $t9, 0x0034($t8)
	nop
	or      $t2, $t9, $t1
	sw      $t2, 0x0034($t8)
	b       125$
	nop
75$:
	lw      $t3, 0x0024($sp)
	lw      $t5, 0x0028($sp)
	lw      $t0, 0x002C($t3)
	nop
	or      $t6, $t0, $t5
	sw      $t6, 0x002C($t3)
	b       125$
	nop
83$:
	lw      $t7, 0x0024($sp)
	lw      $t9, 0x0028($sp)
	lw      $t4, 0x0034($t7)
	nop
	or      $t1, $t4, $t9
	sw      $t1, 0x0034($t7)
	b       125$
	nop
.globl L80189F14
L80189F14:
	lw      $t2, 0x0024($sp)
	lw      $t0, 0x0028($sp)
	lw      $t8, 0x0044($t2)
	nop
	or      $t5, $t8, $t0
	sw      $t5, 0x0044($t2)
	b       125$
	nop
.globl L80189F34
L80189F34:
	lw      $t6, 0x0024($sp)
	lw      $t4, 0x0028($sp)
	lw      $t3, 0x0054($t6)
	nop
	or      $t9, $t3, $t4
	sw      $t9, 0x0054($t6)
	b       125$
	nop
107$:
	lw      $t1, 0x0024($sp)
	lw      $t8, 0x0028($sp)
	lw      $t7, 0x002C($t1)
	nop
	or      $t0, $t7, $t8
	sw      $t0, 0x002C($t1)
	b       125$
	nop
.globl L80189F74
L80189F74:
	lui     $t5, %hi(face_dynlist_801A83E4)
	lw      $t5, %lo(face_dynlist_801A83E4)($t5)
	lui     $a2, %hi(_face_dynlist_bss-0x5E0+0x610)
	lw      $a2, %lo(_face_dynlist_bss-0x5E0+0x610)($a2)
	la.u    $a0, str_face_dynlist_801B74DC
	la.u    $a1, str_face_dynlist_801B7510
	lw      $a3, 0x000C($t5)
	la.l    $a1, str_face_dynlist_801B7510
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B74DC
125$:
	b       127$
	nop
127$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0028

dClrFlags:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(face_dynlist_801A83E4)
	lw      $t6, %lo(face_dynlist_801A83E4)($t6)
	nop
	bnez    $t6, 12$
	nop
	la.u    $a0, str_face_dynlist_801B751C
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B751C
12$:
	lui     $t7, %hi(face_dynlist_801A83E4)
	lw      $t7, %lo(face_dynlist_801A83E4)($t7)
	li      $at, 0x0002
	lw      $s0, 0x000C($t7)
	nop
	beq     $s0, $at, 42$
	nop
	li      $at, 0x0004
	beq     $s0, $at, 33$
	nop
	li      $at, 0x0008
	beq     $s0, $at, 69$
	nop
	li      $at, 0x0020
	beq     $s0, $at, 51$
	nop
	li      $at, 0x0200
	beq     $s0, $at, 60$
	nop
	b       78$
	nop
33$:
	lui     $t8, %hi(face_dynlist_801A83E4)
	lw      $t8, %lo(face_dynlist_801A83E4)($t8)
	lw      $t0, 0x0028($sp)
	lw      $t9, 0x01BC($t8)
	nor     $t1, $t0, $0
	and     $t2, $t9, $t1
	sw      $t2, 0x01BC($t8)
	b       88$
	nop
42$:
	lui     $t3, %hi(face_dynlist_801A83E4)
	lw      $t3, %lo(face_dynlist_801A83E4)($t3)
	lw      $t5, 0x0028($sp)
	lw      $t4, 0x0104($t3)
	nor     $t6, $t5, $0
	and     $t7, $t4, $t6
	sw      $t7, 0x0104($t3)
	b       88$
	nop
51$:
	lui     $t0, %hi(face_dynlist_801A83E4)
	lw      $t0, %lo(face_dynlist_801A83E4)($t0)
	lw      $t1, 0x0028($sp)
	lw      $t9, 0x0034($t0)
	nor     $t2, $t1, $0
	and     $t8, $t9, $t2
	sw      $t8, 0x0034($t0)
	b       88$
	nop
60$:
	lui     $t5, %hi(face_dynlist_801A83E4)
	lw      $t5, %lo(face_dynlist_801A83E4)($t5)
	lw      $t6, 0x0028($sp)
	lw      $t4, 0x002C($t5)
	nor     $t7, $t6, $0
	and     $t3, $t4, $t7
	sw      $t3, 0x002C($t5)
	b       88$
	nop
69$:
	lui     $t1, %hi(face_dynlist_801A83E4)
	lw      $t1, %lo(face_dynlist_801A83E4)($t1)
	lw      $t2, 0x0028($sp)
	lw      $t9, 0x0054($t1)
	nor     $t8, $t2, $0
	and     $t0, $t9, $t8
	sw      $t0, 0x0054($t1)
	b       88$
	nop
78$:
	lui     $t6, %hi(face_dynlist_801A83E4)
	lw      $t6, %lo(face_dynlist_801A83E4)($t6)
	lui     $a2, %hi(_face_dynlist_bss-0x5E0+0x610)
	lw      $a2, %lo(_face_dynlist_bss-0x5E0+0x610)($a2)
	la.u    $a0, str_face_dynlist_801B7540
	la.u    $a1, str_face_dynlist_801B7574
	lw      $a3, 0x000C($t6)
	la.l    $a1, str_face_dynlist_801B7574
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B7540
88$:
	b       90$
	nop
90$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0028

.globl dSetParmf
dSetParmf:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(face_dynlist_801A83E4)
	lw      $t6, %lo(face_dynlist_801A83E4)($t6)
	nop
	bnez    $t6, 13$
	nop
	la.u    $a0, str_face_dynlist_801B7580
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B7580
13$:
	lui     $t7, %hi(face_dynlist_801A83E4)
	lw      $t7, %lo(face_dynlist_801A83E4)($t7)
	li      $at, 0x0010
	lw      $s0, 0x000C($t7)
	nop
	beq     $s0, $at, 28$
	nop
	li      $at, 0x0100
	beq     $s0, $at, 98$
	nop
	li      $at, 0x2000
	beq     $s0, $at, 53$
	nop
	b       123$
	nop
28$:
	lw      $t8, 0x0028($sp)
	li      $at, 0x0001
	bne     $t8, $at, 41$
	nop
	b       34$
	nop
34$:
	lui     $t9, %hi(face_dynlist_801A83E4)
	lw      $t9, %lo(face_dynlist_801A83E4)($t9)
	lwc1    $f4, 0x002C($sp)
	nop
	swc1    $f4, 0x0058($t9)
	b       51$
	nop
41$:
	lui     $t0, %hi(face_dynlist_801A83E4)
	lw      $t0, %lo(face_dynlist_801A83E4)($t0)
	lui     $a2, %hi(_face_dynlist_bss-0x5E0+0x610)
	lw      $a2, %lo(_face_dynlist_bss-0x5E0+0x610)($a2)
	la.u    $a0, str_face_dynlist_801B75A4
	la.u    $a1, str_face_dynlist_801B75D8
	lw      $a3, 0x000C($t0)
	la.l    $a1, str_face_dynlist_801B75D8
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B75A4
51$:
	b       133$
	nop
53$:
	lw      $s0, 0x0028($sp)
	li      $at, 0x0002
	beq     $s0, $at, 65$
	nop
	li      $at, 0x0003
	beq     $s0, $at, 72$
	nop
	li      $at, 0x0006
	beq     $s0, $at, 79$
	nop
	b       86$
	nop
65$:
	lui     $t1, %hi(face_dynlist_801A83E4)
	lw      $t1, %lo(face_dynlist_801A83E4)($t1)
	lwc1    $f6, 0x002C($sp)
	nop
	swc1    $f6, 0x0038($t1)
	b       96$
	nop
72$:
	lui     $t2, %hi(face_dynlist_801A83E4)
	lw      $t2, %lo(face_dynlist_801A83E4)($t2)
	lwc1    $f8, 0x002C($sp)
	nop
	swc1    $f8, 0x003C($t2)
	b       96$
	nop
79$:
	lui     $t3, %hi(face_dynlist_801A83E4)
	lw      $t3, %lo(face_dynlist_801A83E4)($t3)
	lwc1    $f10, 0x002C($sp)
	nop
	swc1    $f10, 0x0030($t3)
	b       96$
	nop
86$:
	lui     $t4, %hi(face_dynlist_801A83E4)
	lw      $t4, %lo(face_dynlist_801A83E4)($t4)
	lui     $a2, %hi(_face_dynlist_bss-0x5E0+0x610)
	lw      $a2, %lo(_face_dynlist_bss-0x5E0+0x610)($a2)
	la.u    $a0, str_face_dynlist_801B75F8
	la.u    $a1, str_face_dynlist_801B762C
	lw      $a3, 0x000C($t4)
	la.l    $a1, str_face_dynlist_801B762C
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B75F8
96$:
	b       133$
	nop
98$:
	lw      $t5, 0x0028($sp)
	li      $at, 0x0001
	bne     $t5, $at, 111$
	nop
	b       104$
	nop
104$:
	lui     $t6, %hi(face_dynlist_801A83E4)
	lw      $t6, %lo(face_dynlist_801A83E4)($t6)
	lwc1    $f16, 0x002C($sp)
	nop
	swc1    $f16, 0x0040($t6)
	b       121$
	nop
111$:
	lui     $t7, %hi(face_dynlist_801A83E4)
	lw      $t7, %lo(face_dynlist_801A83E4)($t7)
	lui     $a2, %hi(_face_dynlist_bss-0x5E0+0x610)
	lw      $a2, %lo(_face_dynlist_bss-0x5E0+0x610)($a2)
	la.u    $a0, str_face_dynlist_801B764C
	la.u    $a1, str_face_dynlist_801B7680
	lw      $a3, 0x000C($t7)
	la.l    $a1, str_face_dynlist_801B7680
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B764C
121$:
	b       133$
	nop
123$:
	lui     $t8, %hi(face_dynlist_801A83E4)
	lw      $t8, %lo(face_dynlist_801A83E4)($t8)
	lui     $a2, %hi(_face_dynlist_bss-0x5E0+0x610)
	lw      $a2, %lo(_face_dynlist_bss-0x5E0+0x610)($a2)
	la.u    $a0, str_face_dynlist_801B76A0
	la.u    $a1, str_face_dynlist_801B76D4
	lw      $a3, 0x000C($t8)
	la.l    $a1, str_face_dynlist_801B76D4
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B76A0
133$:
	b       135$
	nop
135$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0028

.globl dSetParmp
dSetParmp:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(face_dynlist_801A83E4)
	lw      $t6, %lo(face_dynlist_801A83E4)($t6)
	nop
	bnez    $t6, 13$
	nop
	la.u    $a0, str_face_dynlist_801B76E0
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B76E0
13$:
	lui     $t7, %hi(face_dynlist_801A83E4)
	lw      $t7, %lo(face_dynlist_801A83E4)($t7)
	li      $at, 0x0080
	lw      $s0, 0x000C($t7)
	nop
	beq     $s0, $at, 64$
	nop
	li      $at, 0x4000
	beq     $s0, $at, 46$
	nop
	li      $at, 0x8000
	beq     $s0, $at, 28$
	nop
	b       102$
	nop
28$:
	lw      $t8, 0x0028($sp)
	li      $at, 0x0005
	bne     $t8, $at, 41$
	nop
	b       34$
	nop
34$:
	lui     $t0, %hi(face_dynlist_801A83E4)
	lw      $t0, %lo(face_dynlist_801A83E4)($t0)
	lw      $t9, 0x002C($sp)
	nop
	sw      $t9, 0x0020($t0)
	b       44$
	nop
41$:
	la.u    $a0, str_face_dynlist_801B7704
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B7704
44$:
	b       112$
	nop
46$:
	lw      $t1, 0x0028($sp)
	li      $at, 0x0005
	bne     $t1, $at, 59$
	nop
	b       52$
	nop
52$:
	lui     $t3, %hi(face_dynlist_801A83E4)
	lw      $t3, %lo(face_dynlist_801A83E4)($t3)
	lw      $t2, 0x002C($sp)
	nop
	sw      $t2, 0x006C($t3)
	b       62$
	nop
59$:
	la.u    $a0, str_face_dynlist_801B7710
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B7710
62$:
	b       112$
	nop
64$:
	lw      $t4, 0x0028($sp)
	li      $at, 0x0001
	bne     $t4, $at, 97$
	nop
	b       70$
	nop
70$:
	lui     $t5, %hi(face_dynlist_801A83E4)
	lw      $t5, %lo(face_dynlist_801A83E4)($t5)
	nop
	lw      $t6, 0x0030($t5)
	nop
	slti    $at, $t6, 0x0004
	bnez    $at, 81$
	nop
	la.u    $a0, str_face_dynlist_801B771C
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B771C
81$:
	lui     $t8, %hi(face_dynlist_801A83E4)
	lw      $t8, %lo(face_dynlist_801A83E4)($t8)
	lw      $t7, 0x002C($sp)
	lw      $t9, 0x0030($t8)
	lui     $t2, %hi(face_dynlist_801A83E4)
	sll     $t0, $t9, 2
	addu    $t1, $t8, $t0
	sw      $t7, 0x0034($t1)
	lw      $t2, %lo(face_dynlist_801A83E4)($t2)
	nop
	lw      $t3, 0x0030($t2)
	nop
	addiu   $t4, $t3, 0x0001
	sw      $t4, 0x0030($t2)
	b       100$
	nop
97$:
	la.u    $a0, str_face_dynlist_801B7738
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B7738
100$:
	b       112$
	nop
102$:
	lui     $t5, %hi(face_dynlist_801A83E4)
	lw      $t5, %lo(face_dynlist_801A83E4)($t5)
	lui     $a2, %hi(_face_dynlist_bss-0x5E0+0x610)
	lw      $a2, %lo(_face_dynlist_bss-0x5E0+0x610)($a2)
	la.u    $a0, str_face_dynlist_801B7744
	la.u    $a1, str_face_dynlist_801B7778
	lw      $a3, 0x000C($t5)
	la.l    $a1, str_face_dynlist_801B7778
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B7744
112$:
	b       114$
	nop
114$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0028

.globl face_dynlist_8018A530
face_dynlist_8018A530:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lui     $t6, %hi(face_dynlist_801A83E4)
	lw      $t6, %lo(face_dynlist_801A83E4)($t6)
	nop
	bnez    $t6, 11$
	nop
	la.u    $a0, str_face_dynlist_801B7784
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B7784
11$:
	lui     $t7, %hi(face_dynlist_801A83E4)
	lw      $t7, %lo(face_dynlist_801A83E4)($t7)
	lw      $t9, 0x0018($sp)
	lhu     $t8, 0x0012($t7)
	nop
	or      $t0, $t8, $t9
	sh      $t0, 0x0012($t7)
	b       20$
	nop
20$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl dSetType
dSetType:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(face_dynlist_801A83E4)
	lw      $t6, %lo(face_dynlist_801A83E4)($t6)
	nop
	sw      $t6, 0x0024($sp)
	lui     $t7, %hi(face_dynlist_801A83E4)
	lw      $t7, %lo(face_dynlist_801A83E4)($t7)
	nop
	bnez    $t7, 16$
	nop
	la.u    $a0, str_face_dynlist_801B77A8
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B77A8
16$:
	lui     $t8, %hi(face_dynlist_801A83E4)
	lw      $t8, %lo(face_dynlist_801A83E4)($t8)
	li      $at, 0x0001
	lw      $s0, 0x000C($t8)
	nop
	beq     $s0, $at, 52$
	nop
	li      $at, 0x0004
	beq     $s0, $at, 58$
	nop
	li      $at, 0x0008
	beq     $s0, $at, 64$
	nop
	li      $at, 0x0020
	beq     $s0, $at, 40$
	nop
	li      $at, 0x0800
	beq     $s0, $at, 70$
	nop
	li      $at, 0x2000
	beq     $s0, $at, 46$
	nop
	b       76$
	nop
40$:
	lw      $t9, 0x0028($sp)
	lw      $t0, 0x0024($sp)
	nop
	sw      $t9, 0x01EC($t0)
	b       86$
	nop
46$:
	lw      $t1, 0x0028($sp)
	lw      $t2, 0x0024($sp)
	nop
	sw      $t1, 0x0024($t2)
	b       86$
	nop
52$:
	lw      $t3, 0x0028($sp)
	lw      $t4, 0x0024($sp)
	nop
	sw      $t3, 0x002C($t4)
	b       86$
	nop
58$:
	lw      $t5, 0x0028($sp)
	lw      $t6, 0x0024($sp)
	nop
	sw      $t5, 0x01CC($t6)
	b       86$
	nop
64$:
	lw      $t7, 0x0028($sp)
	lw      $t8, 0x0024($sp)
	nop
	sw      $t7, 0x0060($t8)
	b       86$
	nop
70$:
	lw      $t9, 0x0028($sp)
	lw      $t0, 0x0024($sp)
	nop
	sw      $t9, 0x0028($t0)
	b       86$
	nop
76$:
	lui     $t1, %hi(face_dynlist_801A83E4)
	lw      $t1, %lo(face_dynlist_801A83E4)($t1)
	lui     $a2, %hi(_face_dynlist_bss-0x5E0+0x610)
	lw      $a2, %lo(_face_dynlist_bss-0x5E0+0x610)($a2)
	la.u    $a0, str_face_dynlist_801B77CC
	la.u    $a1, str_face_dynlist_801B7800
	lw      $a3, 0x000C($t1)
	la.l    $a1, str_face_dynlist_801B7800
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B77CC
86$:
	b       88$
	nop
88$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0028

dSetID:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(face_dynlist_801A83E4)
	lw      $t6, %lo(face_dynlist_801A83E4)($t6)
	nop
	sw      $t6, 0x0024($sp)
	lui     $t7, %hi(face_dynlist_801A83E4)
	lw      $t7, %lo(face_dynlist_801A83E4)($t7)
	nop
	bnez    $t7, 16$
	nop
	la.u    $a0, str_face_dynlist_801B780C
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B780C
16$:
	lui     $t8, %hi(face_dynlist_801A83E4)
	lw      $t8, %lo(face_dynlist_801A83E4)($t8)
	li      $at, 0x0004
	lw      $s0, 0x000C($t8)
	nop
	beq     $s0, $at, 40$
	nop
	li      $at, 0x0100
	beq     $s0, $at, 46$
	nop
	li      $at, 0x0800
	beq     $s0, $at, 34$
	nop
	li      $at, 0x00080000
	beq     $s0, $at, 52$
	nop
	b       58$
	nop
34$:
	lw      $t9, 0x0028($sp)
	lw      $t0, 0x0024($sp)
	nop
	sw      $t9, 0x001C($t0)
	b       68$
	nop
40$:
	lw      $t1, 0x0028($sp)
	lw      $t2, 0x0024($sp)
	nop
	sw      $t1, 0x01B4($t2)
	b       68$
	nop
46$:
	lw      $t3, 0x0028($sp)
	lw      $t4, 0x0024($sp)
	nop
	sh      $t3, 0x0038($t4)
	b       68$
	nop
52$:
	lw      $t5, 0x0028($sp)
	lw      $t6, 0x0024($sp)
	nop
	sw      $t5, 0x001C($t6)
	b       68$
	nop
58$:
	lui     $t7, %hi(face_dynlist_801A83E4)
	lw      $t7, %lo(face_dynlist_801A83E4)($t7)
	lui     $a2, %hi(_face_dynlist_bss-0x5E0+0x610)
	lw      $a2, %lo(_face_dynlist_bss-0x5E0+0x610)($a2)
	la.u    $a0, str_face_dynlist_801B7830
	la.u    $a1, str_face_dynlist_801B7864
	lw      $a3, 0x000C($t7)
	la.l    $a1, str_face_dynlist_801B7864
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B7830
68$:
	b       70$
	nop
70$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0028

.globl dSetColNum
dSetColNum:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(face_dynlist_801A83E4)
	lw      $t6, %lo(face_dynlist_801A83E4)($t6)
	nop
	bnez    $t6, 12$
	nop
	la.u    $a0, str_face_dynlist_801B7870
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B7870
12$:
	lui     $t7, %hi(face_dynlist_801A83E4)
	lw      $t7, %lo(face_dynlist_801A83E4)($t7)
	li      $at, 0x0004
	lw      $s0, 0x000C($t7)
	nop
	beq     $s0, $at, 33$
	nop
	li      $at, 0x0008
	beq     $s0, $at, 40$
	nop
	li      $at, 0x0020
	beq     $s0, $at, 47$
	nop
	li      $at, 0x0080
	beq     $s0, $at, 61$
	nop
	li      $at, 0x2000
	beq     $s0, $at, 54$
	nop
	b       97$
	nop
33$:
	lui     $t9, %hi(face_dynlist_801A83E4)
	lw      $t9, %lo(face_dynlist_801A83E4)($t9)
	lw      $t8, 0x0028($sp)
	nop
	sw      $t8, 0x01C8($t9)
	b       107$
	nop
40$:
	lui     $t1, %hi(face_dynlist_801A83E4)
	lw      $t1, %lo(face_dynlist_801A83E4)($t1)
	lw      $t0, 0x0028($sp)
	nop
	sw      $t0, 0x0058($t1)
	b       107$
	nop
47$:
	lui     $t3, %hi(face_dynlist_801A83E4)
	lw      $t3, %lo(face_dynlist_801A83E4)($t3)
	lw      $t2, 0x0028($sp)
	nop
	sw      $t2, 0x0040($t3)
	b       107$
	nop
54$:
	lui     $t5, %hi(face_dynlist_801A83E4)
	lw      $t5, %lo(face_dynlist_801A83E4)($t5)
	lw      $t4, 0x0028($sp)
	nop
	sw      $t4, 0x005C($t5)
	b       107$
	nop
61$:
	lw      $a0, 0x0028($sp)
	jal     face_draw_80178ED8
	nop
	sw      $v0, 0x0024($sp)
	lw      $t6, 0x0024($sp)
	nop
	beqz    $t6, 92$
	nop
	lw      $t7, 0x0024($sp)
	lui     $t8, %hi(face_dynlist_801A83E4)
	lw      $t8, %lo(face_dynlist_801A83E4)($t8)
	lwc1    $f4, 0x0000($t7)
	nop
	swc1    $f4, 0x0014($t8)
	lw      $t9, 0x0024($sp)
	lui     $t0, %hi(face_dynlist_801A83E4)
	lw      $t0, %lo(face_dynlist_801A83E4)($t0)
	lwc1    $f6, 0x0004($t9)
	nop
	swc1    $f6, 0x0018($t0)
	lw      $t1, 0x0024($sp)
	lui     $t2, %hi(face_dynlist_801A83E4)
	lw      $t2, %lo(face_dynlist_801A83E4)($t2)
	lwc1    $f8, 0x0008($t1)
	nop
	swc1    $f8, 0x001C($t2)
	lui     $t4, %hi(face_dynlist_801A83E4)
	lw      $t4, %lo(face_dynlist_801A83E4)($t4)
	lw      $t3, 0x0028($sp)
	b       95$
	sw      $t3, 0x0020($t4)
92$:
	la.u    $a0, str_face_dynlist_801B7894
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B7894
95$:
	b       107$
	nop
97$:
	lui     $t5, %hi(face_dynlist_801A83E4)
	lw      $t5, %lo(face_dynlist_801A83E4)($t5)
	lui     $a2, %hi(_face_dynlist_bss-0x5E0+0x610)
	lw      $a2, %lo(_face_dynlist_bss-0x5E0+0x610)($a2)
	la.u    $a0, str_face_dynlist_801B78B8
	la.u    $a1, str_face_dynlist_801B78EC
	lw      $a3, 0x000C($t5)
	la.l    $a1, str_face_dynlist_801B78EC
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B78B8
107$:
	b       109$
	nop
109$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0028

dSetMaterial:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	lui     $t6, %hi(face_dynlist_801A83E4)
	lw      $t6, %lo(face_dynlist_801A83E4)($t6)
	nop
	bnez    $t6, 12$
	nop
	la.u    $a0, str_face_dynlist_801B78FC
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B78FC
12$:
	lui     $t7, %hi(face_dynlist_801A83E4)
	lw      $t7, %lo(face_dynlist_801A83E4)($t7)
	li      $at, 0x0080
	lw      $t8, 0x000C($t7)
	nop
	bne     $t8, $at, 28$
	nop
	b       21$
	nop
21$:
	lui     $t0, %hi(face_dynlist_801A83E4)
	lw      $t0, %lo(face_dynlist_801A83E4)($t0)
	lw      $t9, 0x001C($sp)
	nop
	sw      $t9, 0x0044($t0)
	b       38$
	nop
28$:
	lui     $t1, %hi(face_dynlist_801A83E4)
	lw      $t1, %lo(face_dynlist_801A83E4)($t1)
	lui     $a2, %hi(_face_dynlist_bss-0x5E0+0x610)
	lw      $a2, %lo(_face_dynlist_bss-0x5E0+0x610)($a2)
	la.u    $a0, str_face_dynlist_801B7920
	la.u    $a1, str_face_dynlist_801B7954
	lw      $a3, 0x000C($t1)
	la.l    $a1, str_face_dynlist_801B7954
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B7920
38$:
	b       40$
	nop
40$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

dFriction:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a2, 0x0020($sp)
	swc1    $f12, 0x0018($sp)
	swc1    $f14, 0x001C($sp)
	lui     $t6, %hi(face_dynlist_801A83E4)
	lw      $t6, %lo(face_dynlist_801A83E4)($t6)
	nop
	bnez    $t6, 13$
	nop
	la.u    $a0, str_face_dynlist_801B7964
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B7964
13$:
	lui     $t7, %hi(face_dynlist_801A83E4)
	lw      $t7, %lo(face_dynlist_801A83E4)($t7)
	li      $at, 0x0004
	lw      $t8, 0x000C($t7)
	nop
	bne     $t8, $at, 39$
	nop
	b       22$
	nop
22$:
	lui     $t9, %hi(face_dynlist_801A83E4)
	lw      $t9, %lo(face_dynlist_801A83E4)($t9)
	lwc1    $f4, 0x0018($sp)
	nop
	swc1    $f4, 0x00DC($t9)
	lui     $t0, %hi(face_dynlist_801A83E4)
	lw      $t0, %lo(face_dynlist_801A83E4)($t0)
	lwc1    $f6, 0x001C($sp)
	nop
	swc1    $f6, 0x00E0($t0)
	lui     $t1, %hi(face_dynlist_801A83E4)
	lw      $t1, %lo(face_dynlist_801A83E4)($t1)
	lwc1    $f8, 0x0020($sp)
	nop
	swc1    $f8, 0x00E4($t1)
	b       49$
	nop
39$:
	lui     $t2, %hi(face_dynlist_801A83E4)
	lw      $t2, %lo(face_dynlist_801A83E4)($t2)
	lui     $a2, %hi(_face_dynlist_bss-0x5E0+0x610)
	lw      $a2, %lo(_face_dynlist_bss-0x5E0+0x610)($a2)
	la.u    $a0, str_face_dynlist_801B7988
	la.u    $a1, str_face_dynlist_801B79BC
	lw      $a3, 0x000C($t2)
	la.l    $a1, str_face_dynlist_801B79BC
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B7988
49$:
	b       51$
	nop
51$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

dSetSpring:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	swc1    $f12, 0x0018($sp)
	lui     $t6, %hi(face_dynlist_801A83E4)
	lw      $t6, %lo(face_dynlist_801A83E4)($t6)
	nop
	bnez    $t6, 11$
	nop
	la.u    $a0, str_face_dynlist_801B79C8
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B79C8
11$:
	lui     $t7, %hi(face_dynlist_801A83E4)
	lw      $t7, %lo(face_dynlist_801A83E4)($t7)
	li      $at, 0x0002
	lw      $t8, 0x000C($t7)
	nop
	bne     $t8, $at, 27$
	nop
	b       20$
	nop
20$:
	lui     $t9, %hi(face_dynlist_801A83E4)
	lw      $t9, %lo(face_dynlist_801A83E4)($t9)
	lwc1    $f4, 0x0018($sp)
	nop
	swc1    $f4, 0x0110($t9)
	b       37$
	nop
27$:
	lui     $t0, %hi(face_dynlist_801A83E4)
	lw      $t0, %lo(face_dynlist_801A83E4)($t0)
	lui     $a2, %hi(_face_dynlist_bss-0x5E0+0x610)
	lw      $a2, %lo(_face_dynlist_bss-0x5E0+0x610)($a2)
	la.u    $a0, str_face_dynlist_801B79EC
	la.u    $a1, str_face_dynlist_801B7A20
	lw      $a3, 0x000C($t0)
	la.l    $a1, str_face_dynlist_801B7A20
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B79EC
37$:
	b       39$
	nop
39$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

dSetAmbient:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a2, 0x0020($sp)
	swc1    $f12, 0x0018($sp)
	swc1    $f14, 0x001C($sp)
	lui     $t6, %hi(face_dynlist_801A83E4)
	lw      $t6, %lo(face_dynlist_801A83E4)($t6)
	nop
	bnez    $t6, 13$
	nop
	la.u    $a0, str_face_dynlist_801B7A30
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B7A30
13$:
	lui     $t7, %hi(face_dynlist_801A83E4)
	lw      $t7, %lo(face_dynlist_801A83E4)($t7)
	li      $at, 0x0800
	lw      $t8, 0x000C($t7)
	nop
	bne     $t8, $at, 39$
	nop
	b       22$
	nop
22$:
	lui     $t9, %hi(face_dynlist_801A83E4)
	lw      $t9, %lo(face_dynlist_801A83E4)($t9)
	lwc1    $f4, 0x0018($sp)
	nop
	swc1    $f4, 0x0030($t9)
	lui     $t0, %hi(face_dynlist_801A83E4)
	lw      $t0, %lo(face_dynlist_801A83E4)($t0)
	lwc1    $f6, 0x001C($sp)
	nop
	swc1    $f6, 0x0034($t0)
	lui     $t1, %hi(face_dynlist_801A83E4)
	lw      $t1, %lo(face_dynlist_801A83E4)($t1)
	lwc1    $f8, 0x0020($sp)
	nop
	swc1    $f8, 0x0038($t1)
	b       49$
	nop
39$:
	lui     $t2, %hi(face_dynlist_801A83E4)
	lw      $t2, %lo(face_dynlist_801A83E4)($t2)
	lui     $a2, %hi(_face_dynlist_bss-0x5E0+0x610)
	lw      $a2, %lo(_face_dynlist_bss-0x5E0+0x610)($a2)
	la.u    $a0, str_face_dynlist_801B7A54
	la.u    $a1, str_face_dynlist_801B7A88
	lw      $a3, 0x000C($t2)
	la.l    $a1, str_face_dynlist_801B7A88
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B7A54
49$:
	b       51$
	nop
51$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl dSetDiffuse
dSetDiffuse:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a2, 0x0030($sp)
	swc1    $f12, 0x0028($sp)
	swc1    $f14, 0x002C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(face_dynlist_801A83E4)
	lw      $t6, %lo(face_dynlist_801A83E4)($t6)
	nop
	bnez    $t6, 14$
	nop
	la.u    $a0, str_face_dynlist_801B7A98
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B7A98
14$:
	lui     $t7, %hi(face_dynlist_801A83E4)
	lw      $t7, %lo(face_dynlist_801A83E4)($t7)
	li      $at, 0x0800
	lw      $s0, 0x000C($t7)
	nop
	beq     $s0, $at, 26$
	nop
	li      $at, 0x00080000
	beq     $s0, $at, 43$
	nop
	b       60$
	nop
26$:
	lui     $t8, %hi(face_dynlist_801A83E4)
	lw      $t8, %lo(face_dynlist_801A83E4)($t8)
	lwc1    $f4, 0x0028($sp)
	nop
	swc1    $f4, 0x003C($t8)
	lui     $t9, %hi(face_dynlist_801A83E4)
	lw      $t9, %lo(face_dynlist_801A83E4)($t9)
	lwc1    $f6, 0x002C($sp)
	nop
	swc1    $f6, 0x0040($t9)
	lui     $t0, %hi(face_dynlist_801A83E4)
	lw      $t0, %lo(face_dynlist_801A83E4)($t0)
	lwc1    $f8, 0x0030($sp)
	nop
	swc1    $f8, 0x0044($t0)
	b       70$
	nop
43$:
	lui     $t1, %hi(face_dynlist_801A83E4)
	lw      $t1, %lo(face_dynlist_801A83E4)($t1)
	lwc1    $f10, 0x0028($sp)
	nop
	swc1    $f10, 0x0050($t1)
	lui     $t2, %hi(face_dynlist_801A83E4)
	lw      $t2, %lo(face_dynlist_801A83E4)($t2)
	lwc1    $f16, 0x002C($sp)
	nop
	swc1    $f16, 0x0054($t2)
	lui     $t3, %hi(face_dynlist_801A83E4)
	lw      $t3, %lo(face_dynlist_801A83E4)($t3)
	lwc1    $f18, 0x0030($sp)
	nop
	swc1    $f18, 0x0058($t3)
	b       70$
	nop
60$:
	lui     $t4, %hi(face_dynlist_801A83E4)
	lw      $t4, %lo(face_dynlist_801A83E4)($t4)
	lui     $a2, %hi(_face_dynlist_bss-0x5E0+0x610)
	lw      $a2, %lo(_face_dynlist_bss-0x5E0+0x610)($a2)
	la.u    $a0, str_face_dynlist_801B7ABC
	la.u    $a1, str_face_dynlist_801B7AF0
	lw      $a3, 0x000C($t4)
	la.l    $a1, str_face_dynlist_801B7AF0
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B7ABC
70$:
	b       72$
	nop
72$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0028

dControlType:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lui     $t6, %hi(face_dynlist_801A83E4)
	lw      $t6, %lo(face_dynlist_801A83E4)($t6)
	nop
	bnez    $t6, 11$
	nop
	la.u    $a0, str_face_dynlist_801B7B00
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B7B00
11$:
	lui     $t7, %hi(face_dynlist_801A83E4)
	lw      $t7, %lo(face_dynlist_801A83E4)($t7)
	li      $at, 0x0020
	lw      $t8, 0x000C($t7)
	nop
	bne     $t8, $at, 27$
	nop
	b       20$
	nop
20$:
	lui     $t0, %hi(face_dynlist_801A83E4)
	lw      $t0, %lo(face_dynlist_801A83E4)($t0)
	lw      $t9, 0x0018($sp)
	nop
	sw      $t9, 0x0210($t0)
	b       37$
	nop
27$:
	lui     $t1, %hi(face_dynlist_801A83E4)
	lw      $t1, %lo(face_dynlist_801A83E4)($t1)
	lui     $a2, %hi(_face_dynlist_bss-0x5E0+0x610)
	lw      $a2, %lo(_face_dynlist_bss-0x5E0+0x610)($a2)
	la.u    $a0, str_face_dynlist_801B7B24
	la.u    $a1, str_face_dynlist_801B7B58
	lw      $a3, 0x000C($t1)
	la.l    $a1, str_face_dynlist_801B7B58
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B7B24
37$:
	b       39$
	nop
39$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl face_dynlist_8018AEDC
face_dynlist_8018AEDC:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(face_dynlist_801A83E4)
	lw      $t6, %lo(face_dynlist_801A83E4)($t6)
	nop
	bnez    $t6, 11$
	nop
	la.u    $a0, str_face_dynlist_801B7B68
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B7B68
11$:
	lui     $t7, %hi(face_dynlist_801A83E4)
	lw      $t7, %lo(face_dynlist_801A83E4)($t7)
	li      $at, 0x0020
	lw      $s0, 0x000C($t7)
	nop
	beq     $s0, $at, 26$
	nop
	li      $at, 0x0040
	beq     $s0, $at, 32$
	nop
	li      $at, 0x00100000
	beq     $s0, $at, 38$
	nop
	b       44$
	nop
26$:
	lui     $v0, %hi(face_dynlist_801A83E4)
	lw      $v0, %lo(face_dynlist_801A83E4)($v0)
	b       49$
	addiu   $v0, $v0, 0x00BC
	b       47$
	nop
32$:
	lui     $v0, %hi(face_dynlist_801A83E4)
	lw      $v0, %lo(face_dynlist_801A83E4)($v0)
	b       49$
	addiu   $v0, $v0, 0x0028
	b       47$
	nop
38$:
	lui     $v0, %hi(face_dynlist_801A83E4)
	lw      $v0, %lo(face_dynlist_801A83E4)($v0)
	b       49$
	addiu   $v0, $v0, 0x0014
	b       47$
	nop
44$:
	la.u    $v0, face_dynlist_801A83E8
	b       49$
	la.l    $v0, face_dynlist_801A83E8
47$:
	b       49$
	nop
49$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0028

.globl dGetMatrix
dGetMatrix:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(face_dynlist_801A83E4)
	lw      $t6, %lo(face_dynlist_801A83E4)($t6)
	nop
	bnez    $t6, 12$
	nop
	la.u    $a0, str_face_dynlist_801B7B8C
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B7B8C
12$:
	lui     $t7, %hi(face_dynlist_801A83E4)
	lw      $t7, %lo(face_dynlist_801A83E4)($t7)
	nop
	sw      $t7, 0x0024($sp)
	lui     $t8, %hi(face_dynlist_801A83E4)
	lw      $t8, %lo(face_dynlist_801A83E4)($t8)
	li      $at, 0x0004
	lw      $s0, 0x000C($t8)
	nop
	beq     $s0, $at, 45$
	nop
	li      $at, 0x0008
	beq     $s0, $at, 57$
	nop
	li      $at, 0x0010
	beq     $s0, $at, 62$
	nop
	li      $at, 0x0020
	beq     $s0, $at, 37$
	nop
	li      $at, 0x0200
	beq     $s0, $at, 51$
	nop
	b       67$
	nop
37$:
	lw      $a0, 0x0024($sp)
	lw      $a1, 0x0028($sp)
	jal     face_math_801964A0
	addiu   $a0, $a0, 0x0128
	b       77$
	nop
	b       77$
	nop
45$:
	lw      $a0, 0x0024($sp)
	lw      $a1, 0x0028($sp)
	jal     face_math_801964A0
	addiu   $a0, $a0, 0x00E8
	b       77$
	nop
51$:
	lw      $a0, 0x0024($sp)
	lw      $a1, 0x0028($sp)
	jal     face_math_801964A0
	addiu   $a0, $a0, 0x00E8
	b       77$
	nop
57$:
	lw      $a0, 0x0028($sp)
	jal     face_math_801963C0
	nop
	b       77$
	nop
62$:
	lw      $a0, 0x0028($sp)
	jal     face_math_801963C0
	nop
	b       77$
	nop
67$:
	lui     $t9, %hi(face_dynlist_801A83E4)
	lw      $t9, %lo(face_dynlist_801A83E4)($t9)
	lui     $a2, %hi(_face_dynlist_bss-0x5E0+0x610)
	lw      $a2, %lo(_face_dynlist_bss-0x5E0+0x610)($a2)
	la.u    $a0, str_face_dynlist_801B7BB0
	la.u    $a1, str_face_dynlist_801B7BE4
	lw      $a3, 0x000C($t9)
	la.l    $a1, str_face_dynlist_801B7BE4
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B7BB0
77$:
	b       79$
	nop
79$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0028

dSetMatrix:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(face_dynlist_801A83E4)
	lw      $t6, %lo(face_dynlist_801A83E4)($t6)
	nop
	bnez    $t6, 12$
	nop
	la.u    $a0, str_face_dynlist_801B7BF4
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B7BF4
12$:
	lui     $t7, %hi(face_dynlist_801A83E4)
	lw      $t7, %lo(face_dynlist_801A83E4)($t7)
	li      $at, 0x0004
	lw      $s0, 0x000C($t7)
	nop
	beq     $s0, $at, 39$
	nop
	li      $at, 0x0020
	beq     $s0, $at, 27$
	nop
	li      $at, 0x0200
	beq     $s0, $at, 46$
	nop
	b       53$
	nop
27$:
	lui     $a1, %hi(face_dynlist_801A83E4)
	lw      $a1, %lo(face_dynlist_801A83E4)($a1)
	lw      $a0, 0x0028($sp)
	jal     face_math_801964A0
	addiu   $a1, $a1, 0x0128
	lui     $a1, %hi(face_dynlist_801A83E4)
	lw      $a1, %lo(face_dynlist_801A83E4)($a1)
	lw      $a0, 0x0028($sp)
	jal     face_math_801964A0
	addiu   $a1, $a1, 0x0128
	b       63$
	nop
39$:
	lui     $a1, %hi(face_dynlist_801A83E4)
	lw      $a1, %lo(face_dynlist_801A83E4)($a1)
	lw      $a0, 0x0028($sp)
	jal     face_math_801964A0
	addiu   $a1, $a1, 0x00E8
	b       63$
	nop
46$:
	lui     $a1, %hi(face_dynlist_801A83E4)
	lw      $a1, %lo(face_dynlist_801A83E4)($a1)
	lw      $a0, 0x0028($sp)
	jal     face_math_801964A0
	addiu   $a1, $a1, 0x0064
	b       63$
	nop
53$:
	lui     $t8, %hi(face_dynlist_801A83E4)
	lw      $t8, %lo(face_dynlist_801A83E4)($t8)
	lui     $a2, %hi(_face_dynlist_bss-0x5E0+0x610)
	lw      $a2, %lo(_face_dynlist_bss-0x5E0+0x610)($a2)
	la.u    $a0, str_face_dynlist_801B7C18
	la.u    $a1, str_face_dynlist_801B7C4C
	lw      $a3, 0x000C($t8)
	la.l    $a1, str_face_dynlist_801B7C4C
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B7C18
63$:
	b       65$
	nop
65$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0028

face_dynlist_8018B210:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(face_dynlist_801A83E4)
	lw      $t6, %lo(face_dynlist_801A83E4)($t6)
	nop
	bnez    $t6, 12$
	nop
	la.u    $a0, str_face_dynlist_801B7C5C
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B7C5C
12$:
	lui     $t7, %hi(face_dynlist_801A83E4)
	lw      $t7, %lo(face_dynlist_801A83E4)($t7)
	li      $at, 0x0004
	lw      $s0, 0x000C($t7)
	nop
	beq     $s0, $at, 24$
	nop
	li      $at, 0x0020
	beq     $s0, $at, 31$
	nop
	b       38$
	nop
24$:
	lui     $a1, %hi(face_dynlist_801A83E4)
	lw      $a1, %lo(face_dynlist_801A83E4)($a1)
	lw      $a0, 0x0028($sp)
	jal     face_math_801964A0
	addiu   $a1, $a1, 0x0128
	b       48$
	nop
31$:
	lui     $a1, %hi(face_dynlist_801A83E4)
	lw      $a1, %lo(face_dynlist_801A83E4)($a1)
	lw      $a0, 0x0028($sp)
	jal     face_math_801964A0
	addiu   $a1, $a1, 0x0168
	b       48$
	nop
38$:
	lui     $t8, %hi(face_dynlist_801A83E4)
	lw      $t8, %lo(face_dynlist_801A83E4)($t8)
	lui     $a2, %hi(_face_dynlist_bss-0x5E0+0x610)
	lw      $a2, %lo(_face_dynlist_bss-0x5E0+0x610)($a2)
	la.u    $a0, str_face_dynlist_801B7C80
	la.u    $a1, str_face_dynlist_801B7CB4
	lw      $a3, 0x000C($t8)
	la.l    $a1, str_face_dynlist_801B7CB4
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B7C80
48$:
	b       50$
	nop
50$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0028

.globl dGetRMatrixPtr
dGetRMatrixPtr:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(face_dynlist_801A83E4)
	lw      $t6, %lo(face_dynlist_801A83E4)($t6)
	nop
	bnez    $t6, 11$
	nop
	la.u    $a0, str_face_dynlist_801B7CC4
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B7CC4
11$:
	lui     $t7, %hi(face_dynlist_801A83E4)
	lw      $t7, %lo(face_dynlist_801A83E4)($t7)
	li      $at, 0x0004
	lw      $s0, 0x000C($t7)
	nop
	beq     $s0, $at, 23$
	nop
	li      $at, 0x0020
	beq     $s0, $at, 27$
	nop
	b       31$
	nop
23$:
	lui     $v0, %hi(face_dynlist_801A83E4)
	lw      $v0, %lo(face_dynlist_801A83E4)($v0)
	b       43$
	addiu   $v0, $v0, 0x0128
27$:
	lui     $v0, %hi(face_dynlist_801A83E4)
	lw      $v0, %lo(face_dynlist_801A83E4)($v0)
	b       43$
	addiu   $v0, $v0, 0x0168
31$:
	lui     $t8, %hi(face_dynlist_801A83E4)
	lw      $t8, %lo(face_dynlist_801A83E4)($t8)
	lui     $a2, %hi(_face_dynlist_bss-0x5E0+0x610)
	lw      $a2, %lo(_face_dynlist_bss-0x5E0+0x610)($a2)
	la.u    $a0, str_face_dynlist_801B7CE8
	la.u    $a1, str_face_dynlist_801B7D1C
	lw      $a3, 0x000C($t8)
	la.l    $a1, str_face_dynlist_801B7D1C
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B7CE8
	b       43$
	nop
43$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0028

.globl dSetIMatrix
dSetIMatrix:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(face_dynlist_801A83E4)
	lw      $t6, %lo(face_dynlist_801A83E4)($t6)
	nop
	bnez    $t6, 12$
	nop
	la.u    $a0, str_face_dynlist_801B7D30
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B7D30
12$:
	lui     $t7, %hi(face_dynlist_801A83E4)
	lw      $t7, %lo(face_dynlist_801A83E4)($t7)
	nop
	sw      $t7, 0x0024($sp)
	lui     $t8, %hi(face_dynlist_801A83E4)
	lw      $t8, %lo(face_dynlist_801A83E4)($t8)
	li      $at, 0x0004
	lw      $s0, 0x000C($t8)
	nop
	beq     $s0, $at, 37$
	nop
	li      $at, 0x0020
	beq     $s0, $at, 31$
	nop
	li      $at, 0x00080000
	beq     $s0, $at, 43$
	nop
	b       60$
	nop
31$:
	lw      $a1, 0x0024($sp)
	lw      $a0, 0x0028($sp)
	jal     face_math_801964A0
	addiu   $a1, $a1, 0x00E8
	b       70$
	nop
37$:
	lw      $a1, 0x0024($sp)
	lw      $a0, 0x0028($sp)
	jal     face_math_801964A0
	addiu   $a1, $a1, 0x0168
	b       70$
	nop
43$:
	lw      $t9, 0x0028($sp)
	lw      $t0, 0x0024($sp)
	lwc1    $f4, 0x0030($t9)
	nop
	swc1    $f4, 0x0074($t0)
	lw      $t1, 0x0028($sp)
	lw      $t2, 0x0024($sp)
	lwc1    $f6, 0x0034($t1)
	nop
	swc1    $f6, 0x0078($t2)
	lw      $t3, 0x0028($sp)
	lw      $t4, 0x0024($sp)
	lwc1    $f8, 0x0038($t3)
	nop
	swc1    $f8, 0x007C($t4)
	b       70$
	nop
60$:
	lui     $t5, %hi(face_dynlist_801A83E4)
	lw      $t5, %lo(face_dynlist_801A83E4)($t5)
	lui     $a2, %hi(_face_dynlist_bss-0x5E0+0x610)
	lw      $a2, %lo(_face_dynlist_bss-0x5E0+0x610)($a2)
	la.u    $a0, str_face_dynlist_801B7D54
	la.u    $a1, str_face_dynlist_801B7D88
	lw      $a3, 0x000C($t5)
	la.l    $a1, str_face_dynlist_801B7D88
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B7D54
70$:
	b       72$
	nop
72$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0028

.globl dGetMatrixPtr
dGetMatrixPtr:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(face_dynlist_801A83E4)
	lw      $t6, %lo(face_dynlist_801A83E4)($t6)
	nop
	bnez    $t6, 11$
	nop
	la.u    $a0, str_face_dynlist_801B7D98
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B7D98
11$:
	lui     $t7, %hi(face_dynlist_801A83E4)
	lw      $t7, %lo(face_dynlist_801A83E4)($t7)
	li      $at, 0x0002
	lw      $s0, 0x000C($t7)
	nop
	beq     $s0, $at, 41$
	nop
	li      $at, 0x0004
	beq     $s0, $at, 47$
	nop
	li      $at, 0x0020
	beq     $s0, $at, 29$
	nop
	li      $at, 0x0200
	beq     $s0, $at, 35$
	nop
	b       53$
	nop
29$:
	lui     $v0, %hi(face_dynlist_801A83E4)
	lw      $v0, %lo(face_dynlist_801A83E4)($v0)
	b       65$
	addiu   $v0, $v0, 0x0128
	b       63$
	nop
35$:
	lui     $v0, %hi(face_dynlist_801A83E4)
	lw      $v0, %lo(face_dynlist_801A83E4)($v0)
	b       65$
	addiu   $v0, $v0, 0x0064
	b       63$
	nop
41$:
	lui     $v0, %hi(face_dynlist_801A83E4)
	lw      $v0, %lo(face_dynlist_801A83E4)($v0)
	b       65$
	addiu   $v0, $v0, 0x0070
	b       63$
	nop
47$:
	lui     $v0, %hi(face_dynlist_801A83E4)
	lw      $v0, %lo(face_dynlist_801A83E4)($v0)
	b       65$
	addiu   $v0, $v0, 0x00E8
	b       63$
	nop
53$:
	lui     $t8, %hi(face_dynlist_801A83E4)
	lw      $t8, %lo(face_dynlist_801A83E4)($t8)
	lui     $a2, %hi(_face_dynlist_bss-0x5E0+0x610)
	lw      $a2, %lo(_face_dynlist_bss-0x5E0+0x610)($a2)
	la.u    $a0, str_face_dynlist_801B7DBC
	la.u    $a1, str_face_dynlist_801B7DF0
	lw      $a3, 0x000C($t8)
	la.l    $a1, str_face_dynlist_801B7DF0
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B7DBC
63$:
	b       65$
	nop
65$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0028

.globl dGetIMatrixPtr
dGetIMatrixPtr:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(face_dynlist_801A83E4)
	lw      $t6, %lo(face_dynlist_801A83E4)($t6)
	nop
	bnez    $t6, 11$
	nop
	la.u    $a0, str_face_dynlist_801B7E00
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B7E00
11$:
	lui     $t7, %hi(face_dynlist_801A83E4)
	lw      $t7, %lo(face_dynlist_801A83E4)($t7)
	nop
	sw      $t7, 0x0024($sp)
	lui     $t8, %hi(face_dynlist_801A83E4)
	lw      $t8, %lo(face_dynlist_801A83E4)($t8)
	li      $at, 0x0004
	lw      $s0, 0x000C($t8)
	nop
	beq     $s0, $at, 32$
	nop
	li      $at, 0x0020
	beq     $s0, $at, 27$
	nop
	b       37$
	nop
27$:
	lw      $v0, 0x0024($sp)
	b       49$
	addiu   $v0, $v0, 0x00E8
	b       47$
	nop
32$:
	lw      $v0, 0x0024($sp)
	b       49$
	addiu   $v0, $v0, 0x0168
	b       47$
	nop
37$:
	lui     $t9, %hi(face_dynlist_801A83E4)
	lw      $t9, %lo(face_dynlist_801A83E4)($t9)
	lui     $a2, %hi(_face_dynlist_bss-0x5E0+0x610)
	lw      $a2, %lo(_face_dynlist_bss-0x5E0+0x610)($a2)
	la.u    $a0, str_face_dynlist_801B7E24
	la.u    $a1, str_face_dynlist_801B7E58
	lw      $a3, 0x000C($t9)
	la.l    $a1, str_face_dynlist_801B7E58
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B7E24
47$:
	b       49$
	nop
49$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0028

.globl face_dynlist_8018B6BC
face_dynlist_8018B6BC:
	addiu   $sp, $sp, -0x0040
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0040($sp)
	sw      $a1, 0x0044($sp)
	lw      $a0, 0x0040($sp)
	jal     face_dynlist_80186C84
	nop
	jal     dGetWorldPos
	addiu   $a0, $sp, 0x0034
	lw      $a0, 0x0044($sp)
	jal     face_dynlist_80186C84
	nop
	jal     dGetWorldPos
	addiu   $a0, $sp, 0x0028
	lwc1    $f4, 0x0028($sp)
	lwc1    $f6, 0x0034($sp)
	nop
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x001C($sp)
	lwc1    $f10, 0x002C($sp)
	lwc1    $f16, 0x0038($sp)
	nop
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x0020($sp)
	lwc1    $f4, 0x0030($sp)
	lwc1    $f6, 0x003C($sp)
	nop
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x0024($sp)
	jal     face_math_80194CD8
	addiu   $a0, $sp, 0x001C
	b       35$
	nop
	b       35$
	nop
35$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0040
	jr      $ra
	nop

dSetSkinWeight:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	lui     $t6, %hi(face_dynlist_801A83E4)
	lw      $t6, %lo(face_dynlist_801A83E4)($t6)
	nop
	bnez    $t6, 12$
	nop
	la.u    $a0, str_face_dynlist_801B7E6C
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B7E6C
12$:
	lui     $t7, %hi(face_dynlist_801A83E4)
	lw      $t7, %lo(face_dynlist_801A83E4)($t7)
	li      $at, 0x0004
	lw      $t8, 0x000C($t7)
	nop
	bne     $t8, $at, 38$
	nop
	b       21$
	nop
21$:
	lwc1    $f4, 0x001C($sp)
	li      $at, 0x40590000
	mtc1    $at, $f9
	mtc1    $0, $f8
	cvt.d.s $f6, $f4
	nop
	div.d   $f10, $f6, $f8
	lui     $a0, %hi(face_dynlist_801A83E4)
	lw      $a0, %lo(face_dynlist_801A83E4)($a0)
	lw      $a1, 0x0018($sp)
	move    $a2, $0
	cvt.s.d $f16, $f10
	mfc1    $a3, $f16
	jal     face_joint_8018FC08
	nop
	b       48$
	nop
38$:
	lui     $t9, %hi(face_dynlist_801A83E4)
	lw      $t9, %lo(face_dynlist_801A83E4)($t9)
	lui     $a2, %hi(_face_dynlist_bss-0x5E0+0x610)
	lw      $a2, %lo(_face_dynlist_bss-0x5E0+0x610)($a2)
	la.u    $a0, str_face_dynlist_801B7E90
	la.u    $a1, str_face_dynlist_801B7EC4
	lw      $a3, 0x000C($t9)
	la.l    $a1, str_face_dynlist_801B7EC4
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B7E90
48$:
	b       50$
	nop
50$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop
