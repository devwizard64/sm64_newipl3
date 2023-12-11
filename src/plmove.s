.include "sm64/asm.inc"

.set fp=32
.set noreorder
.set noat

.align 4

pl_move_80263E60:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lw      $a0, 0x0020($sp)
	jal     player_80252000
	move    $a1, $0
	sh      $v0, 0x001E($sp)
	lh      $t6, 0x001E($sp)
	lw      $t7, 0x0020($sp)
	li      $at, 0x42200000
	mtc1    $t6, $f4
	lwc1    $f8, 0x0054($t7)
	mtc1    $at, $f16
	cvt.s.w $f6, $f4
	mul.s   $f10, $f6, $f8
	div.s   $f18, $f10, $f16
	trunc.w.s $f4, $f18
	mfc1    $t9, $f4
	nop
	sh      $t9, 0x001E($sp)
	lh      $v0, 0x001E($sp)
	subu    $v0, $0, $v0
	sll     $t0, $v0, 16
	move    $v0, $t0
	sra     $t1, $v0, 16
	b       29$
	move    $v0, $t1
	b       29$
	nop
29$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl pl_move_80263EE4
pl_move_80263EE4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	sw      $a2, 0x0020($sp)
	lw      $a0, 0x0018($sp)
	jal     player_80250D38
	lh      $a1, 0x001E($sp)
	bnez    $v0, 15$
	nop
	lw      $a0, 0x0018($sp)
	jal     player_80250D38
	lh      $a1, 0x0022($sp)
	beqz    $v0, 74$
	nop
15$:
	lw      $t6, 0x0018($sp)
	lw      $t7, 0x0004($t6)
	andi    $t8, $t7, 0x0004
	beqz    $t8, 40$
	nop
	lw      $t9, 0x0018($sp)
	li      $at, 0x0092
	lw      $t0, 0x0088($t9)
	lh      $t1, 0x0038($t0)
	bne     $t1, $at, 33$
	nop
	li.u    $a1, 0x042F9081
	li.l    $a1, 0x042F9081
	lw      $a0, 0x0018($sp)
	jal     player_80251310
	move    $a2, $0
	b       38$
	nop
33$:
	li.u    $a1, 0x042A9081
	li.l    $a1, 0x042A9081
	lw      $a0, 0x0018($sp)
	jal     player_80251310
	move    $a2, $0
38$:
	b       74$
	nop
40$:
	lw      $t2, 0x0018($sp)
	li      $at, 0x42480000
	mtc1    $at, $f6
	lwc1    $f4, 0x00C0($t2)
	c.lt.s  $f6, $f4
	nop
	bc1f    56$
	nop
	lw      $t3, 0x0018($sp)
	li.u    $a0, 0x042E0081
	li.l    $a0, 0x042E0081
	lw      $a1, 0x0088($t3)
	jal     Na_SePlay
	addiu   $a1, $a1, 0x0054
	b       74$
	nop
56$:
	lw      $t4, 0x0018($sp)
	li      $at, 0x0092
	lw      $t5, 0x0088($t4)
	lh      $t6, 0x0038($t5)
	bne     $t6, $at, 69$
	nop
	li.u    $a1, 0x06208081
	li.l    $a1, 0x06208081
	lw      $a0, 0x0018($sp)
	jal     player_80251310
	move    $a2, $0
	b       74$
	nop
69$:
	li.u    $a1, 0x06108081
	li.l    $a1, 0x06108081
	lw      $a0, 0x0018($sp)
	jal     player_80251310
	move    $a2, $0
74$:
	b       76$
	nop
76$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_move_80264024:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	lwc1    $f4, 0x0070($t6)
	swc1    $f4, 0x0040($t6)
	lw      $t7, 0x0018($sp)
	la.u    $t0, pl_move_8033B2C0
	la.l    $t0, pl_move_8033B2C0
	lhu     $t8, 0x0000($t7)
	li      $a3, 0x42200000
	addiu   $a1, $t7, 0x003C
	sll     $t9, $t8, 6
	addu    $a0, $t9, $t0
	jal     mtxf_ground
	lh      $a2, 0x002E($t7)
	lw      $t1, 0x0018($sp)
	la.u    $t4, pl_move_8033B2C0
	la.l    $t4, pl_move_8033B2C0
	lhu     $t2, 0x0000($t1)
	lw      $t6, 0x0088($t1)
	sll     $t3, $t2, 6
	addu    $t5, $t3, $t4
	sw      $t5, 0x0050($t6)
	b       26$
	nop
26$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_move_8026409C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	sw      $a2, 0x0020($sp)
	sw      $a3, 0x0024($sp)
	lw      $t6, 0x0018($sp)
	lh      $t7, 0x0024($t6)
	sh      $t7, 0x002E($t6)
	lw      $a0, 0x0018($sp)
	jal     player_80251708
	lw      $a1, 0x001C($sp)
	lw      $a0, 0x0018($sp)
	lw      $a1, 0x0020($sp)
	jal     pl_set_state
	lw      $a2, 0x0024($sp)
	b       20$
	nop
	b       20$
	nop
20$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_move_802640FC:
	addiu   $sp, $sp, -0x0050
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0050($sp)
	lw      $t6, 0x0050($sp)
	li      $at, 0x41200000
	mtc1    $at, $f6
	lwc1    $f4, 0x0054($t6)
	c.lt.s  $f4, $f6
	nop
	bc1f    104$
	nop
	lw      $t7, 0x0050($sp)
	lwc1    $f8, 0x003C($t7)
	swc1    $f8, 0x0028($sp)
	lw      $t8, 0x0050($sp)
	lwc1    $f10, 0x0040($t8)
	swc1    $f10, 0x002C($sp)
	lw      $t9, 0x0050($sp)
	lwc1    $f16, 0x0044($t9)
	swc1    $f16, 0x0030($sp)
	li      $at, 0x41200000
	mtc1    $at, $f18
	nop
	swc1    $f18, 0x0038($sp)
	li      $at, 0xC1200000
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x0034($sp)
	jal     bg_check_wall
	addiu   $a0, $sp, 0x0028
	beqz    $v0, 104$
	nop
	lwc1    $f12, 0x0028($sp)
	lwc1    $f14, 0x002C($sp)
	lw      $a2, 0x0030($sp)
	jal     bg_check_ground
	addiu   $a3, $sp, 0x0024
	swc1    $f0, 0x0020($sp)
	lw      $t0, 0x0024($sp)
	beqz    $t0, 104$
	nop
	lwc1    $f6, 0x002C($sp)
	lwc1    $f8, 0x0020($sp)
	li      $at, 0x43200000
	mtc1    $at, $f16
	sub.s   $f10, $f6, $f8
	c.lt.s  $f16, $f10
	nop
	bc1f    104$
	nop
	lh      $t1, 0x003E($sp)
	sll     $t2, $t1, 2
	addu    $t3, $sp, $t2
	lw      $t3, 0x003C($t3)
	sw      $t3, 0x001C($sp)
	lw      $t4, 0x001C($sp)
	lwc1    $f12, 0x0024($t4)
	jal     ATAN2
	lwc1    $f14, 0x001C($t4)
	sh      $v0, 0x001A($sp)
	lw      $t6, 0x0050($sp)
	lh      $t5, 0x001A($sp)
	lh      $t7, 0x002E($t6)
	subu    $t8, $t5, $t7
	sh      $t8, 0x0018($sp)
	lh      $t9, 0x0018($sp)
	slti    $at, $t9, -0x3FFF
	bnez    $at, 104$
	nop
	slti    $at, $t9, 0x4000
	beqz    $at, 104$
	nop
	lw      $t0, 0x001C($sp)
	li      $at, 0x41A00000
	mtc1    $at, $f4
	lwc1    $f18, 0x001C($t0)
	lwc1    $f8, 0x0028($sp)
	lw      $t1, 0x0050($sp)
	mul.s   $f6, $f18, $f4
	sub.s   $f10, $f8, $f6
	swc1    $f10, 0x003C($t1)
	lw      $t2, 0x001C($sp)
	li      $at, 0x41A00000
	mtc1    $at, $f18
	lwc1    $f16, 0x0024($t2)
	lwc1    $f8, 0x0030($sp)
	lw      $t3, 0x0050($sp)
	mul.s   $f4, $f16, $f18
	sub.s   $f6, $f8, $f4
	swc1    $f6, 0x0044($t3)
	lw      $t4, 0x0050($sp)
	sh      $0, 0x002C($t4)
	lh      $t6, 0x001A($sp)
	lw      $t7, 0x0050($sp)
	li      $at, 0x8000
	addu    $t5, $t6, $at
	sh      $t5, 0x002E($t7)
	lw      $a0, 0x0050($sp)
	li      $a1, 0x054E
	jal     pl_set_state
	move    $a2, $0
	lw      $a0, 0x0050($sp)
	jal     pl_set_anime
	li      $a1, 0x001C
104$:
	b       106$
	nop
106$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0050
	jr      $ra
	nop

pl_move_802642B4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	sw      $a2, 0x0020($sp)
	lw      $t6, 0x0018($sp)
	li      $at, 0x41800000
	mtc1    $at, $f6
	lwc1    $f4, 0x0054($t6)
	c.lt.s  $f6, $f4
	nop
	bc1f    22$
	nop
	lw      $a0, 0x0018($sp)
	jal     physics_802552FC
	li      $a1, 0x0001
	lw      $a0, 0x0018($sp)
	lw      $a1, 0x001C($sp)
	jal     player_80253178
	move    $a2, $0
	b       29$
	nop
22$:
	lw      $a0, 0x0018($sp)
	jal     player_80251708
	li      $a1, 0x0000
	lw      $a0, 0x0018($sp)
	lw      $a1, 0x0020($sp)
	jal     pl_set_state
	move    $a2, $0
29$:
	b       31$
	nop
31$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_move_80264340:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	sw      $a2, 0x0020($sp)
	lw      $t6, 0x0018($sp)
	lw      $t7, 0x0004($t6)
	andi    $t8, $t7, 0x0008
	beqz    $t8, 19$
	nop
	li.u    $a1, 0x03000894
	li.l    $a1, 0x03000894
	lw      $a0, 0x0018($sp)
	jal     pl_set_state
	move    $a2, $0
	b       47$
	nop
	b       43$
	nop
19$:
	lw      $t9, 0x0018($sp)
	li      $at, 0x41A00000
	mtc1    $at, $f6
	lwc1    $f4, 0x0054($t9)
	c.lt.s  $f6, $f4
	nop
	bc1f    36$
	nop
	li.u    $a1, 0x01000882
	li.l    $a1, 0x01000882
	lw      $a0, 0x0018($sp)
	jal     pl_set_state
	move    $a2, $0
	b       47$
	nop
	b       43$
	nop
36$:
	li.u    $a1, 0x03000880
	li.l    $a1, 0x03000880
	lw      $a0, 0x0018($sp)
	jal     pl_set_state
	move    $a2, $0
	b       47$
	nop
43$:
	b       47$
	move    $v0, $0
	b       47$
	nop
47$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_move_8026440C:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0030($sp)
	sw      $a1, 0x0034($sp)
	sw      $a2, 0x0038($sp)
	lw      $t6, 0x0030($sp)
	lw      $t7, 0x0068($t6)
	sw      $t7, 0x0024($sp)
	lw      $t8, 0x0024($sp)
	lwc1    $f12, 0x0024($t8)
	jal     ATAN2
	lwc1    $f14, 0x001C($t8)
	sh      $v0, 0x0022($sp)
	lw      $t9, 0x0024($sp)
	lwc1    $f4, 0x001C($t9)
	lwc1    $f8, 0x0024($t9)
	mul.s   $f6, $f4, $f4
	nop
	mul.s   $f10, $f8, $f8
	jal     sqrtf
	add.s   $f12, $f6, $f10
	swc1    $f0, 0x001C($sp)
	lw      $t0, 0x0024($sp)
	lwc1    $f16, 0x0020($t0)
	swc1    $f16, 0x0018($sp)
	lwc1    $f18, 0x0034($sp)
	lwc1    $f4, 0x001C($sp)
	lhu     $t1, 0x0022($sp)
	lui     $at, %hi(math_sin)
	mul.s   $f8, $f18, $f4
	sra     $t2, $t1, 4
	sll     $t3, $t2, 2
	addu    $at, $at, $t3
	lwc1    $f6, %lo(math_sin)($at)
	lw      $t4, 0x0030($sp)
	mul.s   $f10, $f8, $f6
	lwc1    $f16, 0x0058($t4)
	add.s   $f18, $f16, $f10
	swc1    $f18, 0x0058($t4)
	lwc1    $f4, 0x0034($sp)
	lwc1    $f8, 0x001C($sp)
	lhu     $t5, 0x0022($sp)
	lui     $at, %hi(math_cos)
	mul.s   $f6, $f4, $f8
	sra     $t6, $t5, 4
	sll     $t7, $t6, 2
	addu    $at, $at, $t7
	lwc1    $f16, %lo(math_cos)($at)
	lw      $t8, 0x0030($sp)
	mul.s   $f10, $f6, $f16
	lwc1    $f18, 0x005C($t8)
	add.s   $f4, $f18, $f10
	swc1    $f4, 0x005C($t8)
	lw      $t9, 0x0030($sp)
	lwc1    $f6, 0x0038($sp)
	lwc1    $f8, 0x0058($t9)
	mul.s   $f16, $f8, $f6
	swc1    $f16, 0x0058($t9)
	lw      $t0, 0x0030($sp)
	lwc1    $f10, 0x0038($sp)
	lwc1    $f18, 0x005C($t0)
	mul.s   $f4, $f18, $f10
	swc1    $f4, 0x005C($t0)
	lw      $t1, 0x0030($sp)
	lwc1    $f12, 0x005C($t1)
	jal     ATAN2
	lwc1    $f14, 0x0058($t1)
	lw      $t2, 0x0030($sp)
	sh      $v0, 0x0038($t2)
	lw      $t3, 0x0030($sp)
	lh      $t4, 0x002E($t3)
	lh      $t5, 0x0038($t3)
	subu    $t6, $t4, $t5
	sh      $t6, 0x002A($sp)
	lh      $t7, 0x002A($sp)
	sw      $t7, 0x002C($sp)
	lw      $t8, 0x002C($sp)
	blez    $t8, 89$
	nop
	slti    $at, $t8, 0x4001
	beqz    $at, 89$
	nop
	lw      $t9, 0x002C($sp)
	addiu   $t0, $t9, -0x0200
	bgez    $t0, 87$
	sw      $t0, 0x002C($sp)
	sw      $0, 0x002C($sp)
87$:
	b       134$
	nop
89$:
	lw      $t1, 0x002C($sp)
	slti    $at, $t1, -0x3FFF
	bnez    $at, 102$
	nop
	bgez    $t1, 102$
	nop
	lw      $t2, 0x002C($sp)
	addiu   $t3, $t2, 0x0200
	blez    $t3, 100$
	sw      $t3, 0x002C($sp)
	sw      $0, 0x002C($sp)
100$:
	b       134$
	nop
102$:
	lw      $t4, 0x002C($sp)
	slti    $at, $t4, 0x4001
	bnez    $at, 120$
	nop
	li      $at, 0x8000
	slt     $at, $t4, $at
	beqz    $at, 120$
	nop
	lw      $t5, 0x002C($sp)
	li      $at, 0x8001
	addiu   $t6, $t5, 0x0200
	slt     $at, $t6, $at
	bnez    $at, 118$
	sw      $t6, 0x002C($sp)
	li      $t7, 0x8000
	sw      $t7, 0x002C($sp)
118$:
	b       134$
	nop
120$:
	lw      $t8, 0x002C($sp)
	slti    $at, $t8, -0x7FFF
	bnez    $at, 134$
	nop
	slti    $at, $t8, -0x4000
	beqz    $at, 134$
	nop
	lw      $t9, 0x002C($sp)
	addiu   $t0, $t9, -0x0200
	slti    $at, $t0, -0x8000
	beqz    $at, 134$
	sw      $t0, 0x002C($sp)
	li      $t1, -0x8000
	sw      $t1, 0x002C($sp)
134$:
	lw      $t2, 0x0030($sp)
	lw      $t4, 0x002C($sp)
	lh      $t3, 0x0038($t2)
	addu    $t5, $t3, $t4
	sh      $t5, 0x002E($t2)
	lw      $t6, 0x0030($sp)
	lwc1    $f8, 0x0058($t6)
	swc1    $f8, 0x0048($t6)
	mtc1    $0, $f6
	lw      $t7, 0x0030($sp)
	swc1    $f6, 0x004C($t7)
	lw      $t8, 0x0030($sp)
	lwc1    $f16, 0x005C($t8)
	swc1    $f16, 0x0050($t8)
	jal     physics_8025570C
	lw      $a0, 0x0030($sp)
	jal     physics_8025580C
	lw      $a0, 0x0030($sp)
	lw      $t9, 0x0030($sp)
	lwc1    $f18, 0x0058($t9)
	lwc1    $f4, 0x005C($t9)
	mul.s   $f10, $f18, $f18
	nop
	mul.s   $f8, $f4, $f4
	jal     sqrtf
	add.s   $f12, $f10, $f8
	lw      $t0, 0x0030($sp)
	swc1    $f0, 0x0054($t0)
	lw      $t1, 0x0030($sp)
	li      $at, 0x42C80000
	mtc1    $at, $f16
	lwc1    $f6, 0x0054($t1)
	c.lt.s  $f16, $f6
	nop
	bc1f    186$
	nop
	lw      $t3, 0x0030($sp)
	li      $at, 0x42C80000
	mtc1    $at, $f4
	lwc1    $f18, 0x0058($t3)
	lwc1    $f8, 0x0054($t3)
	mul.s   $f10, $f18, $f4
	div.s   $f6, $f10, $f8
	swc1    $f6, 0x0058($t3)
	lw      $t4, 0x0030($sp)
	li      $at, 0x42C80000
	mtc1    $at, $f18
	lwc1    $f16, 0x005C($t4)
	lwc1    $f10, 0x0054($t4)
	mul.s   $f4, $f16, $f18
	div.s   $f8, $f4, $f10
	swc1    $f8, 0x005C($t4)
186$:
	lw      $t5, 0x002C($sp)
	slti    $at, $t5, -0x4000
	bnez    $at, 193$
	nop
	slti    $at, $t5, 0x4001
	bnez    $at, 199$
	nop
193$:
	lw      $t2, 0x0030($sp)
	li      $at, 0xBF800000
	mtc1    $at, $f16
	lwc1    $f6, 0x0054($t2)
	mul.s   $f18, $f6, $f16
	swc1    $f18, 0x0054($t2)
199$:
	b       201$
	nop
201$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

pl_move_80264740:
	addiu   $sp, $sp, -0x0048
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0048($sp)
	sw      $a1, 0x004C($sp)
	sw      $s0, 0x0018($sp)
	sw      $0, 0x0034($sp)
	lw      $t6, 0x0048($sp)
	lh      $t7, 0x0024($t6)
	lh      $t8, 0x0038($t6)
	subu    $t9, $t7, $t8
	sh      $t9, 0x0032($sp)
	lhu     $t0, 0x0032($sp)
	lui     $at, %hi(math_cos)
	sra     $t1, $t0, 4
	sll     $t2, $t1, 2
	addu    $at, $at, $t2
	lwc1    $f4, %lo(math_cos)($at)
	swc1    $f4, 0x002C($sp)
	lhu     $t3, 0x0032($sp)
	lui     $at, %hi(math_sin)
	sra     $t4, $t3, 4
	sll     $t5, $t4, 2
	addu    $at, $at, $t5
	lwc1    $f6, %lo(math_sin)($at)
	swc1    $f6, 0x0028($sp)
	lwc1    $f8, 0x002C($sp)
	mtc1    $0, $f10
	nop
	c.lt.s  $f8, $f10
	nop
	bc1f    53$
	nop
	lw      $t6, 0x0048($sp)
	mtc1    $0, $f18
	lwc1    $f16, 0x0054($t6)
	c.le.s  $f18, $f16
	nop
	bc1f    53$
	nop
	lw      $t7, 0x0048($sp)
	li      $at, 0x3F000000
	mtc1    $at, $f4
	lwc1    $f6, 0x0054($t7)
	li      $at, 0x42C80000
	mtc1    $at, $f10
	mul.s   $f8, $f4, $f6
	li      $at, 0x3F000000
	mtc1    $at, $f18
	lwc1    $f6, 0x002C($sp)
	div.s   $f16, $f8, $f10
	add.s   $f4, $f18, $f16
	mul.s   $f8, $f6, $f4
	swc1    $f8, 0x002C($sp)
53$:
	jal     player_8025177C
	lw      $a0, 0x0048($sp)
	move    $s0, $v0
	li      $at, 0x0013
	beq     $s0, $at, 67$
	nop
	li      $at, 0x0014
	beq     $s0, $at, 88$
	nop
	li      $at, 0x0015
	beq     $s0, $at, 130$
	nop
	b       109$
	nop
67$:
	li      $at, 0x41200000
	mtc1    $at, $f10
	nop
	swc1    $f10, 0x0040($sp)
	lw      $t8, 0x0048($sp)
	li      $at, 0x42000000
	mtc1    $at, $f16
	lwc1    $f18, 0x0020($t8)
	lwc1    $f4, 0x002C($sp)
	lui     $at, %hi(pl_move_80336A80)
	div.s   $f6, $f18, $f16
	lwc1    $f10, %lo(pl_move_80336A80)($at)
	lui     $at, %hi(pl_move_80336A84)
	lwc1    $f16, %lo(pl_move_80336A84)($at)
	mul.s   $f8, $f6, $f4
	nop
	mul.s   $f18, $f8, $f10
	add.s   $f6, $f18, $f16
	swc1    $f6, 0x0044($sp)
	b       151$
	nop
88$:
	li      $at, 0x41000000
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x0040($sp)
	lw      $t9, 0x0048($sp)
	li      $at, 0x42000000
	mtc1    $at, $f10
	lwc1    $f8, 0x0020($t9)
	lwc1    $f16, 0x002C($sp)
	lui     $at, %hi(pl_move_80336A88)
	div.s   $f18, $f8, $f10
	lwc1    $f4, %lo(pl_move_80336A88)($at)
	lui     $at, %hi(pl_move_80336A8C)
	lwc1    $f10, %lo(pl_move_80336A8C)($at)
	mul.s   $f6, $f18, $f16
	nop
	mul.s   $f8, $f6, $f4
	add.s   $f18, $f8, $f10
	swc1    $f18, 0x0044($sp)
	b       151$
	nop
109$:
	li      $at, 0x40E00000
	mtc1    $at, $f16
	nop
	swc1    $f16, 0x0040($sp)
	lw      $t0, 0x0048($sp)
	li      $at, 0x42000000
	mtc1    $at, $f4
	lwc1    $f6, 0x0020($t0)
	lwc1    $f10, 0x002C($sp)
	lui     $at, %hi(pl_move_80336A90)
	div.s   $f8, $f6, $f4
	lwc1    $f16, %lo(pl_move_80336A90)($at)
	lui     $at, %hi(pl_move_80336A94)
	lwc1    $f4, %lo(pl_move_80336A94)($at)
	mul.s   $f18, $f8, $f10
	nop
	mul.s   $f6, $f18, $f16
	add.s   $f8, $f6, $f4
	swc1    $f8, 0x0044($sp)
	b       151$
	nop
130$:
	li      $at, 0x40A00000
	mtc1    $at, $f10
	nop
	swc1    $f10, 0x0040($sp)
	lw      $t1, 0x0048($sp)
	li      $at, 0x42000000
	mtc1    $at, $f16
	lwc1    $f18, 0x0020($t1)
	lwc1    $f4, 0x002C($sp)
	lui     $at, %hi(pl_move_80336A98)
	div.s   $f6, $f18, $f16
	lwc1    $f10, %lo(pl_move_80336A98)($at)
	lui     $at, %hi(pl_move_80336A9C)
	lwc1    $f16, %lo(pl_move_80336A9C)($at)
	mul.s   $f8, $f6, $f4
	nop
	mul.s   $f18, $f8, $f10
	add.s   $f6, $f18, $f16
	swc1    $f6, 0x0044($sp)
	b       151$
	nop
151$:
	lw      $t2, 0x0048($sp)
	lwc1    $f4, 0x0058($t2)
	lwc1    $f10, 0x005C($t2)
	mul.s   $f8, $f4, $f4
	nop
	mul.s   $f18, $f10, $f10
	jal     sqrtf
	add.s   $f12, $f8, $f18
	swc1    $f0, 0x003C($sp)
	lw      $t3, 0x0048($sp)
	li      $at, 0x42000000
	mtc1    $at, $f6
	lwc1    $f16, 0x0020($t3)
	lwc1    $f10, 0x005C($t3)
	lwc1    $f18, 0x0028($sp)
	div.s   $f4, $f16, $f6
	lui     $at, %hi(pl_move_80336AA0)
	lwc1    $f6, %lo(pl_move_80336AA0)($at)
	mul.s   $f8, $f10, $f4
	lwc1    $f4, 0x0058($t3)
	mul.s   $f16, $f8, $f18
	nop
	mul.s   $f10, $f16, $f6
	add.s   $f8, $f4, $f10
	swc1    $f8, 0x0058($t3)
	lw      $t4, 0x0048($sp)
	li      $at, 0x42000000
	mtc1    $at, $f16
	lwc1    $f18, 0x0020($t4)
	lwc1    $f4, 0x0058($t4)
	lwc1    $f8, 0x0028($sp)
	div.s   $f6, $f18, $f16
	lui     $at, %hi(pl_move_80336AA4)
	lwc1    $f16, %lo(pl_move_80336AA4)($at)
	mul.s   $f10, $f4, $f6
	lwc1    $f6, 0x005C($t4)
	mul.s   $f18, $f10, $f8
	nop
	mul.s   $f4, $f18, $f16
	sub.s   $f10, $f6, $f4
	swc1    $f10, 0x005C($t4)
	lw      $t5, 0x0048($sp)
	lwc1    $f8, 0x0058($t5)
	lwc1    $f16, 0x005C($t5)
	mul.s   $f18, $f8, $f8
	nop
	mul.s   $f6, $f16, $f16
	jal     sqrtf
	add.s   $f12, $f18, $f6
	swc1    $f0, 0x0038($sp)
	lwc1    $f4, 0x003C($sp)
	mtc1    $0, $f10
	nop
	c.lt.s  $f10, $f4
	nop
	bc1f    229$
	nop
	lwc1    $f8, 0x0038($sp)
	mtc1    $0, $f16
	nop
	c.lt.s  $f16, $f8
	nop
	bc1f    229$
	nop
	lw      $t6, 0x0048($sp)
	lwc1    $f6, 0x003C($sp)
	lwc1    $f10, 0x0038($sp)
	lwc1    $f18, 0x0058($t6)
	mul.s   $f4, $f18, $f6
	div.s   $f8, $f4, $f10
	swc1    $f8, 0x0058($t6)
	lw      $t7, 0x0048($sp)
	lwc1    $f18, 0x003C($sp)
	lwc1    $f4, 0x0038($sp)
	lwc1    $f16, 0x005C($t7)
	mul.s   $f6, $f16, $f18
	div.s   $f10, $f6, $f4
	swc1    $f10, 0x005C($t7)
229$:
	lw      $a0, 0x0048($sp)
	lw      $a1, 0x0040($sp)
	jal     pl_move_8026440C
	lw      $a2, 0x0044($sp)
	jal     player_80251CFC
	lw      $a0, 0x0048($sp)
	bnez    $v0, 252$
	nop
	lw      $t8, 0x0048($sp)
	lwc1    $f18, 0x004C($sp)
	lwc1    $f8, 0x0054($t8)
	mul.s   $f16, $f8, $f8
	nop
	mul.s   $f6, $f18, $f18
	c.lt.s  $f16, $f6
	nop
	bc1f    252$
	nop
	lw      $a0, 0x0048($sp)
	jal     player_80251708
	li      $a1, 0x0000
	li      $t9, 0x0001
	sw      $t9, 0x0034($sp)
252$:
	b       256$
	lw      $v0, 0x0034($sp)
	b       256$
	nop
256$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0048
	jr      $ra
	nop

pl_move_80264B54:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0038($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0038($sp)
	lw      $t7, 0x0068($t6)
	sw      $t7, 0x0030($sp)
	lw      $t8, 0x0030($sp)
	lwc1    $f4, 0x001C($t8)
	lwc1    $f8, 0x0024($t8)
	mul.s   $f6, $f4, $f4
	nop
	mul.s   $f10, $f8, $f8
	jal     sqrtf
	add.s   $f12, $f6, $f10
	swc1    $f0, 0x002C($sp)
	lw      $t9, 0x0030($sp)
	lwc1    $f16, 0x0020($t9)
	swc1    $f16, 0x0028($sp)
	lw      $t0, 0x0038($sp)
	lh      $t1, 0x0074($t0)
	lh      $t2, 0x002E($t0)
	subu    $t3, $t1, $t2
	sh      $t3, 0x0026($sp)
	jal     player_80251CFC
	lw      $a0, 0x0038($sp)
	beqz    $v0, 96$
	nop
	sh      $0, 0x0024($sp)
	lw      $t4, 0x0038($sp)
	li.u    $at, 0x00020464
	li.l    $at, 0x00020464
	lw      $t5, 0x000C($t4)
	beq     $t5, $at, 42$
	nop
	li.u    $at, 0x00020465
	li.l    $at, 0x00020465
	beq     $t5, $at, 42$
	nop
	jal     player_8025177C
	lw      $a0, 0x0038($sp)
	sh      $v0, 0x0024($sp)
42$:
	lh      $s0, 0x0024($sp)
	li      $at, 0x0013
	beq     $s0, $at, 54$
	nop
	li      $at, 0x0014
	beq     $s0, $at, 59$
	nop
	li      $at, 0x0015
	beq     $s0, $at, 69$
	nop
	b       64$
	nop
54$:
	lui     $at, %hi(pl_move_80336AA8)
	lwc1    $f18, %lo(pl_move_80336AA8)($at)
	swc1    $f18, 0x0034($sp)
	b       74$
	nop
59$:
	lui     $at, %hi(pl_move_80336AAC)
	lwc1    $f4, %lo(pl_move_80336AAC)($at)
	swc1    $f4, 0x0034($sp)
	b       74$
	nop
64$:
	lui     $at, %hi(pl_move_80336AB0)
	lwc1    $f8, %lo(pl_move_80336AB0)($at)
	swc1    $f8, 0x0034($sp)
	b       74$
	nop
69$:
	mtc1    $0, $f6
	nop
	swc1    $f6, 0x0034($sp)
	b       74$
	nop
74$:
	lh      $t6, 0x0026($sp)
	slti    $at, $t6, -0x3FFF
	bnez    $at, 89$
	nop
	slti    $at, $t6, 0x4000
	beqz    $at, 89$
	nop
	lwc1    $f10, 0x0034($sp)
	lwc1    $f16, 0x002C($sp)
	lw      $t7, 0x0038($sp)
	mul.s   $f18, $f10, $f16
	lwc1    $f4, 0x0054($t7)
	add.s   $f8, $f4, $f18
	b       96$
	swc1    $f8, 0x0054($t7)
89$:
	lwc1    $f6, 0x0034($sp)
	lwc1    $f10, 0x002C($sp)
	lw      $t8, 0x0038($sp)
	mul.s   $f16, $f6, $f10
	lwc1    $f4, 0x0054($t8)
	sub.s   $f18, $f4, $f16
	swc1    $f18, 0x0054($t8)
96$:
	lw      $t9, 0x0038($sp)
	lh      $t0, 0x002E($t9)
	sh      $t0, 0x0038($t9)
	lw      $t1, 0x0038($sp)
	lui     $at, %hi(math_sin)
	lhu     $t2, 0x002E($t1)
	lwc1    $f6, 0x0054($t1)
	sra     $t3, $t2, 4
	sll     $t4, $t3, 2
	addu    $at, $at, $t4
	lwc1    $f8, %lo(math_sin)($at)
	mul.s   $f10, $f8, $f6
	swc1    $f10, 0x0058($t1)
	lw      $t5, 0x0038($sp)
	lui     $at, %hi(math_cos)
	lhu     $t6, 0x002E($t5)
	lwc1    $f16, 0x0054($t5)
	sra     $t7, $t6, 4
	sll     $t8, $t7, 2
	addu    $at, $at, $t8
	lwc1    $f4, %lo(math_cos)($at)
	mul.s   $f18, $f4, $f16
	swc1    $f18, 0x005C($t5)
	lw      $t0, 0x0038($sp)
	lwc1    $f8, 0x0058($t0)
	swc1    $f8, 0x0048($t0)
	mtc1    $0, $f6
	lw      $t9, 0x0038($sp)
	swc1    $f6, 0x004C($t9)
	lw      $t2, 0x0038($sp)
	lwc1    $f10, 0x005C($t2)
	swc1    $f10, 0x0050($t2)
	jal     physics_8025570C
	lw      $a0, 0x0038($sp)
	jal     physics_8025580C
	lw      $a0, 0x0038($sp)
	b       134$
	nop
134$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

pl_move_80264D80:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	sw      $0, 0x001C($sp)
	jal     pl_move_80264B54
	lw      $a0, 0x0020($sp)
	jal     player_80251CFC
	lw      $a0, 0x0020($sp)
	bnez    $v0, 30$
	nop
	lw      $t6, 0x0020($sp)
	lwc1    $f6, 0x0024($sp)
	lwc1    $f4, 0x0054($t6)
	mul.s   $f8, $f4, $f6
	swc1    $f8, 0x0054($t6)
	lw      $t7, 0x0020($sp)
	li      $at, 0x3F800000
	mtc1    $at, $f18
	lwc1    $f10, 0x0054($t7)
	mul.s   $f16, $f10, $f10
	c.lt.s  $f16, $f18
	nop
	bc1f    30$
	nop
	lw      $a0, 0x0020($sp)
	jal     player_80251708
	li      $a1, 0x0000
	li      $t8, 0x0001
	sw      $t8, 0x001C($sp)
30$:
	b       34$
	lw      $v0, 0x001C($sp)
	b       34$
	nop
34$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

pl_move_80264E18:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lw      $t6, 0x0020($sp)
	lh      $t7, 0x0076($t6)
	lwc1    $f4, 0x0070($t6)
	mtc1    $t7, $f6
	nop
	cvt.s.w $f8, $f6
	c.lt.s  $f4, $f8
	nop
	bc1f    30$
	nop
	lw      $t8, 0x0020($sp)
	lh      $t9, 0x0076($t8)
	mtc1    $t9, $f10
	nop
	cvt.s.w $f16, $f10
	swc1    $f16, 0x0070($t8)
	lw      $t1, 0x0020($sp)
	la.u    $t0, physics_8032DAF8
	la.l    $t0, physics_8032DAF8
	sw      $t0, 0x0068($t1)
	lw      $t2, 0x0020($sp)
	lh      $t3, 0x0076($t2)
	lw      $t4, 0x0068($t2)
	mtc1    $t3, $f18
	nop
	cvt.s.w $f6, $f18
	swc1    $f6, 0x0028($t4)
30$:
	lw      $t5, 0x0020($sp)
	lw      $t6, 0x0068($t5)
	beqz    $t6, 42$
	nop
	lh      $t7, 0x0000($t6)
	li      $at, 0x0009
	bne     $t7, $at, 42$
	nop
	li      $at, 0x42400000
	mtc1    $at, $f4
	b       46$
	swc1    $f4, 0x001C($sp)
42$:
	li      $at, 0x42800000
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x001C($sp)
46$:
	lw      $t9, 0x0020($sp)
	li      $at, 0x40000000
	mtc1    $at, $f16
	lwc1    $f10, 0x0020($t9)
	mul.s   $f18, $f10, $f16
	swc1    $f18, 0x0018($sp)
	lwc1    $f6, 0x0018($sp)
	lwc1    $f4, 0x001C($sp)
	c.lt.s  $f4, $f6
	nop
	bc1f    60$
	nop
	lwc1    $f8, 0x001C($sp)
	swc1    $f8, 0x0018($sp)
60$:
	li      $at, 0x41C00000
	mtc1    $at, $f16
	lwc1    $f10, 0x0018($sp)
	c.lt.s  $f10, $f16
	nop
	bc1f    71$
	nop
	li      $at, 0x41C00000
	mtc1    $at, $f18
	nop
	swc1    $f18, 0x0018($sp)
71$:
	lw      $t8, 0x0020($sp)
	mtc1    $0, $f4
	lwc1    $f6, 0x0054($t8)
	c.le.s  $f6, $f4
	nop
	bc1f    85$
	nop
	lw      $t0, 0x0020($sp)
	lui     $at, %hi(pl_move_80336AB4)
	lwc1    $f10, %lo(pl_move_80336AB4)($at)
	lwc1    $f8, 0x0054($t0)
	add.s   $f16, $f8, $f10
	b       118$
	swc1    $f16, 0x0054($t0)
85$:
	lw      $t1, 0x0020($sp)
	lwc1    $f6, 0x0018($sp)
	lwc1    $f18, 0x0054($t1)
	c.le.s  $f18, $f6
	nop
	bc1f    103$
	nop
	lw      $t3, 0x0020($sp)
	li      $at, 0x42680000
	mtc1    $at, $f8
	lwc1    $f4, 0x0054($t3)
	lui     $at, %hi(pl_move_80336AB8)
	lwc1    $f16, %lo(pl_move_80336AB8)($at)
	div.s   $f10, $f4, $f8
	sub.s   $f18, $f16, $f10
	add.s   $f6, $f4, $f18
	b       118$
	swc1    $f6, 0x0054($t3)
103$:
	lw      $t2, 0x0020($sp)
	lui     $at, %hi(pl_move_80336ABC)
	lwc1    $f16, %lo(pl_move_80336ABC)($at)
	lw      $t4, 0x0068($t2)
	lwc1    $f8, 0x0020($t4)
	c.le.s  $f16, $f8
	nop
	bc1f    118$
	nop
	lw      $t5, 0x0020($sp)
	li      $at, 0x3F800000
	mtc1    $at, $f4
	lwc1    $f10, 0x0054($t5)
	sub.s   $f18, $f10, $f4
	swc1    $f18, 0x0054($t5)
118$:
	lw      $t6, 0x0020($sp)
	li      $at, 0x42800000
	mtc1    $at, $f8
	lwc1    $f6, 0x0054($t6)
	c.lt.s  $f8, $f6
	nop
	bc1f    130$
	nop
	li      $at, 0x42800000
	mtc1    $at, $f16
	lw      $t7, 0x0020($sp)
	swc1    $f16, 0x0054($t7)
130$:
	lw      $t9, 0x0020($sp)
	move    $a1, $0
	li      $a2, 0x0800
	lh      $t8, 0x0024($t9)
	lh      $t0, 0x002E($t9)
	li      $a3, 0x0800
	subu    $a0, $t8, $t0
	sll     $t1, $a0, 16
	move    $a0, $t1
	sra     $t3, $a0, 16
	jal     convergei
	move    $a0, $t3
	lw      $t2, 0x0020($sp)
	lh      $t4, 0x0024($t2)
	subu    $t5, $t4, $v0
	sh      $t5, 0x002E($t2)
	jal     pl_move_80264B54
	lw      $a0, 0x0020($sp)
	b       150$
	nop
150$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

pl_move_80265080:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x0024($sp)
	sw      $a0, 0x0038($sp)
	sw      $a1, 0x003C($sp)
	sw      $s0, 0x0020($sp)
	sdc1    $f20, 0x0018($sp)
	sw      $0, 0x0030($sp)
	jal     player_8025177C
	lw      $a0, 0x0038($sp)
	move    $s0, $v0
	li      $at, 0x0013
	beq     $s0, $at, 21$
	nop
	li      $at, 0x0014
	beq     $s0, $at, 28$
	nop
	li      $at, 0x0015
	beq     $s0, $at, 42$
	nop
	b       35$
	nop
21$:
	lui     $at, %hi(pl_move_80336AC0)
	lwc1    $f6, %lo(pl_move_80336AC0)($at)
	lwc1    $f4, 0x003C($sp)
	mul.s   $f8, $f4, $f6
	swc1    $f8, 0x0034($sp)
	b       49$
	nop
28$:
	lui     $at, %hi(pl_move_80336AC4)
	lwc1    $f16, %lo(pl_move_80336AC4)($at)
	lwc1    $f10, 0x003C($sp)
	mul.s   $f18, $f10, $f16
	swc1    $f18, 0x0034($sp)
	b       49$
	nop
35$:
	li      $at, 0x40000000
	mtc1    $at, $f6
	lwc1    $f4, 0x003C($sp)
	mul.s   $f8, $f4, $f6
	swc1    $f8, 0x0034($sp)
	b       49$
	nop
42$:
	li      $at, 0x40400000
	mtc1    $at, $f16
	lwc1    $f10, 0x003C($sp)
	mul.s   $f18, $f10, $f16
	swc1    $f18, 0x0034($sp)
	b       49$
	nop
49$:
	lwc1    $f4, 0x0034($sp)
	lw      $t6, 0x0038($sp)
	mtc1    $0, $f14
	mfc1    $a2, $f4
	mfc1    $a3, $f4
	jal     convergef
	lwc1    $f12, 0x0054($t6)
	mtc1    $0, $f6
	mov.s   $f20, $f0
	lw      $t7, 0x0038($sp)
	c.eq.s  $f20, $f6
	swc1    $f20, 0x0054($t7)
	bc1f    65$
	nop
	li      $t8, 0x0001
	sw      $t8, 0x0030($sp)
65$:
	jal     pl_move_80264B54
	lw      $a0, 0x0038($sp)
	b       71$
	lw      $v0, 0x0030($sp)
	b       71$
	nop
71$:
	lw      $ra, 0x0024($sp)
	ldc1    $f20, 0x0018($sp)
	lw      $s0, 0x0020($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0038

pl_move_802651B0:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sdc1    $f20, 0x0010($sp)
	sw      $0, 0x0024($sp)
	lw      $t6, 0x0028($sp)
	mtc1    $0, $f14
	li      $a2, 0x3F800000
	li      $a3, 0x3F800000
	jal     convergef
	lwc1    $f12, 0x0054($t6)
	mtc1    $0, $f4
	mov.s   $f20, $f0
	lw      $t7, 0x0028($sp)
	c.eq.s  $f20, $f4
	swc1    $f20, 0x0054($t7)
	bc1f    20$
	nop
	li      $t8, 0x0001
	sw      $t8, 0x0024($sp)
20$:
	lw      $t9, 0x0028($sp)
	move    $a0, $t9
	jal     player_80251708
	lw      $a1, 0x0054($t9)
	jal     physics_8025570C
	lw      $a0, 0x0028($sp)
	jal     physics_8025580C
	lw      $a0, 0x0028($sp)
	b       32$
	lw      $v0, 0x0024($sp)
	b       32$
	nop
32$:
	lw      $ra, 0x001C($sp)
	ldc1    $f20, 0x0010($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_move_80265244:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lw      $t6, 0x0020($sp)
	lw      $t7, 0x0068($t6)
	beqz    $t7, 15$
	nop
	lh      $t8, 0x0000($t7)
	li      $at, 0x0009
	bne     $t8, $at, 15$
	nop
	li      $at, 0x41C00000
	mtc1    $at, $f4
	b       19$
	swc1    $f4, 0x001C($sp)
15$:
	li      $at, 0x42000000
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x001C($sp)
19$:
	lw      $t9, 0x0020($sp)
	lwc1    $f10, 0x001C($sp)
	lwc1    $f8, 0x0020($t9)
	c.lt.s  $f8, $f10
	nop
	bc1f    28$
	nop
	b       30$
	swc1    $f8, 0x0018($sp)
28$:
	lwc1    $f16, 0x001C($sp)
	swc1    $f16, 0x0018($sp)
30$:
	lw      $t0, 0x0020($sp)
	li      $at, 0x41200000
	mtc1    $at, $f4
	lwc1    $f18, 0x00C0($t0)
	c.lt.s  $f4, $f18
	nop
	bc1f    50$
	nop
	lw      $t1, 0x0020($sp)
	li      $at, 0x40190000
	mtc1    $at, $f7
	lwc1    $f10, 0x00C0($t1)
	mtc1    $0, $f6
	lwc1    $f18, 0x0018($sp)
	cvt.d.s $f8, $f10
	div.d   $f16, $f6, $f8
	cvt.d.s $f4, $f18
	mul.d   $f10, $f4, $f16
	cvt.s.d $f6, $f10
	swc1    $f6, 0x0018($sp)
50$:
	lw      $t2, 0x0020($sp)
	mtc1    $0, $f18
	lwc1    $f8, 0x0054($t2)
	c.le.s  $f8, $f18
	nop
	bc1f    64$
	nop
	lw      $t3, 0x0020($sp)
	lui     $at, %hi(pl_move_80336AC8)
	lwc1    $f16, %lo(pl_move_80336AC8)($at)
	lwc1    $f4, 0x0054($t3)
	add.s   $f10, $f4, $f16
	b       97$
	swc1    $f10, 0x0054($t3)
64$:
	lw      $t4, 0x0020($sp)
	lwc1    $f8, 0x0018($sp)
	lwc1    $f6, 0x0054($t4)
	c.le.s  $f6, $f8
	nop
	bc1f    82$
	nop
	lw      $t5, 0x0020($sp)
	li      $at, 0x422C0000
	mtc1    $at, $f4
	lwc1    $f18, 0x0054($t5)
	lui     $at, %hi(pl_move_80336ACC)
	lwc1    $f10, %lo(pl_move_80336ACC)($at)
	div.s   $f16, $f18, $f4
	sub.s   $f6, $f10, $f16
	add.s   $f8, $f18, $f6
	b       97$
	swc1    $f8, 0x0054($t5)
82$:
	lw      $t6, 0x0020($sp)
	lui     $at, %hi(pl_move_80336AD0)
	lwc1    $f10, %lo(pl_move_80336AD0)($at)
	lw      $t7, 0x0068($t6)
	lwc1    $f4, 0x0020($t7)
	c.le.s  $f10, $f4
	nop
	bc1f    97$
	nop
	lw      $t8, 0x0020($sp)
	li      $at, 0x3F800000
	mtc1    $at, $f18
	lwc1    $f16, 0x0054($t8)
	sub.s   $f6, $f16, $f18
	swc1    $f6, 0x0054($t8)
97$:
	lw      $t9, 0x0020($sp)
	li      $at, 0x42400000
	mtc1    $at, $f4
	lwc1    $f8, 0x0054($t9)
	c.lt.s  $f4, $f8
	nop
	bc1f    109$
	nop
	li      $at, 0x42400000
	mtc1    $at, $f10
	lw      $t0, 0x0020($sp)
	swc1    $f10, 0x0054($t0)
109$:
	lw      $t1, 0x0020($sp)
	move    $a1, $0
	li      $a2, 0x0800
	lh      $t2, 0x0024($t1)
	lh      $t3, 0x002E($t1)
	li      $a3, 0x0800
	subu    $a0, $t2, $t3
	sll     $t4, $a0, 16
	move    $a0, $t4
	sra     $t5, $a0, 16
	jal     convergei
	move    $a0, $t5
	lw      $t6, 0x0020($sp)
	lh      $t7, 0x0024($t6)
	subu    $t8, $t7, $v0
	sh      $t8, 0x002E($t6)
	jal     pl_move_80264B54
	lw      $a0, 0x0020($sp)
	b       129$
	nop
129$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

pl_move_80265458:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lw      $t6, 0x0020($sp)
	lhu     $t7, 0x0002($t6)
	andi    $t8, $t7, 0x0008
	beqz    $t8, 39$
	nop
	lw      $t9, 0x0020($sp)
	lw      $t0, 0x0090($t9)
	lhu     $t1, 0x0002($t0)
	andi    $t2, $t1, 0x0007
	xori    $t3, $t2, 0x0006
	sltiu   $t3, $t3, 0x0001
	sw      $t3, 0x001C($sp)
	lw      $t4, 0x0020($sp)
	li      $at, 0xBF800000
	mtc1    $at, $f6
	lwc1    $f4, 0x0054($t4)
	move    $t5, $0
	c.le.s  $f4, $f6
	nop
	bc1f    25$
	nop
	li      $t5, 0x0001
25$:
	sw      $t5, 0x0018($sp)
	lw      $t6, 0x001C($sp)
	bnez    $t6, 37$
	nop
	lw      $t7, 0x0018($sp)
	bnez    $t7, 37$
	nop
	lw      $a0, 0x0020($sp)
	jal     player_80251B54
	move    $a1, $0
	beqz    $v0, 39$
	nop
37$:
	b       43$
	li      $v0, 0x0001
39$:
	b       43$
	move    $v0, $0
	b       43$
	nop
43$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

pl_move_80265514:
	addiu   $sp, $sp, -0x0008
	lh      $t6, 0x0024($a0)
	lh      $t7, 0x002E($a0)
	subu    $t8, $t6, $t7
	sh      $t8, 0x0006($sp)
	lh      $t9, 0x0006($sp)
	slti    $v0, $t9, -0x471C
	bnez    $v0, 11$
	nop
	li      $at, 0x471C
	slt     $v0, $at, $t9
11$:
	b       15$
	nop
	b       15$
	nop
15$:
	jr      $ra
	addiu   $sp, $sp, 0x0008

pl_move_80265558:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lw      $t6, 0x0020($sp)
	lhu     $t7, 0x0002($t6)
	andi    $t8, $t7, 0x2000
	beqz    $t8, 42$
	nop
	lw      $t9, 0x0020($sp)
	li      $at, 0x41E80000
	mtc1    $at, $f6
	lwc1    $f4, 0x0054($t9)
	c.le.s  $f6, $f4
	nop
	bc1f    35$
	nop
	lw      $t0, 0x009C($t9)
	li      $at, 0x42400000
	mtc1    $at, $f10
	lwc1    $f8, 0x000C($t0)
	c.lt.s  $f10, $f8
	nop
	bc1f    35$
	nop
	li      $at, 0x41A00000
	mtc1    $at, $f16
	lw      $t1, 0x0020($sp)
	swc1    $f16, 0x004C($t1)
	li.u    $a1, 0x0188088A
	li.l    $a1, 0x0188088A
	lw      $a0, 0x0020($sp)
	jal     pl_set_state
	li      $a2, 0x0001
	b       46$
	nop
35$:
	li.u    $a1, 0x00800457
	li.l    $a1, 0x00800457
	lw      $a0, 0x0020($sp)
	jal     pl_set_state
	move    $a2, $0
	b       46$
	nop
42$:
	b       46$
	move    $v0, $0
	b       46$
	nop
46$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

pl_move_80265620:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	jal     collision_8024C6C0
	lw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	li      $at, 0x0001
	lhu     $t7, 0x0018($t6)
	bne     $t7, $at, 20$
	nop
	lw      $t8, 0x0018($sp)
	lw      $t9, 0x001C($t8)
	sh      $t9, 0x002E($t8)
	li.u    $a1, 0x0C400209
	li.l    $a1, 0x0C400209
	lw      $a0, 0x0018($sp)
	jal     pl_set_state
	move    $a2, $0
	b       52$
	nop
20$:
	lw      $t0, 0x0018($sp)
	li      $at, 0x41800000
	mtc1    $at, $f6
	lwc1    $f4, 0x0054($t0)
	c.le.s  $f6, $f4
	nop
	bc1f    43$
	nop
	lw      $t1, 0x0068($t0)
	lui     $at, %hi(pl_move_80336AD4)
	lwc1    $f10, %lo(pl_move_80336AD4)($at)
	lwc1    $f8, 0x0020($t1)
	c.le.s  $f10, $f8
	nop
	bc1f    43$
	nop
	li.u    $a1, 0x04000445
	li.l    $a1, 0x04000445
	lw      $a0, 0x0018($sp)
	jal     pl_set_state
	move    $a2, $0
	b       52$
	nop
43$:
	li.u    $a1, 0x0400044A
	li.l    $a1, 0x0400044A
	lw      $a0, 0x0018($sp)
	jal     pl_set_state
	move    $a2, $0
	b       52$
	nop
	b       52$
	nop
52$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_move_80265700:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0038($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0038($sp)
	lw      $t7, 0x0088($t6)
	sw      $t7, 0x0030($sp)
	li      $t8, 0x0001
	sw      $t8, 0x002C($sp)
	sh      $0, 0x002A($sp)
	lw      $t9, 0x0038($sp)
	lwc1    $f4, 0x0020($t9)
	lwc1    $f6, 0x0054($t9)
	c.lt.s  $f6, $f4
	nop
	bc1f    19$
	nop
	b       22$
	swc1    $f4, 0x0024($sp)
19$:
	lw      $t0, 0x0038($sp)
	lwc1    $f8, 0x0054($t0)
	swc1    $f8, 0x0024($sp)
22$:
	li      $at, 0x40800000
	mtc1    $at, $f16
	lwc1    $f10, 0x0024($sp)
	c.lt.s  $f10, $f16
	nop
	bc1f    33$
	nop
	li      $at, 0x40800000
	mtc1    $at, $f18
	nop
	swc1    $f18, 0x0024($sp)
33$:
	lw      $t1, 0x0038($sp)
	li      $at, 0x42480000
	mtc1    $at, $f4
	lwc1    $f6, 0x00C0($t1)
	c.lt.s  $f4, $f6
	nop
	bc1f    63$
	nop
	li      $at, 0x40800000
	mtc1    $at, $f10
	lwc1    $f8, 0x0024($sp)
	li      $at, 0x47800000
	mtc1    $at, $f18
	div.s   $f16, $f8, $f10
	mul.s   $f6, $f16, $f18
	trunc.w.s $f4, $f6
	mfc1    $t3, $f4
	nop
	sw      $t3, 0x0034($sp)
	lw      $a0, 0x0038($sp)
	li      $a1, 0x0078
	jal     player_80250B04
	lw      $a2, 0x0034($sp)
	lw      $a0, 0x0038($sp)
	li      $a1, 0x0013
	jal     pl_move_80263EE4
	li      $a2, 0x005D
	lw      $t4, 0x0038($sp)
	b       243$
	sh      $0, 0x001A($t4)
63$:
	lw      $t5, 0x002C($sp)
	beqz    $t5, 243$
	nop
66$:
	lw      $t6, 0x0038($sp)
	lhu     $s0, 0x001A($t6)
	beqz    $s0, 81$
	nop
	li      $at, 0x0001
	beq     $s0, $at, 126$
	nop
	li      $at, 0x0002
	beq     $s0, $at, 160$
	nop
	li      $at, 0x0003
	beq     $s0, $at, 204$
	nop
	b       240$
	nop
81$:
	li      $at, 0x41000000
	mtc1    $at, $f10
	lwc1    $f8, 0x0024($sp)
	c.lt.s  $f10, $f8
	nop
	bc1f    92$
	nop
	lw      $t8, 0x0038($sp)
	li      $t7, 0x0002
	b       124$
	sh      $t7, 0x001A($t8)
92$:
	li      $at, 0x40800000
	mtc1    $at, $f18
	lwc1    $f16, 0x0024($sp)
	li      $at, 0x47800000
	mtc1    $at, $f4
	div.s   $f6, $f16, $f18
	mul.s   $f8, $f6, $f4
	trunc.w.s $f10, $f8
	mfc1    $t0, $f10
	nop
	slti    $at, $t0, 0x1000
	beqz    $at, 107$
	sw      $t0, 0x0034($sp)
	li      $t1, 0x1000
	sw      $t1, 0x0034($sp)
107$:
	lw      $a0, 0x0038($sp)
	li      $a1, 0x00CA
	jal     player_80250B04
	lw      $a2, 0x0034($sp)
	lw      $a0, 0x0038($sp)
	li      $a1, 0x0007
	jal     pl_move_80263EE4
	li      $a2, 0x0016
	lw      $a0, 0x0038($sp)
	jal     player_80250D38
	li      $a1, 0x0017
	beqz    $v0, 123$
	nop
	lw      $t3, 0x0038($sp)
	li      $t2, 0x0002
	sh      $t2, 0x001A($t3)
123$:
	sw      $0, 0x002C($sp)
124$:
	b       240$
	nop
126$:
	li      $at, 0x41000000
	mtc1    $at, $f18
	lwc1    $f16, 0x0024($sp)
	c.lt.s  $f18, $f16
	nop
	bc1f    137$
	nop
	lw      $t5, 0x0038($sp)
	li      $t4, 0x0002
	b       158$
	sh      $t4, 0x001A($t5)
137$:
	li      $at, 0x47800000
	mtc1    $at, $f4
	lwc1    $f6, 0x0024($sp)
	mul.s   $f8, $f6, $f4
	trunc.w.s $f10, $f8
	mfc1    $t7, $f10
	nop
	slti    $at, $t7, 0x1000
	beqz    $at, 149$
	sw      $t7, 0x0034($sp)
	li      $t8, 0x1000
	sw      $t8, 0x0034($sp)
149$:
	lw      $a0, 0x0038($sp)
	li      $a1, 0x0092
	jal     player_80250B04
	lw      $a2, 0x0034($sp)
	lw      $a0, 0x0038($sp)
	li      $a1, 0x000E
	jal     pl_move_80263EE4
	li      $a2, 0x0048
	sw      $0, 0x002C($sp)
158$:
	b       240$
	nop
160$:
	li      $at, 0x40A00000
	mtc1    $at, $f18
	lwc1    $f16, 0x0024($sp)
	c.lt.s  $f16, $f18
	nop
	bc1f    171$
	nop
	lw      $t0, 0x0038($sp)
	li      $t9, 0x0001
	b       202$
	sh      $t9, 0x001A($t0)
171$:
	li      $at, 0x41B00000
	mtc1    $at, $f4
	lwc1    $f6, 0x0024($sp)
	c.lt.s  $f4, $f6
	nop
	bc1f    182$
	nop
	lw      $t2, 0x0038($sp)
	li      $t1, 0x0003
	b       202$
	sh      $t1, 0x001A($t2)
182$:
	li      $at, 0x40800000
	mtc1    $at, $f10
	lwc1    $f8, 0x0024($sp)
	li      $at, 0x47800000
	mtc1    $at, $f18
	div.s   $f16, $f8, $f10
	mul.s   $f6, $f16, $f18
	trunc.w.s $f4, $f6
	mfc1    $t4, $f4
	nop
	sw      $t4, 0x0034($sp)
	lw      $a0, 0x0038($sp)
	li      $a1, 0x0048
	jal     player_80250B04
	lw      $a2, 0x0034($sp)
	lw      $a0, 0x0038($sp)
	li      $a1, 0x000A
	jal     pl_move_80263EE4
	li      $a2, 0x0031
	sw      $0, 0x002C($sp)
202$:
	b       240$
	nop
204$:
	li      $at, 0x41900000
	mtc1    $at, $f10
	lwc1    $f8, 0x0024($sp)
	c.lt.s  $f8, $f10
	nop
	bc1f    215$
	nop
	lw      $t6, 0x0038($sp)
	li      $t5, 0x0002
	b       238$
	sh      $t5, 0x001A($t6)
215$:
	li      $at, 0x40800000
	mtc1    $at, $f18
	lwc1    $f16, 0x0024($sp)
	li      $at, 0x47800000
	mtc1    $at, $f4
	div.s   $f6, $f16, $f18
	mul.s   $f8, $f6, $f4
	trunc.w.s $f10, $f8
	mfc1    $t8, $f10
	nop
	sw      $t8, 0x0034($sp)
	lw      $a0, 0x0038($sp)
	li      $a1, 0x0072
	jal     player_80250B04
	lw      $a2, 0x0034($sp)
	lw      $a0, 0x0038($sp)
	li      $a1, 0x0009
	jal     pl_move_80263EE4
	li      $a2, 0x002D
	jal     pl_move_80263E60
	lw      $a0, 0x0038($sp)
	sh      $v0, 0x002A($sp)
	sw      $0, 0x002C($sp)
238$:
	b       240$
	nop
240$:
	lw      $t9, 0x002C($sp)
	bnez    $t9, 66$
	nop
243$:
	lw      $t0, 0x0030($sp)
	lh      $a1, 0x002A($sp)
	li      $a2, 0x0800
	li      $a3, 0x0800
	jal     convergei
	lw      $a0, 0x0110($t0)
	lw      $t3, 0x0030($sp)
	sll     $t1, $v0, 16
	sra     $t2, $t1, 16
	sw      $t2, 0x0110($t3)
	lw      $t4, 0x0030($sp)
	lw      $t5, 0x0110($t4)
	sh      $t5, 0x001A($t4)
	b       258$
	nop
258$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

pl_move_80265B1C:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0030($sp)
	sw      $s0, 0x0018($sp)
	li      $t6, 0x0001
	sw      $t6, 0x0028($sp)
	lw      $t7, 0x0030($sp)
	lwc1    $f4, 0x0020($t7)
	lwc1    $f6, 0x0054($t7)
	c.lt.s  $f6, $f4
	nop
	bc1f    15$
	nop
	b       18$
	swc1    $f4, 0x0024($sp)
15$:
	lw      $t8, 0x0030($sp)
	lwc1    $f8, 0x0054($t8)
	swc1    $f8, 0x0024($sp)
18$:
	li      $at, 0x40000000
	mtc1    $at, $f16
	lwc1    $f10, 0x0024($sp)
	c.lt.s  $f10, $f16
	nop
	bc1f    29$
	nop
	li      $at, 0x40000000
	mtc1    $at, $f18
	nop
	swc1    $f18, 0x0024($sp)
29$:
	lw      $t9, 0x0028($sp)
	beqz    $t9, 150$
	nop
32$:
	lw      $t0, 0x0030($sp)
	lhu     $s0, 0x001A($t0)
	beqz    $s0, 44$
	nop
	li      $at, 0x0001
	beq     $s0, $at, 74$
	nop
	li      $at, 0x0002
	beq     $s0, $at, 114$
	nop
	b       147$
	nop
44$:
	li      $at, 0x40C00000
	mtc1    $at, $f4
	lwc1    $f6, 0x0024($sp)
	c.lt.s  $f4, $f6
	nop
	bc1f    55$
	nop
	lw      $t2, 0x0030($sp)
	li      $t1, 0x0001
	b       72$
	sh      $t1, 0x001A($t2)
55$:
	li      $at, 0x47800000
	mtc1    $at, $f10
	lwc1    $f8, 0x0024($sp)
	mul.s   $f16, $f8, $f10
	trunc.w.s $f18, $f16
	mfc1    $t4, $f18
	nop
	sw      $t4, 0x002C($sp)
	lw      $a0, 0x0030($sp)
	li      $a1, 0x0018
	jal     player_80250B04
	lw      $a2, 0x002C($sp)
	lw      $a0, 0x0030($sp)
	li      $a1, 0x000C
	jal     pl_move_80263EE4
	li      $a2, 0x003E
	sw      $0, 0x0028($sp)
72$:
	b       147$
	nop
74$:
	li      $at, 0x40400000
	mtc1    $at, $f4
	lwc1    $f6, 0x0024($sp)
	c.lt.s  $f6, $f4
	nop
	bc1f    84$
	nop
	lw      $t5, 0x0030($sp)
	b       112$
	sh      $0, 0x001A($t5)
84$:
	li      $at, 0x41300000
	mtc1    $at, $f10
	lwc1    $f8, 0x0024($sp)
	c.lt.s  $f10, $f8
	nop
	bc1f    95$
	nop
	lw      $t7, 0x0030($sp)
	li      $t6, 0x0002
	b       112$
	sh      $t6, 0x001A($t7)
95$:
	li      $at, 0x47800000
	mtc1    $at, $f18
	lwc1    $f16, 0x0024($sp)
	mul.s   $f6, $f16, $f18
	trunc.w.s $f4, $f6
	mfc1    $t9, $f4
	nop
	sw      $t9, 0x002C($sp)
	lw      $a0, 0x0030($sp)
	li      $a1, 0x0016
	jal     player_80250B04
	lw      $a2, 0x002C($sp)
	lw      $a0, 0x0030($sp)
	li      $a1, 0x000C
	jal     pl_move_80263EE4
	li      $a2, 0x003E
	sw      $0, 0x0028($sp)
112$:
	b       147$
	nop
114$:
	li      $at, 0x41000000
	mtc1    $at, $f10
	lwc1    $f8, 0x0024($sp)
	c.lt.s  $f8, $f10
	nop
	bc1f    125$
	nop
	lw      $t1, 0x0030($sp)
	li      $t0, 0x0001
	b       145$
	sh      $t0, 0x001A($t1)
125$:
	li      $at, 0x40000000
	mtc1    $at, $f18
	lwc1    $f16, 0x0024($sp)
	li      $at, 0x47800000
	mtc1    $at, $f4
	div.s   $f6, $f16, $f18
	mul.s   $f8, $f6, $f4
	trunc.w.s $f10, $f8
	mfc1    $t3, $f10
	nop
	sw      $t3, 0x002C($sp)
	lw      $a0, 0x0030($sp)
	li      $a1, 0x0017
	jal     player_80250B04
	lw      $a2, 0x002C($sp)
	lw      $a0, 0x0030($sp)
	li      $a1, 0x000A
	jal     pl_move_80263EE4
	li      $a2, 0x0031
	sw      $0, 0x0028($sp)
145$:
	b       147$
	nop
147$:
	lw      $t4, 0x0028($sp)
	bnez    $t4, 32$
	nop
150$:
	b       152$
	nop
152$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

pl_move_80265D90:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lw      $t6, 0x0020($sp)
	li      $at, 0x47800000
	mtc1    $at, $f6
	lwc1    $f4, 0x0020($t6)
	mul.s   $f8, $f4, $f6
	trunc.w.s $f10, $f8
	mfc1    $t8, $f10
	nop
	sw      $t8, 0x001C($sp)
	lw      $a0, 0x0020($sp)
	li      $a1, 0x00BB
	jal     player_80250B04
	lw      $a2, 0x001C($sp)
	lw      $a0, 0x0020($sp)
	li      $a1, 0x001A
	jal     pl_move_80263EE4
	li      $a2, 0x004F
	b       22$
	nop
22$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

pl_move_80265DF8:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0030($sp)
	sw      $a1, 0x0034($sp)
	lw      $t6, 0x0030($sp)
	lw      $t7, 0x0034($sp)
	lwc1    $f4, 0x003C($t6)
	lwc1    $f6, 0x0000($t7)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x0028($sp)
	lw      $t8, 0x0030($sp)
	lw      $t9, 0x0034($sp)
	lwc1    $f10, 0x0044($t8)
	lwc1    $f16, 0x0008($t9)
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x0024($sp)
	lwc1    $f4, 0x0028($sp)
	lwc1    $f8, 0x0024($sp)
	mul.s   $f6, $f4, $f4
	nop
	mul.s   $f10, $f8, $f8
	jal     sqrtf
	add.s   $f12, $f6, $f10
	swc1    $f0, 0x0020($sp)
	li      $at, 0x40000000
	mtc1    $at, $f18
	lwc1    $f16, 0x0020($sp)
	li      $at, 0x47800000
	mtc1    $at, $f8
	mul.s   $f4, $f16, $f18
	nop
	mul.s   $f6, $f4, $f8
	trunc.w.s $f10, $f6
	mfc1    $t1, $f10
	nop
	sw      $t1, 0x001C($sp)
	lw      $t2, 0x0030($sp)
	li      $at, 0x40C00000
	mtc1    $at, $f18
	lwc1    $f16, 0x0054($t2)
	c.lt.s  $f18, $f16
	nop
	bc1f    47$
	nop
	lw      $a0, 0x0030($sp)
	jal     player_80251708
	li      $a1, 0x40C00000
47$:
	lw      $t3, 0x0030($sp)
	lw      $t4, 0x0060($t3)
	beqz    $t4, 62$
	nop
	lw      $t5, 0x0030($sp)
	lw      $t6, 0x0060($t5)
	lwc1    $f12, 0x0024($t6)
	jal     ATAN2
	lwc1    $f14, 0x001C($t6)
	sh      $v0, 0x002E($sp)
	lw      $t8, 0x0030($sp)
	lh      $t7, 0x002E($sp)
	lh      $t9, 0x002E($t8)
	subu    $t0, $t7, $t9
	sh      $t0, 0x002C($sp)
62$:
	lw      $t1, 0x0030($sp)
	lw      $t2, 0x0060($t1)
	beqz    $t2, 73$
	nop
	lh      $t3, 0x002C($sp)
	slti    $at, $t3, -0x71C7
	bnez    $at, 73$
	nop
	slti    $at, $t3, 0x71C8
	bnez    $at, 87$
	nop
73$:
	lw      $t4, 0x0030($sp)
	li      $at, 0x80000000
	lw      $t5, 0x0004($t4)
	or      $t6, $t5, $at
	sw      $t6, 0x0004($t4)
	lw      $a0, 0x0030($sp)
	jal     pl_set_anime
	li      $a1, 0x006C
	lw      $a0, 0x0030($sp)
	li      $a1, 0x0006
	jal     pl_move_80263EE4
	li      $a2, 0x0012
	b       138$
	nop
87$:
	lh      $t8, 0x002C($sp)
	bgez    $t8, 96$
	nop
	lw      $a0, 0x0030($sp)
	li      $a1, 0x0080
	jal     player_80250B04
	lw      $a2, 0x001C($sp)
	b       100$
	nop
96$:
	lw      $a0, 0x0030($sp)
	li      $a1, 0x007F
	jal     player_80250B04
	lw      $a2, 0x001C($sp)
100$:
	lw      $t7, 0x0030($sp)
	lw      $t9, 0x0088($t7)
	lh      $t0, 0x0040($t9)
	slti    $at, $t0, 0x0014
	beqz    $at, 118$
	nop
	lw      $t1, 0x0030($sp)
	li.u    $at, 0x14000001
	li.l    $at, 0x14000001
	lw      $a0, 0x0014($t1)
	lw      $a1, 0x0088($t1)
	addu    $a0, $a0, $at
	jal     Na_SePlay
	addiu   $a1, $a1, 0x0054
	lw      $t2, 0x0030($sp)
	lw      $t3, 0x0008($t2)
	ori     $t5, $t3, 0x0001
	sw      $t5, 0x0008($t2)
118$:
	lw      $t4, 0x0030($sp)
	li      $t6, 0x0001
	sh      $t6, 0x0018($t4)
	lh      $t8, 0x002E($sp)
	lw      $t9, 0x0030($sp)
	li      $at, 0x8000
	addu    $t7, $t8, $at
	sw      $t7, 0x001C($t9)
	lw      $t3, 0x0030($sp)
	lh      $t0, 0x002E($sp)
	li      $at, 0x8000
	lw      $t5, 0x0088($t3)
	addu    $t1, $t0, $at
	sh      $t1, 0x001C($t5)
	lw      $a0, 0x0030($sp)
	jal     player_80252000
	li      $a1, 0x4000
	lw      $t2, 0x0030($sp)
	lw      $t6, 0x0088($t2)
	sh      $v0, 0x001E($t6)
138$:
	b       140$
	nop
140$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

pl_move_80266038:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	lw      $t6, 0x0028($sp)
	lw      $t7, 0x0098($t6)
	sw      $t7, 0x0024($sp)
	lw      $t8, 0x0028($sp)
	lw      $t9, 0x0088($t8)
	sw      $t9, 0x0020($sp)
	lw      $t0, 0x0028($sp)
	lw      $t1, 0x0088($t0)
	lh      $t2, 0x0038($t1)
	sh      $t2, 0x001E($sp)
	lh      $t3, 0x001E($sp)
	li      $at, 0x0048
	beq     $t3, $at, 21$
	nop
	li      $at, 0x0072
	bne     $t3, $at, 91$
	nop
21$:
	lw      $t4, 0x0028($sp)
	lh      $t6, 0x002E($sp)
	lh      $t5, 0x002E($t4)
	subu    $t7, $t5, $t6
	sh      $t7, 0x001C($sp)
	lh      $t8, 0x001C($sp)
	lw      $t9, 0x0028($sp)
	li      $at, 0x41400000
	mtc1    $t8, $f4
	lwc1    $f8, 0x0054($t9)
	mtc1    $at, $f16
	cvt.s.w $f6, $f4
	mul.s   $f10, $f6, $f8
	div.s   $f18, $f10, $f16
	trunc.w.s $f4, $f18
	mfc1    $t1, $f4
	nop
	sll     $t2, $t1, 16
	sra     $t3, $t2, 16
	subu    $t4, $0, $t3
	sh      $t4, 0x001A($sp)
	lw      $t5, 0x0028($sp)
	li      $at, 0x432A0000
	mtc1    $at, $f8
	lwc1    $f6, 0x0054($t5)
	mul.s   $f10, $f6, $f8
	trunc.w.s $f16, $f10
	mfc1    $t7, $f16
	nop
	sh      $t7, 0x0018($sp)
	lh      $t8, 0x001A($sp)
	slti    $at, $t8, 0x1556
	bnez    $at, 57$
	nop
	li      $t9, 0x1555
	sh      $t9, 0x001A($sp)
57$:
	lh      $t0, 0x001A($sp)
	slti    $at, $t0, -0x1555
	beqz    $at, 63$
	nop
	li      $t1, -0x1555
	sh      $t1, 0x001A($sp)
63$:
	lh      $t2, 0x0018($sp)
	slti    $at, $t2, 0x1556
	bnez    $at, 69$
	nop
	li      $t3, 0x1555
	sh      $t3, 0x0018($sp)
69$:
	lh      $t4, 0x0018($sp)
	bgez    $t4, 73$
	nop
	sh      $0, 0x0018($sp)
73$:
	lw      $t5, 0x0024($sp)
	lh      $a1, 0x001A($sp)
	li      $a2, 0x0400
	li      $a3, 0x0400
	jal     convergei
	lh      $a0, 0x0010($t5)
	lw      $t6, 0x0024($sp)
	sh      $v0, 0x0010($t6)
	lw      $t7, 0x0024($sp)
	lh      $a1, 0x0018($sp)
	li      $a2, 0x0400
	li      $a3, 0x0400
	jal     convergei
	lh      $a0, 0x000C($t7)
	lw      $t8, 0x0024($sp)
	sh      $v0, 0x000C($t8)
	b       95$
	nop
91$:
	lw      $t9, 0x0024($sp)
	sh      $0, 0x0010($t9)
	lw      $t0, 0x0024($sp)
	sh      $0, 0x000C($t0)
95$:
	b       97$
	nop
97$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_move_802661CC:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	lw      $t6, 0x0028($sp)
	lw      $t7, 0x0098($t6)
	sw      $t7, 0x0024($sp)
	lw      $t8, 0x0028($sp)
	lw      $t9, 0x0088($t8)
	sw      $t9, 0x0020($sp)
	lw      $t0, 0x0028($sp)
	lh      $t2, 0x002E($sp)
	lh      $t1, 0x002E($t0)
	subu    $t3, $t1, $t2
	sh      $t3, 0x001E($sp)
	lh      $t4, 0x001E($sp)
	lw      $t5, 0x0028($sp)
	li      $at, 0x41400000
	mtc1    $t4, $f4
	lwc1    $f8, 0x0054($t5)
	mtc1    $at, $f16
	cvt.s.w $f6, $f4
	mul.s   $f10, $f6, $f8
	div.s   $f18, $f10, $f16
	trunc.w.s $f4, $f18
	mfc1    $t7, $f4
	nop
	sll     $t8, $t7, 16
	sra     $t9, $t8, 16
	subu    $t0, $0, $t9
	sh      $t0, 0x001C($sp)
	lw      $t1, 0x0028($sp)
	li      $at, 0x432A0000
	mtc1    $at, $f8
	lwc1    $f6, 0x0054($t1)
	mul.s   $f10, $f6, $f8
	trunc.w.s $f16, $f10
	mfc1    $t3, $f16
	nop
	sh      $t3, 0x001A($sp)
	lh      $t4, 0x001C($sp)
	slti    $at, $t4, 0x1801
	bnez    $at, 46$
	nop
	li      $t5, 0x1800
	sh      $t5, 0x001C($sp)
46$:
	lh      $t6, 0x001C($sp)
	slti    $at, $t6, -0x1800
	beqz    $at, 52$
	nop
	li      $t7, -0x1800
	sh      $t7, 0x001C($sp)
52$:
	lh      $t8, 0x001A($sp)
	slti    $at, $t8, 0x1001
	bnez    $at, 58$
	nop
	li      $t9, 0x1000
	sh      $t9, 0x001A($sp)
58$:
	lh      $t0, 0x001A($sp)
	bgez    $t0, 62$
	nop
	sh      $0, 0x001A($sp)
62$:
	lw      $t1, 0x0024($sp)
	lh      $a1, 0x001C($sp)
	li      $a2, 0x0200
	li      $a3, 0x0200
	jal     convergei
	lh      $a0, 0x0010($t1)
	lw      $t2, 0x0024($sp)
	sh      $v0, 0x0010($t2)
	lw      $t3, 0x0024($sp)
	lh      $a1, 0x001A($sp)
	li      $a2, 0x0200
	li      $a3, 0x0200
	jal     convergei
	lh      $a0, 0x000C($t3)
	lw      $t4, 0x0024($sp)
	sh      $v0, 0x000C($t4)
	lw      $t5, 0x0024($sp)
	lh      $t6, 0x0010($t5)
	subu    $t7, $0, $t6
	sh      $t7, 0x0016($t5)
	lw      $t8, 0x0024($sp)
	lw      $t0, 0x0020($sp)
	lh      $t9, 0x0010($t8)
	sh      $t9, 0x001E($t0)
	lw      $t1, 0x0020($sp)
	li      $at, 0x42340000
	mtc1    $at, $f4
	lwc1    $f18, 0x0024($t1)
	add.s   $f6, $f18, $f4
	swc1    $f6, 0x0024($t1)
	b       94$
	nop
94$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_move_80266354:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0038($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0038($sp)
	lh      $t7, 0x002E($t6)
	sh      $t7, 0x002A($sp)
	jal     collision_8024C6C0
	lw      $a0, 0x0038($sp)
	jal     pl_move_80265458
	lw      $a0, 0x0038($sp)
	beqz    $v0, 19$
	nop
	lw      $a0, 0x0038($sp)
	li      $a1, 0x0050
	jal     pl_set_state
	move    $a2, $0
	b       147$
	nop
19$:
	lw      $t8, 0x0038($sp)
	lhu     $t9, 0x0002($t8)
	andi    $t0, $t9, 0x0010
	beqz    $t0, 28$
	nop
	jal     pl_move_80265620
	lw      $a0, 0x0038($sp)
	b       147$
	nop
28$:
	lw      $t1, 0x0038($sp)
	lhu     $t2, 0x0002($t1)
	andi    $t3, $t2, 0x0002
	beqz    $t3, 37$
	nop
	jal     player_80252E5C
	lw      $a0, 0x0038($sp)
	b       147$
	nop
37$:
	jal     pl_move_80265558
	lw      $a0, 0x0038($sp)
	beqz    $v0, 43$
	nop
	b       147$
	li      $v0, 0x0001
43$:
	lw      $t4, 0x0038($sp)
	lhu     $t5, 0x0002($t4)
	andi    $t6, $t5, 0x0020
	beqz    $t6, 52$
	nop
	jal     pl_move_80265620
	lw      $a0, 0x0038($sp)
	b       147$
	nop
52$:
	jal     pl_move_80265514
	lw      $a0, 0x0038($sp)
	beqz    $v0, 70$
	nop
	lw      $t7, 0x0038($sp)
	li      $at, 0x41800000
	mtc1    $at, $f6
	lwc1    $f4, 0x0054($t7)
	c.le.s  $f6, $f4
	nop
	bc1f    70$
	nop
	lw      $a0, 0x0038($sp)
	li      $a1, 0x0443
	jal     pl_set_state
	move    $a2, $0
	b       147$
	nop
70$:
	lw      $t8, 0x0038($sp)
	lhu     $t9, 0x0002($t8)
	andi    $t0, $t9, 0x8000
	beqz    $t0, 82$
	nop
	li.u    $a1, 0x04808459
	li.l    $a1, 0x04808459
	lw      $a0, 0x0038($sp)
	jal     pl_set_state
	move    $a2, $0
	b       147$
	nop
82$:
	lw      $t1, 0x0038($sp)
	sh      $0, 0x0018($t1)
	lw      $a1, 0x0038($sp)
	addiu   $a0, $sp, 0x002C
	jal     vecf_cpy
	addiu   $a1, $a1, 0x003C
	jal     pl_move_80265244
	lw      $a0, 0x0038($sp)
	jal     physics_80255D88
	lw      $a0, 0x0038($sp)
	move    $s0, $v0
	beqz    $s0, 103$
	nop
	li      $at, 0x0001
	beq     $s0, $at, 113$
	nop
	li      $at, 0x0002
	beq     $s0, $at, 131$
	nop
	b       138$
	nop
103$:
	li.u    $a1, 0x0100088C
	li.l    $a1, 0x0100088C
	lw      $a0, 0x0038($sp)
	jal     pl_set_state
	move    $a2, $0
	lw      $a0, 0x0038($sp)
	jal     pl_set_anime
	li      $a1, 0x0056
	b       138$
	nop
113$:
	jal     pl_move_80265700
	lw      $a0, 0x0038($sp)
	lw      $t2, 0x0038($sp)
	li      $at, 0x41800000
	mtc1    $at, $f18
	lwc1    $f8, 0x0020($t2)
	lwc1    $f10, 0x0054($t2)
	sub.s   $f16, $f8, $f10
	c.lt.s  $f18, $f16
	nop
	bc1f    129$
	nop
	lw      $t3, 0x0038($sp)
	lw      $t4, 0x0008($t3)
	ori     $t5, $t4, 0x0001
	sw      $t5, 0x0008($t3)
129$:
	b       138$
	nop
131$:
	lw      $a0, 0x0038($sp)
	jal     pl_move_80265DF8
	addiu   $a1, $sp, 0x002C
	lw      $t6, 0x0038($sp)
	sh      $0, 0x001A($t6)
	b       138$
	nop
138$:
	jal     pl_move_802640FC
	lw      $a0, 0x0038($sp)
	lw      $a0, 0x0038($sp)
	jal     pl_move_80266038
	lh      $a1, 0x002A($sp)
	b       147$
	move    $v0, $0
	b       147$
	nop
147$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

pl_move_802665B4:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	jal     pl_move_80265458
	lw      $a0, 0x0028($sp)
	beqz    $v0, 14$
	nop
	lw      $a0, 0x0028($sp)
	li      $a1, 0x0050
	jal     pl_set_state
	move    $a2, $0
	b       91$
	nop
14$:
	lw      $t6, 0x0028($sp)
	lhu     $t7, 0x0018($t6)
	bnez    $t7, 29$
	nop
	lhu     $t8, 0x0002($t6)
	andi    $t9, $t8, 0x0080
	beqz    $t9, 29$
	nop
	li.u    $a1, 0x018008AC
	li.l    $a1, 0x018008AC
	lw      $a0, 0x0028($sp)
	jal     pl_set_state
	move    $a2, $0
	b       91$
	nop
29$:
	lw      $t1, 0x0028($sp)
	li      $t0, 0x0001
	sh      $t0, 0x0018($t1)
	jal     pl_hold_80274F10
	lw      $a0, 0x0028($sp)
	lw      $t2, 0x0028($sp)
	mtc1    $0, $f6
	lwc1    $f4, 0x0054($t2)
	c.le.s  $f6, $f4
	nop
	bc1f    46$
	nop
	lw      $a0, 0x0028($sp)
	jal     pl_move_80265080
	li      $a1, 0x3F000000
	b       64$
	nop
46$:
	lw      $t3, 0x0028($sp)
	li      $at, 0x41000000
	mtc1    $at, $f10
	lwc1    $f8, 0x0054($t3)
	mtc1    $0, $f4
	add.s   $f16, $f8, $f10
	swc1    $f16, 0x0054($t3)
	lw      $t4, 0x0028($sp)
	lwc1    $f18, 0x0054($t4)
	c.le.s  $f4, $f18
	nop
	bc1f    62$
	nop
	mtc1    $0, $f6
	lw      $t5, 0x0028($sp)
	swc1    $f6, 0x0054($t5)
62$:
	jal     pl_move_80264B54
	lw      $a0, 0x0028($sp)
64$:
	jal     physics_80255D88
	lw      $a0, 0x0028($sp)
	move    $s0, $v0
	beqz    $s0, 74$
	nop
	li      $at, 0x0001
	beq     $s0, $at, 81$
	nop
	b       87$
	nop
74$:
	li.u    $a1, 0x0100088C
	li.l    $a1, 0x0100088C
	lw      $a0, 0x0028($sp)
	jal     pl_set_state
	move    $a2, $0
	b       87$
	nop
81$:
	lw      $t7, 0x0028($sp)
	lw      $t6, 0x0008($t7)
	ori     $t8, $t6, 0x0001
	sw      $t8, 0x0008($t7)
	b       87$
	nop
87$:
	b       91$
	move    $v0, $0
	b       91$
	nop
91$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_move_80266734:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	la.u    $a0, o_13001650
	jal     segment_to_virtual
	la.l    $a0, o_13001650
	lw      $t6, 0x0028($sp)
	lw      $t7, 0x007C($t6)
	lw      $t8, 0x020C($t7)
	bne     $v0, $t8, 18$
	nop
	lw      $a0, 0x0028($sp)
	li      $a1, 0x08AE
	jal     pl_set_state
	move    $a2, $0
	b       149$
	nop
18$:
	lw      $t9, 0x0028($sp)
	lw      $t0, 0x0088($t9)
	lw      $t1, 0x0134($t0)
	andi    $t2, $t1, 0x0008
	beqz    $t2, 31$
	nop
	li.u    $a1, 0x04000440
	li.l    $a1, 0x04000440
	lw      $a0, 0x0028($sp)
	jal     player_80253178
	move    $a2, $0
	b       149$
	nop
31$:
	jal     pl_move_80265458
	lw      $a0, 0x0028($sp)
	beqz    $v0, 41$
	nop
	lw      $a0, 0x0028($sp)
	li      $a1, 0x0051
	jal     pl_set_state
	move    $a2, $0
	b       149$
	nop
41$:
	lw      $t3, 0x0028($sp)
	lhu     $t4, 0x0002($t3)
	andi    $t5, $t4, 0x2000
	beqz    $t5, 53$
	nop
	li.u    $a1, 0x80000588
	li.l    $a1, 0x80000588
	lw      $a0, 0x0028($sp)
	jal     pl_set_state
	move    $a2, $0
	b       149$
	nop
53$:
	lw      $t6, 0x0028($sp)
	lhu     $t7, 0x0002($t6)
	andi    $t8, $t7, 0x0002
	beqz    $t8, 65$
	nop
	li.u    $a1, 0x030008A0
	li.l    $a1, 0x030008A0
	lw      $a0, 0x0028($sp)
	jal     player_802530A0
	move    $a2, $0
	b       149$
	nop
65$:
	lw      $t9, 0x0028($sp)
	lhu     $t0, 0x0002($t9)
	andi    $t1, $t0, 0x0020
	beqz    $t1, 76$
	nop
	lw      $a0, 0x0028($sp)
	li      $a1, 0x044B
	jal     pl_set_state
	move    $a2, $0
	b       149$
	nop
76$:
	lw      $t2, 0x0028($sp)
	lhu     $t3, 0x0002($t2)
	andi    $t4, $t3, 0x8000
	beqz    $t4, 88$
	nop
	li.u    $a1, 0x04808459
	li.l    $a1, 0x04808459
	lw      $a0, 0x0028($sp)
	jal     player_80253178
	move    $a2, $0
	b       149$
	nop
88$:
	lw      $t5, 0x0028($sp)
	lui     $at, %hi(pl_move_80336AD8)
	lwc1    $f6, %lo(pl_move_80336AD8)($at)
	lwc1    $f4, 0x0020($t5)
	mul.s   $f8, $f4, $f6
	swc1    $f8, 0x0020($t5)
	jal     pl_move_80265244
	lw      $a0, 0x0028($sp)
	jal     physics_80255D88
	lw      $a0, 0x0028($sp)
	move    $s0, $v0
	beqz    $s0, 106$
	nop
	li      $at, 0x0002
	beq     $s0, $at, 113$
	nop
	b       126$
	nop
106$:
	li.u    $a1, 0x010008A1
	li.l    $a1, 0x010008A1
	lw      $a0, 0x0028($sp)
	jal     pl_set_state
	move    $a2, $0
	b       126$
	nop
113$:
	lw      $t6, 0x0028($sp)
	li      $at, 0x41800000
	mtc1    $at, $f16
	lwc1    $f10, 0x0054($t6)
	c.lt.s  $f16, $f10
	nop
	bc1f    124$
	nop
	lw      $a0, 0x0028($sp)
	jal     player_80251708
	li      $a1, 0x41800000
124$:
	b       126$
	nop
126$:
	jal     pl_move_80265B1C
	lw      $a0, 0x0028($sp)
	lw      $t7, 0x0028($sp)
	lui     $at, %hi(pl_move_80336ADC)
	lwc1    $f4, %lo(pl_move_80336ADC)($at)
	lwc1    $f18, 0x0020($t7)
	lwc1    $f8, 0x0054($t7)
	li      $at, 0x41200000
	mul.s   $f6, $f18, $f4
	mtc1    $at, $f16
	sub.s   $f10, $f6, $f8
	c.lt.s  $f16, $f10
	nop
	bc1f    145$
	nop
	lw      $t8, 0x0028($sp)
	lw      $t9, 0x0008($t8)
	ori     $t0, $t9, 0x0001
	sw      $t0, 0x0008($t8)
145$:
	b       149$
	move    $v0, $0
	b       149$
	nop
149$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_move_8026699C:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	lhu     $t7, 0x0002($t6)
	andi    $t8, $t7, 0x2000
	beqz    $t8, 16$
	nop
	li.u    $a1, 0x80000589
	li.l    $a1, 0x80000589
	lw      $a0, 0x0028($sp)
	jal     pl_set_state
	move    $a2, $0
	b       82$
	nop
16$:
	jal     pl_move_80265458
	lw      $a0, 0x0028($sp)
	beqz    $v0, 26$
	nop
	lw      $a0, 0x0028($sp)
	li      $a1, 0x0050
	jal     player_80253178
	move    $a2, $0
	b       82$
	nop
26$:
	lw      $t9, 0x0028($sp)
	lhu     $t0, 0x0002($t9)
	andi    $t1, $t0, 0x0020
	beqz    $t1, 38$
	nop
	li.u    $a1, 0x08000208
	li.l    $a1, 0x08000208
	lw      $a0, 0x0028($sp)
	jal     pl_set_state
	move    $a2, $0
	b       82$
	nop
38$:
	lw      $t2, 0x0028($sp)
	lui     $at, %hi(pl_move_80336AE0)
	lwc1    $f6, %lo(pl_move_80336AE0)($at)
	lwc1    $f4, 0x0020($t2)
	mul.s   $f8, $f4, $f6
	swc1    $f8, 0x0020($t2)
	jal     pl_move_80265244
	lw      $a0, 0x0028($sp)
	jal     physics_80255D88
	lw      $a0, 0x0028($sp)
	move    $s0, $v0
	beqz    $s0, 56$
	nop
	li      $at, 0x0002
	beq     $s0, $at, 63$
	nop
	b       76$
	nop
56$:
	li.u    $a1, 0x0100088C
	li.l    $a1, 0x0100088C
	lw      $a0, 0x0028($sp)
	jal     player_80253178
	move    $a2, $0
	b       76$
	nop
63$:
	lw      $t3, 0x0028($sp)
	li      $at, 0x41200000
	mtc1    $at, $f16
	lwc1    $f10, 0x0054($t3)
	c.lt.s  $f16, $f10
	nop
	bc1f    74$
	nop
	lw      $a0, 0x0028($sp)
	jal     player_80251708
	li      $a1, 0x41200000
74$:
	b       76$
	nop
76$:
	jal     pl_move_80265D90
	lw      $a0, 0x0028($sp)
	b       82$
	move    $v0, $0
	b       82$
	nop
82$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_move_80266AF8:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	lhu     $t7, 0x0002($t6)
	andi    $t8, $t7, 0x0008
	beqz    $t8, 15$
	nop
	lw      $a0, 0x0028($sp)
	li      $a1, 0x0050
	jal     pl_set_state
	move    $a2, $0
	b       144$
	nop
15$:
	lw      $t9, 0x0028($sp)
	lhu     $t0, 0x0002($t9)
	andi    $t1, $t0, 0x0002
	beqz    $t1, 27$
	nop
	li.u    $a1, 0x01000887
	li.l    $a1, 0x01000887
	lw      $a0, 0x0028($sp)
	jal     player_802530A0
	move    $a2, $0
	b       144$
	nop
27$:
	lw      $t2, 0x0028($sp)
	lhu     $t3, 0x0002($t2)
	andi    $t4, $t3, 0x0020
	beqz    $t4, 39$
	nop
	li.u    $a1, 0x04000445
	li.l    $a1, 0x04000445
	lw      $a0, 0x0028($sp)
	jal     pl_set_state
	move    $a2, $0
	b       144$
	nop
39$:
	jal     pl_move_80265514
	lw      $a0, 0x0028($sp)
	bnez    $v0, 50$
	nop
	li.u    $a1, 0x04000440
	li.l    $a1, 0x04000440
	lw      $a0, 0x0028($sp)
	jal     pl_set_state
	move    $a2, $0
	b       144$
	nop
50$:
	lw      $a0, 0x0028($sp)
	jal     pl_move_80265080
	li      $a1, 0x40000000
	beqz    $v0, 62$
	nop
	lw      $a0, 0x0028($sp)
	li      $a1, 0x41000000
	li      $a2, 0x0444
	jal     pl_move_8026409C
	move    $a3, $0
	b       144$
	nop
62$:
	lw      $t5, 0x0028($sp)
	li.u    $at, 0x14000001
	li.l    $at, 0x14000001
	lw      $a0, 0x0014($t5)
	lw      $a1, 0x0088($t5)
	addu    $a0, $a0, $at
	jal     Na_SePlay
	addiu   $a1, $a1, 0x0054
	jal     player_80251274
	lw      $a0, 0x0028($sp)
	jal     physics_80255D88
	lw      $a0, 0x0028($sp)
	move    $s0, $v0
	beqz    $s0, 82$
	nop
	li      $at, 0x0001
	beq     $s0, $at, 89$
	nop
	b       95$
	nop
82$:
	li.u    $a1, 0x0100088C
	li.l    $a1, 0x0100088C
	lw      $a0, 0x0028($sp)
	jal     pl_set_state
	move    $a2, $0
	b       95$
	nop
89$:
	lw      $t6, 0x0028($sp)
	lw      $t7, 0x0008($t6)
	ori     $t8, $t7, 0x0001
	sw      $t8, 0x0008($t6)
	b       95$
	nop
95$:
	lw      $t9, 0x0028($sp)
	li      $at, 0x41900000
	mtc1    $at, $f6
	lwc1    $f4, 0x0054($t9)
	c.le.s  $f6, $f4
	nop
	bc1f    108$
	nop
	lw      $a0, 0x0028($sp)
	jal     pl_set_anime
	li      $a1, 0x00BC
	b       140$
	nop
108$:
	lw      $a0, 0x0028($sp)
	jal     pl_set_anime
	li      $a1, 0x00BD
	jal     player_80250940
	lw      $a0, 0x0028($sp)
	beqz    $v0, 140$
	nop
	lw      $t0, 0x0028($sp)
	mtc1    $0, $f10
	lwc1    $f8, 0x0054($t0)
	c.lt.s  $f10, $f8
	nop
	bc1f    134$
	nop
	lw      $t1, 0x0028($sp)
	li.u    $a2, 0x04000440
	li.l    $a2, 0x04000440
	lwc1    $f16, 0x0054($t1)
	move    $a3, $0
	move    $a0, $t1
	neg.s   $f18, $f16
	mfc1    $a1, $f18
	jal     pl_move_8026409C
	nop
	b       140$
	nop
134$:
	li.u    $a2, 0x04000440
	li.l    $a2, 0x04000440
	lw      $a0, 0x0028($sp)
	li      $a1, 0x41000000
	jal     pl_move_8026409C
	move    $a3, $0
140$:
	b       144$
	move    $v0, $0
	b       144$
	nop
144$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_move_80266D4C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	lhu     $t7, 0x0002($t6)
	andi    $t8, $t7, 0x0008
	beqz    $t8, 14$
	nop
	lw      $a0, 0x0018($sp)
	li      $a1, 0x0050
	jal     pl_set_state
	move    $a2, $0
	b       59$
	nop
14$:
	lw      $t9, 0x0018($sp)
	lhu     $t0, 0x0002($t9)
	andi    $t1, $t0, 0x0002
	beqz    $t1, 26$
	nop
	li.u    $a1, 0x01000887
	li.l    $a1, 0x01000887
	lw      $a0, 0x0018($sp)
	jal     player_802530A0
	move    $a2, $0
	b       59$
	nop
26$:
	jal     pl_move_80265244
	lw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	jal     pl_set_anime
	li      $a1, 0x00BD
	jal     physics_80255D88
	lw      $a0, 0x0018($sp)
	bnez    $v0, 40$
	nop
	li.u    $a1, 0x0100088C
	li.l    $a1, 0x0100088C
	lw      $a0, 0x0018($sp)
	jal     pl_set_state
	move    $a2, $0
40$:
	jal     player_80250940
	lw      $a0, 0x0018($sp)
	beqz    $v0, 49$
	nop
	li.u    $a1, 0x04000440
	li.l    $a1, 0x04000440
	lw      $a0, 0x0018($sp)
	jal     pl_set_state
	move    $a2, $0
49$:
	lw      $t2, 0x0018($sp)
	li      $at, 0x8000
	lw      $t3, 0x0088($t2)
	lh      $t4, 0x001C($t3)
	addu    $t5, $t4, $at
	sh      $t5, 0x001C($t3)
	b       59$
	move    $v0, $0
	b       59$
	nop
59$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_move_80266E48:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	lhu     $t7, 0x0002($t6)
	andi    $t8, $t7, 0x0010
	bnez    $t8, 16$
	nop
	andi    $t9, $t7, 0x000F
	beqz    $t9, 16$
	nop
	jal     player_80253218
	lw      $a0, 0x0028($sp)
	b       91$
	nop
16$:
	lw      $a0, 0x0028($sp)
	jal     pl_move_80265080
	li      $a1, 0x40000000
	beqz    $v0, 28$
	nop
	li.u    $a1, 0x0C00023D
	li.l    $a1, 0x0C00023D
	lw      $a0, 0x0028($sp)
	jal     pl_set_state
	move    $a2, $0
	b       91$
	nop
28$:
	lw      $t0, 0x0028($sp)
	lhu     $t1, 0x0002($t0)
	andi    $t2, $t1, 0x2000
	beqz    $t2, 40$
	nop
	li.u    $a1, 0x00800457
	li.l    $a1, 0x00800457
	lw      $a0, 0x0028($sp)
	jal     pl_set_state
	move    $a2, $0
	b       91$
	nop
40$:
	jal     physics_80255D88
	lw      $a0, 0x0028($sp)
	move    $s0, $v0
	beqz    $s0, 53$
	nop
	li      $at, 0x0001
	beq     $s0, $at, 60$
	nop
	li      $at, 0x0002
	beq     $s0, $at, 66$
	nop
	b       74$
	nop
53$:
	li.u    $a1, 0x0100088C
	li.l    $a1, 0x0100088C
	lw      $a0, 0x0028($sp)
	jal     pl_set_state
	move    $a2, $0
	b       74$
	nop
60$:
	lw      $t3, 0x0028($sp)
	lw      $t4, 0x0008($t3)
	ori     $t5, $t4, 0x0001
	sw      $t5, 0x0008($t3)
	b       74$
	nop
66$:
	li.u    $a1, 0x00020462
	li.u    $a2, 0x0C00023D
	li.l    $a2, 0x0C00023D
	li.l    $a1, 0x00020462
	jal     pl_move_802642B4
	lw      $a0, 0x0028($sp)
	b       74$
	nop
74$:
	lw      $t6, 0x0028($sp)
	li.u    $at, 0x14000001
	li.l    $at, 0x14000001
	lw      $a0, 0x0014($t6)
	lw      $a1, 0x0088($t6)
	addu    $a0, $a0, $at
	jal     Na_SePlay
	addiu   $a1, $a1, 0x0054
	jal     player_80251274
	lw      $a0, 0x0028($sp)
	lw      $a0, 0x0028($sp)
	jal     pl_set_anime
	li      $a1, 0x000F
	b       91$
	move    $v0, $0
	b       91$
	nop
91$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_move_80266FC8:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0030($sp)
	sw      $s0, 0x0018($sp)
	jal     player_8025177C
	lw      $a0, 0x0030($sp)
	sh      $v0, 0x002A($sp)
	lw      $t6, 0x0030($sp)
	lhu     $t7, 0x0002($t6)
	andi    $t8, $t7, 0x0010
	bnez    $t8, 61$
	nop
	jal     pl_move_80265458
	lw      $a0, 0x0030($sp)
	beqz    $v0, 22$
	nop
	lw      $a0, 0x0030($sp)
	li      $a1, 0x0050
	jal     pl_set_state
	move    $a2, $0
	b       153$
	nop
22$:
	lw      $t9, 0x0030($sp)
	lhu     $t0, 0x0002($t9)
	andi    $t1, $t0, 0x0002
	beqz    $t1, 31$
	nop
	jal     player_80252E5C
	lw      $a0, 0x0030($sp)
	b       153$
	nop
31$:
	jal     pl_move_80265558
	lw      $a0, 0x0030($sp)
	beqz    $v0, 37$
	nop
	b       153$
	li      $v0, 0x0001
37$:
	lw      $t2, 0x0030($sp)
	lhu     $t3, 0x0002($t2)
	andi    $t4, $t3, 0x0001
	beqz    $t4, 49$
	nop
	li.u    $a1, 0x04000440
	li.l    $a1, 0x04000440
	lw      $a0, 0x0030($sp)
	jal     pl_set_state
	move    $a2, $0
	b       153$
	nop
49$:
	lw      $t5, 0x0030($sp)
	lhu     $t6, 0x0002($t5)
	andi    $t7, $t6, 0x8000
	beqz    $t7, 61$
	nop
	li.u    $a1, 0x04808459
	li.l    $a1, 0x04808459
	lw      $a0, 0x0030($sp)
	jal     pl_set_state
	move    $a2, $0
	b       153$
	nop
61$:
	jal     pl_move_802651B0
	lw      $a0, 0x0030($sp)
	beqz    $v0, 72$
	nop
	li.u    $a1, 0x0C400201
	li.l    $a1, 0x0C400201
	lw      $a0, 0x0030($sp)
	jal     pl_set_state
	move    $a2, $0
	b       153$
	nop
72$:
	jal     physics_80255D88
	lw      $a0, 0x0030($sp)
	move    $s0, $v0
	beqz    $s0, 82$
	nop
	li      $at, 0x0002
	beq     $s0, $at, 89$
	nop
	b       103$
	nop
82$:
	li.u    $a1, 0x0100088C
	li.l    $a1, 0x0100088C
	lw      $a0, 0x0030($sp)
	jal     pl_set_state
	move    $a2, $0
	b       103$
	nop
89$:
	lh      $t8, 0x002A($sp)
	li      $at, 0x0013
	bne     $t8, $at, 98$
	nop
	lw      $a0, 0x0030($sp)
	jal     physics_802552FC
	li      $a1, 0x0001
	b       101$
	nop
98$:
	lw      $a0, 0x0030($sp)
	jal     player_80251708
	li      $a1, 0x0000
101$:
	b       103$
	nop
103$:
	lh      $t9, 0x002A($sp)
	li      $at, 0x0013
	bne     $t9, $at, 125$
	nop
	lw      $a0, 0x0030($sp)
	jal     pl_set_anime
	li      $a1, 0x00C3
	lw      $t0, 0x0030($sp)
	li.u    $at, 0x14000001
	li.l    $at, 0x14000001
	lw      $a0, 0x0014($t0)
	lw      $a1, 0x0088($t0)
	addu    $a0, $a0, $at
	jal     Na_SePlay
	addiu   $a1, $a1, 0x0054
	jal     player_80251274
	lw      $a0, 0x0030($sp)
	lw      $t1, 0x0030($sp)
	lw      $t2, 0x0008($t1)
	ori     $t3, $t2, 0x0001
	b       149$
	sw      $t3, 0x0008($t1)
125$:
	lw      $t4, 0x0030($sp)
	li      $at, 0x40800000
	mtc1    $at, $f6
	lwc1    $f4, 0x0054($t4)
	li      $at, 0x47800000
	mtc1    $at, $f10
	div.s   $f8, $f4, $f6
	mul.s   $f16, $f8, $f10
	trunc.w.s $f18, $f16
	mfc1    $t6, $f18
	nop
	slti    $at, $t6, 0x1000
	beqz    $at, 141$
	sw      $t6, 0x002C($sp)
	li      $t7, 0x1000
	sw      $t7, 0x002C($sp)
141$:
	lw      $a0, 0x0030($sp)
	li      $a1, 0x0048
	jal     player_80250B04
	lw      $a2, 0x002C($sp)
	lw      $a0, 0x0030($sp)
	li      $a1, 0x000A
	jal     pl_move_80263EE4
	li      $a2, 0x0031
149$:
	b       153$
	move    $v0, $0
	b       153$
	nop
153$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

pl_move_80267240:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0030($sp)
	sw      $s0, 0x0018($sp)
	jal     player_8025177C
	lw      $a0, 0x0030($sp)
	sh      $v0, 0x002A($sp)
	lw      $t6, 0x0030($sp)
	lw      $t7, 0x0088($t6)
	lw      $t8, 0x0134($t7)
	andi    $t9, $t8, 0x0008
	beqz    $t9, 20$
	nop
	li.u    $a1, 0x04000440
	li.l    $a1, 0x04000440
	lw      $a0, 0x0030($sp)
	jal     player_80253178
	move    $a2, $0
	b       172$
	nop
20$:
	jal     pl_move_80265458
	lw      $a0, 0x0030($sp)
	beqz    $v0, 30$
	nop
	lw      $a0, 0x0030($sp)
	li      $a1, 0x0051
	jal     pl_set_state
	move    $a2, $0
	b       172$
	nop
30$:
	lw      $t0, 0x0030($sp)
	lhu     $t1, 0x0002($t0)
	andi    $t2, $t1, 0x2000
	beqz    $t2, 42$
	nop
	li.u    $a1, 0x80000588
	li.l    $a1, 0x80000588
	lw      $a0, 0x0030($sp)
	jal     pl_set_state
	move    $a2, $0
	b       172$
	nop
42$:
	lw      $t3, 0x0030($sp)
	lhu     $t4, 0x0002($t3)
	andi    $t5, $t4, 0x0002
	beqz    $t5, 54$
	nop
	li.u    $a1, 0x030008A0
	li.l    $a1, 0x030008A0
	lw      $a0, 0x0030($sp)
	jal     player_802530A0
	move    $a2, $0
	b       172$
	nop
54$:
	lw      $t6, 0x0030($sp)
	lhu     $t7, 0x0002($t6)
	andi    $t8, $t7, 0x8000
	beqz    $t8, 66$
	nop
	li.u    $a1, 0x04808459
	li.l    $a1, 0x04808459
	lw      $a0, 0x0030($sp)
	jal     player_80253178
	move    $a2, $0
	b       172$
	nop
66$:
	lw      $t9, 0x0030($sp)
	lhu     $t0, 0x0002($t9)
	andi    $t1, $t0, 0x0001
	beqz    $t1, 77$
	nop
	lw      $a0, 0x0030($sp)
	li      $a1, 0x0442
	jal     pl_set_state
	move    $a2, $0
	b       172$
	nop
77$:
	jal     pl_move_802651B0
	lw      $a0, 0x0030($sp)
	beqz    $v0, 88$
	nop
	li.u    $a1, 0x08000207
	li.l    $a1, 0x08000207
	lw      $a0, 0x0030($sp)
	jal     pl_set_state
	move    $a2, $0
	b       172$
	nop
88$:
	lw      $t2, 0x0030($sp)
	lui     $at, %hi(pl_move_80336AE4)
	lwc1    $f6, %lo(pl_move_80336AE4)($at)
	lwc1    $f4, 0x0020($t2)
	mul.s   $f8, $f4, $f6
	swc1    $f8, 0x0020($t2)
	jal     physics_80255D88
	lw      $a0, 0x0030($sp)
	move    $s0, $v0
	beqz    $s0, 104$
	nop
	li      $at, 0x0002
	beq     $s0, $at, 111$
	nop
	b       125$
	nop
104$:
	li.u    $a1, 0x010008A1
	li.l    $a1, 0x010008A1
	lw      $a0, 0x0030($sp)
	jal     pl_set_state
	move    $a2, $0
	b       125$
	nop
111$:
	lh      $t3, 0x002A($sp)
	li      $at, 0x0013
	bne     $t3, $at, 120$
	nop
	lw      $a0, 0x0030($sp)
	jal     physics_802552FC
	li      $a1, 0x0001
	b       123$
	nop
120$:
	lw      $a0, 0x0030($sp)
	jal     player_80251708
	li      $a1, 0x0000
123$:
	b       125$
	nop
125$:
	lh      $t4, 0x002A($sp)
	li      $at, 0x0013
	bne     $t4, $at, 147$
	nop
	lw      $a0, 0x0030($sp)
	jal     pl_set_anime
	li      $a1, 0x003F
	lw      $t5, 0x0030($sp)
	li.u    $at, 0x14000001
	li.l    $at, 0x14000001
	lw      $a0, 0x0014($t5)
	lw      $a1, 0x0088($t5)
	addu    $a0, $a0, $at
	jal     Na_SePlay
	addiu   $a1, $a1, 0x0054
	jal     player_80251274
	lw      $a0, 0x0030($sp)
	lw      $t6, 0x0030($sp)
	lw      $t7, 0x0008($t6)
	ori     $t8, $t7, 0x0001
	b       168$
	sw      $t8, 0x0008($t6)
147$:
	lw      $t9, 0x0030($sp)
	li      $at, 0x47800000
	mtc1    $at, $f16
	lwc1    $f10, 0x0054($t9)
	mul.s   $f18, $f10, $f16
	trunc.w.s $f4, $f18
	mfc1    $t1, $f4
	nop
	slti    $at, $t1, 0x1000
	beqz    $at, 160$
	sw      $t1, 0x002C($sp)
	li      $t2, 0x1000
	sw      $t2, 0x002C($sp)
160$:
	lw      $a0, 0x0030($sp)
	li      $a1, 0x0016
	jal     player_80250B04
	lw      $a2, 0x002C($sp)
	lw      $a0, 0x0030($sp)
	li      $a1, 0x000C
	jal     pl_move_80263EE4
	li      $a2, 0x003E
168$:
	b       172$
	move    $v0, $0
	b       172$
	nop
172$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

pl_move_80267504:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	lh      $t7, 0x002E($t6)
	sh      $t7, 0x0026($sp)
	lw      $t8, 0x0028($sp)
	lhu     $t9, 0x0002($t8)
	andi    $t0, $t9, 0x0002
	beqz    $t0, 19$
	nop
	li.u    $a1, 0x0281089A
	li.l    $a1, 0x0281089A
	lw      $a0, 0x0028($sp)
	jal     pl_set_state
	move    $a2, $0
	b       132$
	nop
19$:
	lw      $t1, 0x0028($sp)
	lhu     $t2, 0x0002($t1)
	andi    $t3, $t2, 0x8000
	beqz    $t3, 44$
	nop
	jal     collision_8024C618
	lw      $a0, 0x0028($sp)
	lw      $t4, 0x0028($sp)
	li      $at, 0x41C00000
	mtc1    $at, $f6
	lwc1    $f4, 0x0054($t4)
	c.lt.s  $f4, $f6
	nop
	bc1f    37$
	nop
	lw      $a0, 0x0028($sp)
	jal     player_80251708
	li      $a1, 0x41C00000
37$:
	li.u    $a1, 0x04808459
	li.l    $a1, 0x04808459
	lw      $a0, 0x0028($sp)
	jal     pl_set_state
	move    $a2, $0
	b       132$
	nop
44$:
	jal     pl_move_80264E18
	lw      $a0, 0x0028($sp)
	lw      $t5, 0x0028($sp)
	lw      $t6, 0x001C($t5)
	bnez    $t6, 52$
	nop
	b       53$
	li      $s0, 0x006D
52$:
	li      $s0, 0x0047
53$:
	lw      $a0, 0x0028($sp)
	jal     pl_set_anime
	move    $a1, $s0
	jal     physics_80255D88
	lw      $a0, 0x0028($sp)
	move    $s0, $v0
	beqz    $s0, 66$
	nop
	li      $at, 0x0002
	beq     $s0, $at, 73$
	nop
	b       101$
	nop
66$:
	li.u    $a1, 0x0081089B
	li.l    $a1, 0x0081089B
	lw      $a0, 0x0028($sp)
	jal     pl_set_state
	move    $a2, $0
	b       101$
	nop
73$:
	jal     collision_8024C618
	lw      $a0, 0x0028($sp)
	lw      $t7, 0x0028($sp)
	lw      $t8, 0x0004($t7)
	andi    $t9, $t8, 0x0004
	beqz    $t9, 83$
	nop
	li.u    $s0, 0x04428081
	b       85$
	li.l    $s0, 0x04428081
83$:
	li.u    $s0, 0x0445A081
	li.l    $s0, 0x0445A081
85$:
	lw      $t0, 0x0028($sp)
	move    $a0, $s0
	lw      $a1, 0x0088($t0)
	jal     Na_SePlay
	addiu   $a1, $a1, 0x0054
	lw      $t1, 0x0028($sp)
	lw      $t2, 0x0008($t1)
	ori     $t3, $t2, 0x0002
	sw      $t3, 0x0008($t1)
	li.u    $a1, 0x00020462
	li.l    $a1, 0x00020462
	lw      $a0, 0x0028($sp)
	jal     pl_set_state
	move    $a2, $0
	b       101$
	nop
101$:
	lw      $a0, 0x0028($sp)
	jal     pl_move_802661CC
	lh      $a1, 0x0026($sp)
	lw      $t4, 0x0028($sp)
	li      $at, 0x0001
	lw      $t5, 0x0068($t4)
	lh      $t6, 0x0000($t5)
	bne     $t6, $at, 118$
	nop
	lw      $t7, 0x0028($sp)
	li.u    $a0, 0x14280001
	li.l    $a0, 0x14280001
	lw      $a1, 0x0088($t7)
	jal     Na_SePlay
	addiu   $a1, $a1, 0x0054
	b       126$
	nop
118$:
	lw      $t8, 0x0028($sp)
	li.u    $at, 0x14200001
	li.l    $at, 0x14200001
	lw      $a0, 0x0014($t8)
	lw      $a1, 0x0088($t8)
	addu    $a0, $a0, $at
	jal     Na_SePlay
	addiu   $a1, $a1, 0x0054
126$:
	jal     player_80251274
	lw      $a0, 0x0028($sp)
	b       132$
	move    $v0, $0
	b       132$
	nop
132$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_move_80267728:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	jal     pl_move_80265458
	lw      $a0, 0x0028($sp)
	beqz    $v0, 14$
	nop
	lw      $a0, 0x0028($sp)
	li      $a1, 0x0050
	jal     pl_set_state
	move    $a2, $0
	b       136$
	nop
14$:
	lw      $t6, 0x0028($sp)
	lhu     $t7, 0x0002($t6)
	andi    $t8, $t7, 0x0010
	beqz    $t8, 26$
	nop
	li.u    $a1, 0x0C008224
	li.l    $a1, 0x0C008224
	lw      $a0, 0x0028($sp)
	jal     pl_set_state
	move    $a2, $0
	b       136$
	nop
26$:
	lw      $t9, 0x0028($sp)
	lhu     $t0, 0x0002($t9)
	andi    $t1, $t0, 0x0002
	beqz    $t1, 38$
	nop
	li.u    $a1, 0x03000880
	li.l    $a1, 0x03000880
	lw      $a0, 0x0028($sp)
	jal     player_802530A0
	move    $a2, $0
	b       136$
	nop
38$:
	jal     pl_move_80265558
	lw      $a0, 0x0028($sp)
	beqz    $v0, 44$
	nop
	b       136$
	li      $v0, 0x0001
44$:
	lw      $t2, 0x0028($sp)
	lhu     $t3, 0x0002($t2)
	andi    $t4, $t3, 0x0020
	beqz    $t4, 56$
	nop
	li.u    $a1, 0x0C008224
	li.l    $a1, 0x0C008224
	lw      $a0, 0x0028($sp)
	jal     pl_set_state
	move    $a2, $0
	b       136$
	nop
56$:
	lw      $t5, 0x0028($sp)
	lhu     $t6, 0x0002($t5)
	andi    $t7, $t6, 0x4000
	bnez    $t7, 68$
	nop
	li.u    $a1, 0x0C008224
	li.l    $a1, 0x0C008224
	lw      $a0, 0x0028($sp)
	jal     pl_set_state
	move    $a2, $0
	b       136$
	nop
68$:
	lw      $t8, 0x0028($sp)
	lui     $at, %hi(pl_move_80336AE8)
	lwc1    $f6, %lo(pl_move_80336AE8)($at)
	lwc1    $f4, 0x0020($t8)
	mul.s   $f8, $f4, $f6
	swc1    $f8, 0x0020($t8)
	jal     pl_move_80265244
	lw      $a0, 0x0028($sp)
	jal     physics_80255D88
	lw      $a0, 0x0028($sp)
	move    $s0, $v0
	beqz    $s0, 89$
	nop
	li      $at, 0x0001
	beq     $s0, $at, 107$
	nop
	li      $at, 0x0002
	beq     $s0, $at, 96$
	nop
	b       111$
	nop
89$:
	li.u    $a1, 0x0100088C
	li.l    $a1, 0x0100088C
	lw      $a0, 0x0028($sp)
	jal     pl_set_state
	move    $a2, $0
	b       111$
	nop
96$:
	lw      $t9, 0x0028($sp)
	li      $at, 0x41200000
	mtc1    $at, $f16
	lwc1    $f10, 0x0054($t9)
	c.lt.s  $f16, $f10
	nop
	bc1f    107$
	nop
	lw      $a0, 0x0028($sp)
	jal     player_80251708
	li      $a1, 0x41200000
107$:
	jal     pl_move_80264024
	lw      $a0, 0x0028($sp)
	b       111$
	nop
111$:
	lw      $t0, 0x0028($sp)
	li      $at, 0x40000000
	mtc1    $at, $f4
	lwc1    $f18, 0x0020($t0)
	li      $at, 0x47800000
	mtc1    $at, $f8
	mul.s   $f6, $f18, $f4
	nop
	mul.s   $f10, $f6, $f8
	trunc.w.s $f16, $f10
	mfc1    $t2, $f16
	nop
	sw      $t2, 0x0024($sp)
	lw      $a0, 0x0028($sp)
	li      $a1, 0x0099
	jal     player_80250B04
	lw      $a2, 0x0024($sp)
	lw      $a0, 0x0028($sp)
	li      $a1, 0x001A
	jal     pl_move_80263EE4
	li      $a2, 0x004F
	b       136$
	move    $v0, $0
	b       136$
	nop
136$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_move_8026795C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	lhu     $t7, 0x0002($t6)
	andi    $t8, $t7, 0x0002
	beqz    $t8, 15$
	nop
	li.u    $a1, 0x010208B4
	li.l    $a1, 0x010208B4
	lw      $a0, 0x0018($sp)
	jal     pl_set_state
	move    $a2, $0
	b       174$
	nop
15$:
	lw      $t9, 0x0018($sp)
	lw      $t0, 0x0088($t9)
	lw      $t1, 0x0110($t0)
	addiu   $t2, $t1, 0x0002
	sw      $t2, 0x0110($t0)
	lw      $t3, 0x0018($sp)
	lw      $t4, 0x0088($t3)
	lw      $t5, 0x0110($t4)
	slti    $at, $t5, 0x00A1
	bnez    $at, 33$
	nop
	li.u    $a1, 0x04000440
	li.l    $a1, 0x04000440
	lw      $a0, 0x0018($sp)
	jal     pl_set_state
	move    $a2, $0
	b       174$
	nop
33$:
	lw      $t6, 0x0018($sp)
	li      $at, 0x42480000
	mtc1    $at, $f16
	lh      $t7, 0x0076($t6)
	lwc1    $f8, 0x0070($t6)
	mtc1    $t7, $f4
	nop
	cvt.s.w $f6, $f4
	sub.s   $f10, $f6, $f8
	c.lt.s  $f16, $f10
	nop
	bc1f    59$
	nop
	lw      $t8, 0x0018($sp)
	li.u    $a0, 0x30038081
	li.l    $a0, 0x30038081
	lw      $a1, 0x0088($t8)
	jal     Na_SePlay
	addiu   $a1, $a1, 0x0054
	li.u    $a1, 0x04000440
	li.l    $a1, 0x04000440
	lw      $a0, 0x0018($sp)
	jal     pl_set_state
	move    $a2, $0
	b       174$
	nop
59$:
	lw      $t9, 0x0018($sp)
	li      $at, 0x41000000
	mtc1    $at, $f4
	lwc1    $f18, 0x0054($t9)
	c.lt.s  $f18, $f4
	nop
	bc1f    71$
	nop
	li      $at, 0x41000000
	mtc1    $at, $f6
	lw      $t1, 0x0018($sp)
	swc1    $f6, 0x0054($t1)
71$:
	lw      $t2, 0x0018($sp)
	li      $at, 0x42400000
	mtc1    $at, $f10
	lwc1    $f8, 0x0054($t2)
	c.lt.s  $f10, $f8
	nop
	bc1f    83$
	nop
	li      $at, 0x42400000
	mtc1    $at, $f16
	lw      $t0, 0x0018($sp)
	swc1    $f16, 0x0054($t0)
83$:
	lw      $t3, 0x0018($sp)
	li      $at, 0x42000000
	mtc1    $at, $f14
	li      $a2, 0x40800000
	li      $a3, 0x3F800000
	jal     convergef
	lwc1    $f12, 0x0054($t3)
	lw      $t4, 0x0018($sp)
	swc1    $f0, 0x0054($t4)
	lw      $t5, 0x0018($sp)
	lhu     $t7, 0x0002($t5)
	andi    $t6, $t7, 0x0001
	beqz    $t6, 113$
	nop
	lw      $t8, 0x0018($sp)
	move    $a1, $0
	li      $a2, 0x0600
	lh      $t9, 0x0024($t8)
	lh      $t1, 0x002E($t8)
	li      $a3, 0x0600
	subu    $a0, $t9, $t1
	sll     $t2, $a0, 16
	move    $a0, $t2
	sra     $t0, $a0, 16
	jal     convergei
	move    $a0, $t0
	lw      $t3, 0x0018($sp)
	lh      $t4, 0x0024($t3)
	subu    $t5, $t4, $v0
	sh      $t5, 0x002E($t3)
113$:
	jal     pl_move_80264B54
	lw      $a0, 0x0018($sp)
	jal     physics_80255D88
	lw      $a0, 0x0018($sp)
	bnez    $v0, 124$
	nop
	li.u    $a1, 0x010208B5
	li.l    $a1, 0x010208B5
	lw      $a0, 0x0018($sp)
	jal     pl_set_state
	move    $a2, $0
124$:
	lw      $t7, 0x0018($sp)
	li      $at, 0x40000000
	mtc1    $at, $f4
	lwc1    $f18, 0x0054($t7)
	li      $at, 0x47800000
	mtc1    $at, $f8
	div.s   $f6, $f18, $f4
	li      $a1, 0x0072
	move    $a0, $t7
	mul.s   $f10, $f6, $f8
	trunc.w.s $f16, $f10
	mfc1    $a2, $f16
	jal     player_80250B04
	nop
	lw      $a0, 0x0018($sp)
	li      $a1, 0x0009
	jal     pl_move_80263EE4
	li      $a2, 0x002D
	lw      $t8, 0x0018($sp)
	lw      $t9, 0x0008($t8)
	ori     $t1, $t9, 0x0800
	sw      $t1, 0x0008($t8)
	lw      $t2, 0x0018($sp)
	li.u    $a0, 0x14100001
	li.l    $a0, 0x14100001
	lw      $a1, 0x0088($t2)
	jal     Na_SePlay
	addiu   $a1, $a1, 0x0054
	lw      $t0, 0x0018($sp)
	lh      $t4, 0x00AE($t0)
	addiu   $t5, $t4, -0x000A
	sh      $t5, 0x00AE($t0)
	lw      $t3, 0x0018($sp)
	lh      $t7, 0x00AE($t3)
	slti    $at, $t7, 0x0100
	beqz    $at, 166$
	nop
	li.u    $a1, 0x00021311
	li.l    $a1, 0x00021311
	lw      $a0, 0x0018($sp)
	jal     pl_set_state
	move    $a2, $0
166$:
	lw      $t9, 0x0018($sp)
	li      $t6, 0x0008
	lw      $t1, 0x0098($t9)
	sb      $t6, 0x0005($t1)
	b       174$
	move    $v0, $0
	b       174$
	nop
174$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_move_80267C24:
	addiu   $sp, $sp, -0x0008
	lh      $t6, 0x0024($a0)
	lh      $t7, 0x002E($a0)
	subu    $t8, $t6, $t7
	sh      $t8, 0x0006($sp)
	lui     $at, %hi(pl_move_80336AEC)
	lwc1    $f4, %lo(pl_move_80336AEC)($at)
	lwc1    $f6, 0x0020($a0)
	li      $at, 0x42000000
	mtc1    $at, $f10
	mul.s   $f8, $f4, $f6
	lhu     $t9, 0x0006($sp)
	lui     $at, %hi(math_cos)
	lw      $t4, 0x0098($a0)
	sra     $t0, $t9, 4
	sll     $t1, $t0, 2
	addu    $at, $at, $t1
	div.s   $f16, $f8, $f10
	lwc1    $f18, %lo(math_cos)($at)
	mul.s   $f4, $f18, $f16
	trunc.w.s $f6, $f4
	mfc1    $t3, $f6
	nop
	sh      $t3, 0x000C($t4)
	lui     $at, %hi(pl_move_80336AF0)
	lwc1    $f8, %lo(pl_move_80336AF0)($at)
	lwc1    $f10, 0x0020($a0)
	li      $at, 0x42000000
	mtc1    $at, $f16
	mul.s   $f18, $f8, $f10
	lhu     $t5, 0x0006($sp)
	lui     $at, %hi(math_sin)
	lw      $t0, 0x0098($a0)
	sra     $t6, $t5, 4
	sll     $t7, $t6, 2
	addu    $at, $at, $t7
	div.s   $f4, $f18, $f16
	lwc1    $f6, %lo(math_sin)($at)
	mul.s   $f8, $f6, $f4
	neg.s   $f10, $f8
	trunc.w.s $f18, $f10
	mfc1    $t9, $f18
	nop
	sh      $t9, 0x0010($t0)
	b       46$
	nop
46$:
	jr      $ra
	addiu   $sp, $sp, 0x0008

pl_move_80267CE4:
	addiu   $sp, $sp, -0x0048
	sw      $ra, 0x0024($sp)
	sw      $a0, 0x0048($sp)
	sw      $a1, 0x004C($sp)
	sw      $a2, 0x0050($sp)
	sw      $a3, 0x0054($sp)
	sw      $s0, 0x0020($sp)
	sdc1    $f20, 0x0018($sp)
	lw      $a1, 0x0048($sp)
	addiu   $a0, $sp, 0x003C
	jal     vecf_cpy
	addiu   $a1, $a1, 0x003C
	lw      $t6, 0x0048($sp)
	li.u    $at, 0x14000001
	li.l    $at, 0x14000001
	lw      $a0, 0x0014($t6)
	lw      $a1, 0x0088($t6)
	addu    $a0, $a0, $at
	jal     Na_SePlay
	addiu   $a1, $a1, 0x0054
	jal     player_80251274
	lw      $a0, 0x0048($sp)
	jal     physics_80255D88
	lw      $a0, 0x0048($sp)
	move    $s0, $v0
	beqz    $s0, 35$
	nop
	li      $at, 0x0001
	beq     $s0, $at, 62$
	nop
	li      $at, 0x0002
	beq     $s0, $at, 73$
	nop
	b       169$
	nop
35$:
	lw      $a0, 0x0048($sp)
	lw      $a1, 0x0050($sp)
	jal     pl_set_state
	move    $a2, $0
	lw      $t7, 0x0048($sp)
	li      $at, 0xC2480000
	mtc1    $at, $f6
	lwc1    $f4, 0x0054($t7)
	c.lt.s  $f4, $f6
	nop
	bc1t    54$
	nop
	li      $at, 0x42480000
	mtc1    $at, $f8
	nop
	c.lt.s  $f8, $f4
	nop
	bc1f    60$
	nop
54$:
	lw      $t8, 0x0048($sp)
	li.u    $a0, 0x24038081
	li.l    $a0, 0x24038081
	lw      $a1, 0x0088($t8)
	jal     Na_SePlay
	addiu   $a1, $a1, 0x0054
60$:
	b       169$
	nop
62$:
	lw      $a0, 0x0048($sp)
	jal     pl_set_anime
	lw      $a1, 0x0054($sp)
	jal     pl_move_80264024
	lw      $a0, 0x0048($sp)
	lw      $t9, 0x0048($sp)
	lw      $t0, 0x0008($t9)
	ori     $t1, $t0, 0x0001
	sw      $t1, 0x0008($t9)
	b       169$
	nop
73$:
	jal     player_80251BD4
	lw      $a0, 0x0048($sp)
	bnez    $v0, 96$
	nop
	lw      $t2, 0x0048($sp)
	li      $at, 0x41800000
	mtc1    $at, $f16
	lwc1    $f10, 0x0054($t2)
	c.lt.s  $f16, $f10
	nop
	bc1f    89$
	nop
	lw      $t3, 0x0048($sp)
	lw      $t4, 0x0008($t3)
	ori     $t5, $t4, 0x0002
	sw      $t5, 0x0008($t3)
89$:
	li.u    $a1, 0x00020466
	li.l    $a1, 0x00020466
	lw      $a0, 0x0048($sp)
	jal     pl_move_802642B4
	lw      $a2, 0x004C($sp)
	b       165$
	nop
96$:
	lw      $t6, 0x0048($sp)
	lw      $t7, 0x0060($t6)
	beqz    $t7, 165$
	nop
	lw      $t8, 0x0048($sp)
	lw      $t0, 0x0060($t8)
	lwc1    $f12, 0x0024($t0)
	jal     ATAN2
	lwc1    $f14, 0x001C($t0)
	sh      $v0, 0x003A($sp)
	lw      $t1, 0x0048($sp)
	lwc1    $f18, 0x0058($t1)
	lwc1    $f8, 0x005C($t1)
	mul.s   $f6, $f18, $f18
	nop
	mul.s   $f4, $f8, $f8
	jal     sqrtf
	add.s   $f12, $f6, $f4
	swc1    $f0, 0x0034($sp)
	lwc1    $f10, 0x0034($sp)
	lui     $at, %hi(pl_move_80336AF8)
	ldc1    $f18, %lo(pl_move_80336AF8)($at)
	cvt.d.s $f16, $f10
	li      $at, 0x40800000
	mul.d   $f8, $f16, $f18
	mtc1    $at, $f4
	cvt.s.d $f6, $f8
	c.lt.s  $f6, $f4
	swc1    $f6, 0x0034($sp)
	bc1f    131$
	nop
	li      $at, 0x40800000
	mtc1    $at, $f10
	nop
	swc1    $f10, 0x0034($sp)
131$:
	lw      $t9, 0x0048($sp)
	lh      $t4, 0x003A($sp)
	li      $at, 0x8000
	lh      $t2, 0x0038($t9)
	subu    $t5, $t2, $t4
	sll     $t3, $t5, 16
	sra     $t6, $t3, 16
	subu    $t7, $t4, $t6
	addu    $t8, $t7, $at
	sh      $t8, 0x0038($t9)
	lw      $t0, 0x0048($sp)
	lui     $at, %hi(math_sin)
	lwc1    $f18, 0x0034($sp)
	lhu     $t1, 0x0038($t0)
	sra     $t2, $t1, 4
	sll     $t5, $t2, 2
	addu    $at, $at, $t5
	lwc1    $f16, %lo(math_sin)($at)
	mul.s   $f20, $f16, $f18
	swc1    $f20, 0x0058($t0)
	lw      $t3, 0x0048($sp)
	swc1    $f20, 0x0048($t3)
	lw      $t4, 0x0048($sp)
	lui     $at, %hi(math_cos)
	lwc1    $f6, 0x0034($sp)
	lhu     $t6, 0x0038($t4)
	sra     $t7, $t6, 4
	sll     $t8, $t7, 2
	addu    $at, $at, $t8
	lwc1    $f8, %lo(math_cos)($at)
	mul.s   $f20, $f8, $f6
	swc1    $f20, 0x005C($t4)
	lw      $t9, 0x0048($sp)
	swc1    $f20, 0x0050($t9)
165$:
	jal     pl_move_80264024
	lw      $a0, 0x0048($sp)
	b       169$
	nop
169$:
	b       171$
	nop
171$:
	lw      $ra, 0x0024($sp)
	ldc1    $f20, 0x0018($sp)
	lw      $s0, 0x0020($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0048

pl_move_80267FA4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	sw      $a2, 0x0020($sp)
	sw      $a3, 0x0024($sp)
	lw      $t6, 0x0018($sp)
	li      $at, 0x0005
	lhu     $t7, 0x001A($t6)
	bne     $t7, $at, 24$
	nop
	lw      $t8, 0x0018($sp)
	lhu     $t9, 0x0002($t8)
	andi    $t0, $t9, 0x0002
	beqz    $t0, 22$
	nop
	lw      $a0, 0x0018($sp)
	lw      $a1, 0x0020($sp)
	jal     player_802530A0
	move    $a2, $0
	b       48$
	nop
22$:
	b       28$
	nop
24$:
	lw      $t1, 0x0018($sp)
	lhu     $t2, 0x001A($t1)
	addiu   $t3, $t2, 0x0001
	sh      $t3, 0x001A($t1)
28$:
	lw      $a0, 0x0018($sp)
	jal     pl_move_80264740
	li      $a1, 0x40800000
	beqz    $v0, 39$
	nop
	lw      $a0, 0x0018($sp)
	lw      $a1, 0x001C($sp)
	jal     pl_set_state
	move    $a2, $0
	b       48$
	nop
39$:
	lw      $a0, 0x0018($sp)
	lw      $a1, 0x001C($sp)
	lw      $a2, 0x0024($sp)
	jal     pl_move_80267CE4
	lw      $a3, 0x0028($sp)
	b       48$
	move    $v0, $0
	b       48$
	nop
48$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_move_80268074:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	li.u    $a1, 0x0C00023E
	li.u    $a2, 0x03000880
	li.u    $a3, 0x0300088E
	li      $t6, 0x0091
	sw      $t6, 0x0010($sp)
	li.l    $a3, 0x0300088E
	li.l    $a2, 0x03000880
	li.l    $a1, 0x0C00023E
	jal     pl_move_80267FA4
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	jal     pl_move_80267C24
	lw      $a0, 0x0028($sp)
	b       20$
	lw      $v0, 0x0024($sp)
	b       20$
	nop
20$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_move_802680D4:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	lw      $t6, 0x0028($sp)
	lw      $t7, 0x0088($t6)
	lw      $t8, 0x0134($t7)
	andi    $t9, $t8, 0x0008
	beqz    $t9, 16$
	nop
	li.u    $a1, 0x00840452
	li.l    $a1, 0x00840452
	lw      $a0, 0x0028($sp)
	jal     player_80253178
	move    $a2, $0
	b       33$
	nop
16$:
	li.u    $a1, 0x0800043F
	li.u    $a2, 0x030008A0
	li.u    $a3, 0x010008A2
	li      $t0, 0x0045
	sw      $t0, 0x0010($sp)
	li.l    $a3, 0x010008A2
	li.l    $a2, 0x030008A0
	li.l    $a1, 0x0800043F
	jal     pl_move_80267FA4
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	jal     pl_move_80267C24
	lw      $a0, 0x0028($sp)
	b       33$
	lw      $v0, 0x0024($sp)
	b       33$
	nop
33$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_move_80268168:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	lw      $t6, 0x0028($sp)
	lhu     $t7, 0x0002($t6)
	andi    $t8, $t7, 0x0008
	beqz    $t8, 15$
	nop
	li.u    $a1, 0x00840452
	li.l    $a1, 0x00840452
	lw      $a0, 0x0028($sp)
	jal     pl_set_state
	move    $a2, $0
	b       112$
	nop
15$:
	lw      $t9, 0x0028($sp)
	lhu     $t0, 0x001A($t9)
	slti    $at, $t0, 0x001E
	beqz    $at, 44$
	nop
	lw      $t1, 0x0028($sp)
	lhu     $t2, 0x001A($t1)
	addiu   $t3, $t2, 0x0001
	sh      $t3, 0x001A($t1)
	lw      $t4, 0x0028($sp)
	lhu     $t5, 0x0002($t4)
	andi    $t6, $t5, 0x0002
	beqz    $t6, 44$
	nop
	lw      $t7, 0x0028($sp)
	li      $at, 0x41200000
	mtc1    $at, $f6
	lwc1    $f4, 0x0054($t7)
	c.lt.s  $f6, $f4
	nop
	bc1f    44$
	nop
	li.u    $a1, 0x03000888
	li.l    $a1, 0x03000888
	lw      $a0, 0x0028($sp)
	jal     player_802530A0
	move    $a2, $0
	b       112$
	nop
44$:
	lw      $t8, 0x0028($sp)
	lhu     $t9, 0x0002($t8)
	andi    $t0, $t9, 0x2000
	beqz    $t0, 73$
	nop
	lw      $t2, 0x0028($sp)
	li      $at, 0x41200000
	mtc1    $at, $f10
	lwc1    $f8, 0x0054($t2)
	c.le.s  $f10, $f8
	nop
	bc1f    66$
	nop
	li.u    $a1, 0x018008AA
	li.l    $a1, 0x018008AA
	lw      $a0, 0x0028($sp)
	jal     pl_set_state
	move    $a2, $0
	b       112$
	nop
	b       73$
	nop
66$:
	li.u    $a1, 0x00800457
	li.l    $a1, 0x00800457
	lw      $a0, 0x0028($sp)
	jal     pl_set_state
	li      $a2, 0x0009
	b       112$
	nop
73$:
	lw      $t3, 0x0028($sp)
	lhu     $t1, 0x0002($t3)
	andi    $t4, $t1, 0x0002
	beqz    $t4, 85$
	nop
	li.u    $a1, 0x03000880
	li.l    $a1, 0x03000880
	lw      $a0, 0x0028($sp)
	jal     player_802530A0
	move    $a2, $0
	b       112$
	nop
85$:
	lw      $t5, 0x0028($sp)
	lhu     $t6, 0x0002($t5)
	andi    $t7, $t6, 0x0010
	beqz    $t7, 97$
	nop
	li.u    $a1, 0x04000445
	li.l    $a1, 0x04000445
	lw      $a0, 0x0028($sp)
	jal     pl_set_state
	move    $a2, $0
	b       112$
	nop
97$:
	li.u    $a1, 0x0C008220
	li.u    $a2, 0x03000880
	li.u    $a3, 0x0100088C
	li      $t8, 0x0097
	sw      $t8, 0x0010($sp)
	li.l    $a3, 0x0100088C
	li.l    $a2, 0x03000880
	li.l    $a1, 0x0C008220
	jal     pl_move_80267FA4
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       112$
	lw      $v0, 0x0024($sp)
	b       112$
	nop
112$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_move_80268338:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	lhu     $t7, 0x0002($t6)
	andi    $t8, $t7, 0x0002
	beqz    $t8, 16$
	nop
	li.u    $a1, 0x010008A6
	li.l    $a1, 0x010008A6
	lw      $a0, 0x0028($sp)
	jal     player_802530A0
	move    $a2, $0
	b       88$
	nop
16$:
	lw      $a0, 0x0028($sp)
	jal     pl_set_anime
	li      $a1, 0x008C
	jal     player_80250940
	lw      $a0, 0x0028($sp)
	beqz    $v0, 38$
	nop
	lw      $t9, 0x0028($sp)
	li      $at, 0x3F800000
	mtc1    $at, $f6
	lwc1    $f4, 0x0054($t9)
	c.lt.s  $f4, $f6
	nop
	bc1f    38$
	nop
	li.u    $a1, 0x08000225
	li.l    $a1, 0x08000225
	lw      $a0, 0x0028($sp)
	jal     pl_set_state
	move    $a2, $0
	b       88$
	nop
38$:
	lw      $a0, 0x0028($sp)
	jal     pl_move_80264740
	li      $a1, 0x3F800000
	jal     physics_80255D88
	lw      $a0, 0x0028($sp)
	move    $s0, $v0
	beqz    $s0, 51$
	nop
	li      $at, 0x0002
	beq     $s0, $at, 58$
	nop
	b       72$
	nop
51$:
	li.u    $a1, 0x0100088C
	li.l    $a1, 0x0100088C
	lw      $a0, 0x0028($sp)
	jal     pl_set_state
	li      $a2, 0x0002
	b       72$
	nop
58$:
	lw      $a0, 0x0028($sp)
	jal     physics_802552FC
	li      $a1, 0x0001
	lw      $t0, 0x0028($sp)
	lw      $t1, 0x0008($t0)
	ori     $t2, $t1, 0x0002
	sw      $t2, 0x0008($t0)
	li.u    $a1, 0x00020462
	li.l    $a1, 0x00020462
	lw      $a0, 0x0028($sp)
	jal     pl_set_state
	move    $a2, $0
	b       72$
	nop
72$:
	lw      $t3, 0x0028($sp)
	li.u    $at, 0x14000001
	li.l    $at, 0x14000001
	lw      $a0, 0x0014($t3)
	lw      $a1, 0x0088($t3)
	addu    $a0, $a0, $at
	jal     Na_SePlay
	addiu   $a1, $a1, 0x0054
	lw      $t4, 0x0028($sp)
	lw      $t5, 0x0008($t4)
	ori     $t6, $t5, 0x0001
	sw      $t6, 0x0008($t4)
	b       88$
	move    $v0, $0
	b       88$
	nop
88$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_move_802684AC:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sw      $a2, 0x0030($sp)
	sw      $a3, 0x0034($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	li      $at, 0x0005
	lhu     $t7, 0x001A($t6)
	bne     $t7, $at, 40$
	nop
	lw      $t8, 0x0028($sp)
	lhu     $t9, 0x0002($t8)
	andi    $t0, $t9, 0x0008
	bnez    $t0, 38$
	nop
	andi    $t1, $t9, 0x2002
	beqz    $t1, 38$
	nop
	lw      $t2, 0x0028($sp)
	mtc1    $0, $f6
	lwc1    $f4, 0x0054($t2)
	c.le.s  $f6, $f4
	nop
	bc1f    30$
	nop
	li.u    $s0, 0x010008A6
	b       32$
	li.l    $s0, 0x010008A6
30$:
	li.u    $s0, 0x010008AD
	li.l    $s0, 0x010008AD
32$:
	lw      $a0, 0x0028($sp)
	move    $a1, $s0
	jal     player_80253178
	move    $a2, $0
	b       64$
	nop
38$:
	b       44$
	nop
40$:
	lw      $t3, 0x0028($sp)
	lhu     $t4, 0x001A($t3)
	addiu   $t5, $t4, 0x0001
	sh      $t5, 0x001A($t3)
44$:
	lw      $a0, 0x0028($sp)
	jal     pl_move_80264740
	li      $a1, 0x40800000
	beqz    $v0, 55$
	nop
	lw      $a0, 0x0028($sp)
	lw      $a1, 0x002C($sp)
	jal     pl_set_state
	move    $a2, $0
	b       64$
	nop
55$:
	lw      $a0, 0x0028($sp)
	lw      $a1, 0x002C($sp)
	lw      $a2, 0x0030($sp)
	jal     pl_move_80267CE4
	lw      $a3, 0x0034($sp)
	b       64$
	move    $v0, $0
	b       64$
	nop
64$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_move_802685C0:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	li.u    $a2, 0x0100088C
	li.l    $a2, 0x0100088C
	lw      $a0, 0x0020($sp)
	li      $a1, 0x0386
	jal     pl_move_802684AC
	li      $a3, 0x0089
	sw      $v0, 0x001C($sp)
	b       14$
	lw      $v0, 0x001C($sp)
	b       14$
	nop
14$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

pl_move_80268608:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lw      $t6, 0x0020($sp)
	lw      $t7, 0x0088($t6)
	lw      $t8, 0x0134($t7)
	andi    $t9, $t8, 0x0008
	beqz    $t9, 16$
	nop
	li.u    $a1, 0x008C0453
	li.l    $a1, 0x008C0453
	lw      $a0, 0x0020($sp)
	jal     player_80253178
	move    $a2, $0
	b       27$
	nop
16$:
	li.u    $a2, 0x010008A1
	li.l    $a2, 0x010008A1
	lw      $a0, 0x0020($sp)
	li      $a1, 0x0385
	jal     pl_move_802684AC
	li      $a3, 0x0089
	sw      $v0, 0x001C($sp)
	b       27$
	lw      $v0, 0x001C($sp)
	b       27$
	nop
27$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

pl_move_80268684:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	lhu     $t7, 0x0002($t6)
	andi    $t8, $t7, 0x0008
	bnez    $t8, 30$
	nop
	andi    $t9, $t7, 0x2002
	beqz    $t9, 30$
	nop
	lw      $t0, 0x0028($sp)
	mtc1    $0, $f6
	lwc1    $f4, 0x0054($t0)
	c.lt.s  $f6, $f4
	nop
	bc1f    22$
	nop
	li.u    $s0, 0x010008A6
	b       24$
	li.l    $s0, 0x010008A6
22$:
	li.u    $s0, 0x010008AD
	li.l    $s0, 0x010008AD
24$:
	lw      $a0, 0x0028($sp)
	move    $a1, $s0
	jal     pl_set_state
	move    $a2, $0
	b       72$
	nop
30$:
	li.u    $a1, 0x04188081
	li.l    $a1, 0x04188081
	jal     player_80251510
	lw      $a0, 0x0028($sp)
	lw      $a0, 0x0028($sp)
	jal     pl_move_80264740
	li      $a1, 0x41000000
	beqz    $v0, 50$
	nop
	jal     player_80250940
	lw      $a0, 0x0028($sp)
	beqz    $v0, 50$
	nop
	lw      $a0, 0x0028($sp)
	jal     player_80251708
	li      $a1, 0x0000
	lw      $a0, 0x0028($sp)
	li      $a1, 0x0386
	jal     pl_set_state
	move    $a2, $0
50$:
	jal     collision_8024CC7C
	lw      $a0, 0x0028($sp)
	beqz    $v0, 62$
	nop
	jal     collision_8024C66C
	lw      $a0, 0x0028($sp)
	lw      $t2, 0x0028($sp)
	li      $t1, 0x0001
	lw      $t3, 0x0098($t2)
	sb      $t1, 0x000A($t3)
	b       72$
	li      $v0, 0x0001
62$:
	li.u    $a2, 0x0100088C
	li.l    $a2, 0x0100088C
	lw      $a0, 0x0028($sp)
	li      $a1, 0x0386
	jal     pl_move_80267CE4
	li      $a3, 0x0088
	b       72$
	move    $v0, $0
	b       72$
	nop
72$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_move_802687B8:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	sw      $a2, 0x0028($sp)
	sw      $a3, 0x002C($sp)
	lw      $t6, 0x002C($sp)
	beqz    $t6, 13$
	nop
	li.u    $a1, 0x04188081
	li.l    $a1, 0x04188081
	jal     player_802515D8
	lw      $a0, 0x0020($sp)
13$:
	lw      $t7, 0x0030($sp)
	blez    $t7, 23$
	nop
	li.u    $a1, 0x240AFF81
	li.l    $a1, 0x240AFF81
	lw      $a0, 0x0020($sp)
	jal     player_80251120
	li      $a2, 0x00020000
	b       28$
	nop
23$:
	li.u    $a1, 0x240BD081
	li.l    $a1, 0x240BD081
	lw      $a0, 0x0020($sp)
	jal     player_80251120
	li      $a2, 0x00020000
28$:
	lw      $t8, 0x0020($sp)
	li      $at, 0x42000000
	mtc1    $at, $f6
	lwc1    $f4, 0x0054($t8)
	c.lt.s  $f6, $f4
	nop
	bc1f    40$
	nop
	li      $at, 0x42000000
	mtc1    $at, $f8
	lw      $t9, 0x0020($sp)
	swc1    $f8, 0x0054($t9)
40$:
	lw      $t0, 0x0020($sp)
	li      $at, 0xC2000000
	mtc1    $at, $f16
	lwc1    $f10, 0x0054($t0)
	c.lt.s  $f10, $f16
	nop
	bc1f    52$
	nop
	li      $at, 0xC2000000
	mtc1    $at, $f18
	lw      $t1, 0x0020($sp)
	swc1    $f18, 0x0054($t1)
52$:
	lw      $a0, 0x0020($sp)
	jal     pl_set_anime
	lw      $a1, 0x0024($sp)
	sw      $v0, 0x001C($sp)
	lw      $t2, 0x001C($sp)
	lw      $t3, 0x0028($sp)
	slt     $at, $t2, $t3
	beqz    $at, 67$
	nop
	li.u    $a1, 0x3F666666
	li.l    $a1, 0x3F666666
	jal     pl_move_80264D80
	lw      $a0, 0x0020($sp)
	b       84$
	nop
67$:
	lw      $t4, 0x0020($sp)
	mtc1    $0, $f6
	lwc1    $f4, 0x0054($t4)
	c.le.s  $f6, $f4
	nop
	bc1f    80$
	nop
	li.u    $a1, 0x3DCCCCCD
	li.l    $a1, 0x3DCCCCCD
	jal     player_80251708
	lw      $a0, 0x0020($sp)
	b       84$
	nop
80$:
	li.u    $a1, 0xBDCCCCCD
	li.l    $a1, 0xBDCCCCCD
	jal     player_80251708
	lw      $a0, 0x0020($sp)
84$:
	jal     physics_80255D88
	lw      $a0, 0x0020($sp)
	bnez    $v0, 109$
	nop
	lw      $t5, 0x0020($sp)
	mtc1    $0, $f10
	lwc1    $f8, 0x0054($t5)
	c.le.s  $f10, $f8
	nop
	bc1f    102$
	nop
	li.u    $a1, 0x010208B1
	li.l    $a1, 0x010208B1
	lw      $a0, 0x0020($sp)
	jal     pl_set_state
	lw      $a2, 0x0030($sp)
	b       107$
	nop
102$:
	li.u    $a1, 0x010208B0
	li.l    $a1, 0x010208B0
	lw      $a0, 0x0020($sp)
	jal     pl_set_state
	lw      $a2, 0x0030($sp)
107$:
	b       136$
	nop
109$:
	jal     player_80250940
	lw      $a0, 0x0020($sp)
	beqz    $v0, 136$
	nop
	lw      $t6, 0x0020($sp)
	lh      $t7, 0x00AE($t6)
	slti    $at, $t7, 0x0100
	beqz    $at, 125$
	nop
	li.u    $a1, 0x00021311
	li.l    $a1, 0x00021311
	lw      $a0, 0x0020($sp)
	jal     pl_set_state
	move    $a2, $0
	b       136$
	nop
125$:
	lw      $t8, 0x0030($sp)
	blez    $t8, 131$
	nop
	lw      $t0, 0x0020($sp)
	li      $t9, 0x001E
	sh      $t9, 0x0026($t0)
131$:
	li.u    $a1, 0x0C400201
	li.l    $a1, 0x0C400201
	lw      $a0, 0x0020($sp)
	jal     pl_set_state
	move    $a2, $0
136$:
	b       140$
	lw      $v0, 0x001C($sp)
	b       140$
	nop
140$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

pl_move_802689F8:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	lw      $t6, 0x0028($sp)
	li      $a1, 0x0001
	li      $a2, 0x002B
	lw      $t7, 0x001C($t6)
	li      $a3, 0x0001
	move    $a0, $t6
	jal     pl_move_802687B8
	sw      $t7, 0x0010($sp)
	sw      $v0, 0x0024($sp)
	lw      $t8, 0x0024($sp)
	li      $at, 0x002B
	bne     $t8, $at, 26$
	nop
	lw      $t9, 0x0028($sp)
	lh      $t0, 0x00AE($t9)
	slti    $at, $t0, 0x0100
	beqz    $at, 26$
	nop
	li.u    $a1, 0x00021316
	li.l    $a1, 0x00021316
	lw      $a0, 0x0028($sp)
	jal     pl_set_state
	move    $a2, $0
26$:
	lw      $t1, 0x0024($sp)
	li      $at, 0x0036
	bne     $t1, $at, 41$
	nop
	lw      $t2, 0x0028($sp)
	li      $at, 0x192C
	lw      $t3, 0x0010($t2)
	bne     $t3, $at, 41$
	nop
	lw      $t4, 0x0028($sp)
	li.u    $a0, 0x24208081
	li.l    $a0, 0x24208081
	lw      $a1, 0x0088($t4)
	jal     Na_SePlay
	addiu   $a1, $a1, 0x0054
41$:
	lw      $t5, 0x0024($sp)
	li      $at, 0x0045
	bne     $t5, $at, 49$
	nop
	li.u    $a1, 0x04088081
	li.l    $a1, 0x04088081
	jal     player_80251510
	lw      $a0, 0x0028($sp)
49$:
	b       53$
	move    $v0, $0
	b       53$
	nop
53$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_move_80268ADC:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	lw      $t6, 0x0028($sp)
	li      $a1, 0x002C
	li      $a2, 0x0015
	lw      $t7, 0x001C($t6)
	li      $a3, 0x0001
	move    $a0, $t6
	jal     pl_move_802687B8
	sw      $t7, 0x0010($sp)
	sw      $v0, 0x0024($sp)
	lw      $t8, 0x0024($sp)
	li      $at, 0x0017
	bne     $t8, $at, 26$
	nop
	lw      $t9, 0x0028($sp)
	lh      $t0, 0x00AE($t9)
	slti    $at, $t0, 0x0100
	beqz    $at, 26$
	nop
	li.u    $a1, 0x00021315
	li.l    $a1, 0x00021315
	lw      $a0, 0x0028($sp)
	jal     pl_set_state
	move    $a2, $0
26$:
	b       30$
	move    $v0, $0
	b       30$
	nop
30$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_move_80268B64:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0020($sp)
	lw      $t6, 0x0020($sp)
	li      $a1, 0x007B
	li      $a2, 0x0016
	lw      $t7, 0x001C($t6)
	li      $a3, 0x0001
	move    $a0, $t6
	jal     pl_move_802687B8
	sw      $t7, 0x0010($sp)
	b       15$
	move    $v0, $0
	b       15$
	nop
15$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

pl_move_80268BB0:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0020($sp)
	lw      $t6, 0x0020($sp)
	li      $a1, 0x007C
	li      $a2, 0x0014
	lw      $t7, 0x001C($t6)
	li      $a3, 0x0001
	move    $a0, $t6
	jal     pl_move_802687B8
	sw      $t7, 0x0010($sp)
	b       15$
	move    $v0, $0
	b       15$
	nop
15$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

pl_move_80268BFC:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0020($sp)
	lw      $t6, 0x0020($sp)
	li      $a1, 0x0074
	li      $a2, 0x0064
	lw      $t7, 0x001C($t6)
	move    $a3, $0
	move    $a0, $t6
	jal     pl_move_802687B8
	sw      $t7, 0x0010($sp)
	b       15$
	move    $v0, $0
	b       15$
	nop
15$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

pl_move_80268C48:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0020($sp)
	lw      $t6, 0x0020($sp)
	li      $a1, 0x0075
	li      $a2, 0x0064
	lw      $t7, 0x001C($t6)
	move    $a3, $0
	move    $a0, $t6
	jal     pl_move_802687B8
	sw      $t7, 0x0010($sp)
	b       15$
	move    $v0, $0
	b       15$
	nop
15$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

pl_move_80268C94:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	lw      $t6, 0x0028($sp)
	li      $a1, 0x008A
	li      $a2, 0x0020
	lw      $t7, 0x001C($t6)
	li      $a3, 0x0001
	move    $a0, $t6
	jal     pl_move_802687B8
	sw      $t7, 0x0010($sp)
	sw      $v0, 0x0024($sp)
	lw      $t8, 0x0024($sp)
	li      $at, 0x0020
	bne     $t8, $at, 20$
	nop
	li.u    $a1, 0x04088081
	li.l    $a1, 0x04088081
	jal     player_802514AC
	lw      $a0, 0x0028($sp)
20$:
	b       24$
	move    $v0, $0
	b       24$
	nop
24$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_move_80268D04:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	li.u    $a1, 0x3F666666
	li.l    $a1, 0x3F666666
	jal     pl_move_80264D80
	lw      $a0, 0x0020($sp)
	li.u    $a1, 0x04188081
	li.l    $a1, 0x04188081
	jal     player_802515D8
	lw      $a0, 0x0020($sp)
	lw      $a0, 0x0020($sp)
	jal     pl_set_anime
	li      $a1, 0x0001
	sw      $v0, 0x001C($sp)
	lw      $t6, 0x001C($sp)
	li      $at, 0x0036
	bne     $t6, $at, 25$
	nop
	lw      $t7, 0x0020($sp)
	li.u    $a0, 0x24208081
	li.l    $a0, 0x24208081
	lw      $a1, 0x0088($t7)
	jal     Na_SePlay
	addiu   $a1, $a1, 0x0054
25$:
	lw      $t8, 0x001C($sp)
	li      $at, 0x0044
	bne     $t8, $at, 33$
	nop
	li.u    $a1, 0x04088081
	li.l    $a1, 0x04088081
	jal     player_802514AC
	lw      $a0, 0x0020($sp)
33$:
	jal     player_80250940
	lw      $a0, 0x0020($sp)
	beqz    $v0, 42$
	nop
	li.u    $a1, 0x0C400201
	li.l    $a1, 0x0C400201
	lw      $a0, 0x0020($sp)
	jal     pl_set_state
	move    $a2, $0
42$:
	b       46$
	move    $v0, $0
	b       46$
	nop
46$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

pl_move_80268DCC:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sw      $a2, 0x0030($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	lhu     $t7, 0x0002($t6)
	andi    $t8, $t7, 0x0001
	beqz    $t8, 17$
	nop
	li.u    $a1, 0x3F7AE148
	li.l    $a1, 0x3F7AE148
	jal     pl_move_80264D80
	lw      $a0, 0x0028($sp)
	b       33$
	nop
17$:
	lw      $t9, 0x0028($sp)
	li      $at, 0x41800000
	mtc1    $at, $f6
	lwc1    $f4, 0x0054($t9)
	c.le.s  $f6, $f4
	nop
	bc1f    30$
	nop
	lw      $a0, 0x0028($sp)
	jal     pl_move_80265080
	li      $a1, 0x40000000
	b       33$
	nop
30$:
	mtc1    $0, $f8
	lw      $t0, 0x0028($sp)
	swc1    $f8, 0x004C($t0)
33$:
	jal     physics_80255D88
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	lw      $s0, 0x0024($sp)
	beqz    $s0, 44$
	nop
	li      $at, 0x0002
	beq     $s0, $at, 50$
	nop
	b       55$
	nop
44$:
	lw      $a0, 0x0028($sp)
	lw      $a1, 0x0030($sp)
	jal     pl_set_state
	move    $a2, $0
	b       55$
	nop
50$:
	lw      $a0, 0x0028($sp)
	jal     pl_set_anime
	li      $a1, 0x006C
	b       55$
	nop
55$:
	lw      $t1, 0x0028($sp)
	li      $at, 0x41800000
	mtc1    $at, $f16
	lwc1    $f10, 0x0054($t1)
	c.lt.s  $f16, $f10
	nop
	bc1f    67$
	nop
	lw      $t2, 0x0028($sp)
	lw      $t3, 0x0008($t2)
	ori     $t4, $t3, 0x0001
	sw      $t4, 0x0008($t2)
67$:
	lw      $a0, 0x0028($sp)
	jal     pl_set_anime
	lh      $a1, 0x002E($sp)
	li.u    $a1, 0x04088081
	li.l    $a1, 0x04088081
	jal     player_80251510
	lw      $a0, 0x0028($sp)
	lw      $t5, 0x0028($sp)
	lw      $t6, 0x0068($t5)
	lh      $t7, 0x0000($t6)
	slti    $at, $t7, 0x0021
	bnez    $at, 98$
	nop
	slti    $at, $t7, 0x0028
	beqz    $at, 98$
	nop
	lw      $t8, 0x0028($sp)
	li      $t0, 0x0004
	li      $at, 0x40600000
	lhu     $t9, 0x001A($t8)
	mtc1    $at, $f6
	li      $at, 0x3F000000
	subu    $t1, $t0, $t9
	mtc1    $t1, $f18
	mtc1    $at, $f10
	cvt.s.w $f4, $f18
	lwc1    $f18, 0x00C0($t8)
	mul.s   $f8, $f4, $f6
	sub.s   $f16, $f8, $f10
	add.s   $f4, $f18, $f16
	swc1    $f4, 0x00C0($t8)
98$:
	b       102$
	lw      $v0, 0x0024($sp)
	b       102$
	nop
102$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_move_80268F78:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	sw      $a2, 0x0020($sp)
	lw      $t6, 0x0018($sp)
	lui     $at, %hi(pl_move_80336B00)
	lwc1    $f6, %lo(pl_move_80336B00)($at)
	lw      $t7, 0x0068($t6)
	lwc1    $f4, 0x0020($t7)
	c.lt.s  $f4, $f6
	nop
	bc1f    21$
	nop
	lw      $t8, 0x001C($sp)
	lw      $a0, 0x0018($sp)
	move    $a2, $0
	jal     physics_80255654
	lw      $a1, 0x0004($t8)
	b       96$
	nop
21$:
	lw      $t9, 0x001C($sp)
	lw      $t1, 0x0018($sp)
	lh      $t0, 0x0002($t9)
	sb      $t0, 0x002B($t1)
	jal     pl_move_80265458
	lw      $a0, 0x0018($sp)
	beqz    $v0, 36$
	nop
	lw      $t2, 0x001C($sp)
	lw      $a0, 0x0018($sp)
	move    $a2, $0
	jal     pl_set_state
	lw      $a1, 0x0014($t2)
	b       96$
	nop
36$:
	lw      $t3, 0x0018($sp)
	lhu     $t4, 0x0002($t3)
	andi    $t5, $t4, 0x0010
	beqz    $t5, 48$
	nop
	lw      $t6, 0x001C($sp)
	lw      $a0, 0x0018($sp)
	move    $a2, $0
	jal     pl_set_state
	lw      $a1, 0x0008($t6)
	b       96$
	nop
48$:
	lw      $t7, 0x0018($sp)
	lhu     $t8, 0x001A($t7)
	addiu   $t9, $t8, 0x0001
	sh      $t9, 0x001A($t7)
	lw      $t2, 0x001C($sp)
	lw      $t0, 0x0018($sp)
	lh      $t3, 0x0000($t2)
	lhu     $t1, 0x001A($t0)
	slt     $at, $t1, $t3
	bnez    $at, 66$
	nop
	lw      $t4, 0x001C($sp)
	lw      $a0, 0x0018($sp)
	move    $a2, $0
	jal     pl_set_state
	lw      $a1, 0x0008($t4)
	b       96$
	nop
66$:
	lw      $t5, 0x0018($sp)
	lhu     $t6, 0x0002($t5)
	andi    $t8, $t6, 0x0002
	beqz    $t8, 80$
	nop
	lw      $t9, 0x001C($sp)
	lw      $a0, 0x0018($sp)
	move    $a2, $0
	lw      $a1, 0x000C($t9)
	lw      $t9, 0x0020($sp)
	jalr    $t9
	nop
	b       96$
	nop
80$:
	lw      $t7, 0x0018($sp)
	lhu     $t0, 0x0002($t7)
	andi    $t2, $t0, 0x0004
	beqz    $t2, 92$
	nop
	lw      $t1, 0x001C($sp)
	lw      $a0, 0x0018($sp)
	move    $a2, $0
	jal     pl_set_state
	lw      $a1, 0x0010($t1)
	b       96$
	nop
92$:
	b       96$
	move    $v0, $0
	b       96$
	nop
96$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_move_80269108:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	la.u    $a1, pl_move_8032DC50
	la.u    $a2, player_802530A0
	la.l    $a2, player_802530A0
	la.l    $a1, pl_move_8032DC50
	jal     pl_move_80268F78
	lw      $a0, 0x0018($sp)
	beqz    $v0, 13$
	nop
	b       22$
	li      $v0, 0x0001
13$:
	li.u    $a2, 0x0100088C
	li.l    $a2, 0x0100088C
	lw      $a0, 0x0018($sp)
	jal     pl_move_80268DCC
	li      $a1, 0x004E
	b       22$
	move    $v0, $0
	b       22$
	nop
22$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_move_80269170:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	la.u    $a1, pl_move_8032DC68
	la.u    $a2, player_802530A0
	la.l    $a2, player_802530A0
	la.l    $a1, pl_move_8032DC68
	jal     pl_move_80268F78
	lw      $a0, 0x0018($sp)
	beqz    $v0, 13$
	nop
	b       22$
	li      $v0, 0x0001
13$:
	li.u    $a2, 0x0100088C
	li.l    $a2, 0x0100088C
	lw      $a0, 0x0018($sp)
	jal     pl_move_80268DCC
	li      $a1, 0x0057
	b       22$
	move    $v0, $0
	b       22$
	nop
22$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_move_802691D8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	la.u    $a1, pl_move_8032DC80
	la.u    $a2, player_802530A0
	la.l    $a2, player_802530A0
	la.l    $a1, pl_move_8032DC80
	jal     pl_move_80268F78
	lw      $a0, 0x0018($sp)
	beqz    $v0, 13$
	nop
	b       31$
	li      $v0, 0x0001
13$:
	li.u    $a2, 0x0100088C
	li.l    $a2, 0x0100088C
	lw      $a0, 0x0018($sp)
	jal     pl_move_80268DCC
	li      $a1, 0x00BE
	li      $at, 0x0002
	beq     $v0, $at, 27$
	nop
	lw      $t6, 0x0018($sp)
	li      $at, 0x8000
	lw      $t7, 0x0088($t6)
	lh      $t8, 0x001C($t7)
	addu    $t9, $t8, $at
	sh      $t9, 0x001C($t7)
27$:
	b       31$
	move    $v0, $0
	b       31$
	nop
31$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_move_80269264:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	lw      $t7, 0x0088($t6)
	lw      $t8, 0x0134($t7)
	andi    $t9, $t8, 0x0008
	beqz    $t9, 16$
	nop
	li.u    $a1, 0x0C000230
	li.l    $a1, 0x0C000230
	lw      $a0, 0x0018($sp)
	jal     player_80253178
	move    $a2, $0
	b       35$
	nop
16$:
	la.u    $a1, pl_move_8032DC98
	la.u    $a2, player_802530A0
	la.l    $a2, player_802530A0
	la.l    $a1, pl_move_8032DC98
	jal     pl_move_80268F78
	lw      $a0, 0x0018($sp)
	beqz    $v0, 26$
	nop
	b       35$
	li      $v0, 0x0001
26$:
	li.u    $a2, 0x010008A1
	li.l    $a2, 0x010008A1
	lw      $a0, 0x0018($sp)
	jal     pl_move_80268DCC
	li      $a1, 0x0040
	b       35$
	move    $v0, $0
	b       35$
	nop
35$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_move_80269300:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	lw      $t7, 0x0088($t6)
	lw      $t8, 0x0134($t7)
	andi    $t9, $t8, 0x0008
	beqz    $t9, 16$
	nop
	li.u    $a1, 0x0C000232
	li.l    $a1, 0x0C000232
	lw      $a0, 0x0018($sp)
	jal     player_80253178
	move    $a2, $0
	b       35$
	nop
16$:
	la.u    $a1, pl_move_8032DCB0
	la.u    $a2, player_802530A0
	la.l    $a2, player_802530A0
	la.l    $a1, pl_move_8032DCB0
	jal     pl_move_80268F78
	lw      $a0, 0x0018($sp)
	beqz    $v0, 26$
	nop
	b       35$
	li      $v0, 0x0001
26$:
	li.u    $a2, 0x010008A1
	li.l    $a2, 0x010008A1
	lw      $a0, 0x0018($sp)
	jal     pl_move_80268DCC
	li      $a1, 0x0042
	b       35$
	move    $v0, $0
	b       35$
	nop
35$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_move_8026939C:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	lhu     $t7, 0x0002($t6)
	andi    $t8, $t7, 0x4000
	bnez    $t8, 14$
	nop
	lw      $t9, 0x0028($sp)
	li      $at, -0x0003
	lhu     $t0, 0x0002($t9)
	and     $t1, $t0, $at
	sh      $t1, 0x0002($t9)
14$:
	la.u    $a1, pl_move_8032DCC8
	la.u    $a2, player_802530A0
	la.l    $a2, player_802530A0
	la.l    $a1, pl_move_8032DCC8
	jal     pl_move_80268F78
	lw      $a0, 0x0028($sp)
	beqz    $v0, 24$
	nop
	b       51$
	li      $v0, 0x0001
24$:
	lw      $t2, 0x0028($sp)
	lhu     $t3, 0x0002($t2)
	andi    $t4, $t3, 0x0001
	bnez    $t4, 34$
	nop
	li.u    $a1, 0x24138081
	li.l    $a1, 0x24138081
	lw      $a0, 0x0028($sp)
	jal     player_80251120
	li      $a2, 0x00020000
34$:
	lw      $t5, 0x0028($sp)
	lw      $t6, 0x0088($t5)
	lw      $t7, 0x0110($t6)
	bnez    $t7, 41$
	nop
	b       42$
	li      $s0, 0x0011
41$:
	li      $s0, 0x0012
42$:
	li.u    $a2, 0x0100088C
	li.l    $a2, 0x0100088C
	lw      $a0, 0x0028($sp)
	jal     pl_move_80268DCC
	move    $a1, $s0
	b       51$
	move    $v0, $0
	b       51$
	nop
51$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_move_8026947C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	la.u    $a1, pl_move_8032DCE0
	la.u    $a2, pl_move_80264340
	la.l    $a2, pl_move_80264340
	la.l    $a1, pl_move_8032DCE0
	jal     pl_move_80268F78
	lw      $a0, 0x0018($sp)
	beqz    $v0, 13$
	nop
	b       22$
	li      $v0, 0x0001
13$:
	li.u    $a2, 0x0100088C
	li.l    $a2, 0x0100088C
	lw      $a0, 0x0018($sp)
	jal     pl_move_80268DCC
	li      $a1, 0x004B
	b       22$
	move    $v0, $0
	b       22$
	nop
22$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_move_802694E4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	li      $at, -0x0003
	lhu     $t7, 0x0002($t6)
	and     $t8, $t7, $at
	sh      $t8, 0x0002($t6)
	la.u    $a1, pl_move_8032DCF8
	la.u    $a2, player_802530A0
	la.l    $a2, player_802530A0
	la.l    $a1, pl_move_8032DCF8
	jal     pl_move_80268F78
	lw      $a0, 0x0018($sp)
	beqz    $v0, 18$
	nop
	b       37$
	li      $v0, 0x0001
18$:
	lw      $t9, 0x0018($sp)
	lhu     $t0, 0x0002($t9)
	andi    $t1, $t0, 0x0001
	bnez    $t1, 28$
	nop
	li.u    $a1, 0x24118081
	li.l    $a1, 0x24118081
	lw      $a0, 0x0018($sp)
	jal     player_80251120
	li      $a2, 0x00020000
28$:
	li.u    $a2, 0x0100088C
	li.l    $a2, 0x0100088C
	lw      $a0, 0x0018($sp)
	jal     pl_move_80268DCC
	li      $a1, 0x00C0
	b       37$
	move    $v0, $0
	b       37$
	nop
37$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_move_80269588:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	lhu     $t7, 0x0002($t6)
	andi    $t8, $t7, 0x4000
	bnez    $t8, 13$
	nop
	lw      $t9, 0x0018($sp)
	li      $at, -0x0003
	lhu     $t0, 0x0002($t9)
	and     $t1, $t0, $at
	sh      $t1, 0x0002($t9)
13$:
	la.u    $a1, pl_move_8032DD10
	la.u    $a2, player_802530A0
	la.l    $a2, player_802530A0
	la.l    $a1, pl_move_8032DD10
	jal     pl_move_80268F78
	lw      $a0, 0x0018($sp)
	beqz    $v0, 23$
	nop
	b       42$
	li      $v0, 0x0001
23$:
	lw      $t2, 0x0018($sp)
	lhu     $t3, 0x0002($t2)
	andi    $t4, $t3, 0x0001
	bnez    $t4, 33$
	nop
	li.u    $a1, 0x24118081
	li.l    $a1, 0x24118081
	lw      $a0, 0x0018($sp)
	jal     player_80251120
	li      $a2, 0x00020000
33$:
	li.u    $a2, 0x0100088C
	li.l    $a2, 0x0100088C
	lw      $a0, 0x0018($sp)
	jal     pl_move_80268DCC
	li      $a1, 0x00C0
	b       42$
	move    $v0, $0
	b       42$
	nop
42$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_move_80269640:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sw      $a2, 0x0030($sp)
	sw      $a3, 0x0034($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	lhu     $s0, 0x001A($t6)
	lhu     $t8, 0x001A($t6)
	slti    $t7, $s0, 0x0006
	move    $s0, $t7
	addiu   $t9, $t8, 0x0001
	beqz    $s0, 47$
	sh      $t9, 0x001A($t6)
	lw      $t0, 0x0028($sp)
	li      $t2, 0x0007
	lui     $at, %hi(pl_move_80336B04)
	lhu     $t1, 0x001A($t0)
	lwc1    $f8, %lo(pl_move_80336B04)($at)
	lwc1    $f16, 0x00C0($t0)
	subu    $t3, $t2, $t1
	mtc1    $t3, $f4
	nop
	cvt.s.w $f6, $f4
	mul.s   $f10, $f6, $f8
	sub.s   $f18, $f16, $f10
	swc1    $f18, 0x00C0($t0)
	lw      $t4, 0x0028($sp)
	li      $at, 0x3F800000
	mtc1    $at, $f6
	lwc1    $f4, 0x00C0($t4)
	c.lt.s  $f4, $f6
	nop
	bc1f    40$
	nop
	lui     $at, %hi(pl_move_80336B08)
	lwc1    $f8, %lo(pl_move_80336B08)($at)
	lw      $t5, 0x0028($sp)
	swc1    $f8, 0x00C0($t5)
40$:
	jal     player_8025118C
	lw      $a0, 0x0028($sp)
	lw      $a0, 0x0028($sp)
	jal     pl_set_anime
	lw      $a1, 0x002C($sp)
	b       61$
	nop
47$:
	lw      $t7, 0x0028($sp)
	lhu     $t8, 0x001A($t7)
	slti    $at, $t8, 0x000D
	bnez    $at, 58$
	nop
	lw      $a0, 0x0028($sp)
	lw      $a1, 0x0034($sp)
	jal     pl_set_state
	move    $a2, $0
	b       77$
	nop
58$:
	lw      $a0, 0x0028($sp)
	jal     pl_set_anime
	lw      $a1, 0x0030($sp)
61$:
	li.u    $a1, 0x3F733333
	li.l    $a1, 0x3F733333
	jal     pl_move_80264D80
	lw      $a0, 0x0028($sp)
	jal     physics_80255D88
	lw      $a0, 0x0028($sp)
	bnez    $v0, 73$
	nop
	lw      $a0, 0x0028($sp)
	lw      $a1, 0x0038($sp)
	jal     pl_set_state
	move    $a2, $0
73$:
	b       77$
	move    $v0, $0
	b       77$
	nop
77$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_move_80269788:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	li.u    $t6, 0x0100088C
	li.l    $t6, 0x0100088C
	li.u    $a3, 0x0C000230
	li.l    $a3, 0x0C000230
	sw      $t6, 0x0010($sp)
	lw      $a0, 0x0028($sp)
	li      $a1, 0x004D
	jal     pl_move_80269640
	li      $a2, 0x004E
	sw      $v0, 0x0024($sp)
	b       17$
	lw      $v0, 0x0024($sp)
	b       17$
	nop
17$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_move_802697DC:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	li.u    $t6, 0x010008A1
	li.l    $t6, 0x010008A1
	li.u    $a3, 0x08000234
	li.l    $a3, 0x08000234
	sw      $t6, 0x0010($sp)
	lw      $a0, 0x0028($sp)
	li      $a1, 0x0041
	jal     pl_move_80269640
	li      $a2, 0x0040
	sw      $v0, 0x0024($sp)
	b       17$
	lw      $v0, 0x0024($sp)
	b       17$
	nop
17$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_move_80269830:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	lh      $t7, 0x0076($t6)
	lwc1    $f4, 0x0040($t6)
	addiu   $t8, $t7, -0x0064
	mtc1    $t8, $f6
	nop
	cvt.s.w $f8, $f6
	c.lt.s  $f4, $f8
	nop
	bc1f    18$
	nop
	jal     player_80253488
	lw      $a0, 0x0018($sp)
	b       69$
	nop
18$:
	lw      $t9, 0x0018($sp)
	li      $at, 0x00020000
	lw      $t0, 0x000C($t9)
	and     $t1, $t0, $at
	bnez    $t1, 35$
	nop
	lhu     $t2, 0x0002($t9)
	andi    $t3, $t2, 0x0400
	beqz    $t3, 35$
	nop
	li.u    $a1, 0x00020226
	li.l    $a1, 0x00020226
	lw      $a0, 0x0018($sp)
	jal     player_80253178
	move    $a2, $0
	b       69$
	nop
35$:
	lw      $t4, 0x0018($sp)
	lhu     $t5, 0x0002($t4)
	andi    $t6, $t5, 0x0040
	beqz    $t6, 47$
	nop
	li.u    $a1, 0x00020339
	li.l    $a1, 0x00020339
	lw      $a0, 0x0018($sp)
	jal     player_80253178
	move    $a2, $0
	b       69$
	nop
47$:
	lw      $t7, 0x0018($sp)
	li      $at, 0x00020000
	lw      $t8, 0x000C($t7)
	and     $t0, $t8, $at
	bnez    $t0, 65$
	nop
	lw      $t1, 0x0018($sp)
	lh      $t9, 0x00AE($t1)
	slti    $at, $t9, 0x0100
	beqz    $at, 65$
	nop
	li.u    $a1, 0x00021311
	li.l    $a1, 0x00021311
	lw      $a0, 0x0018($sp)
	jal     player_80253178
	move    $a2, $0
	b       69$
	nop
65$:
	b       69$
	move    $v0, $0
	b       69$
	nop
69$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl pl_move_exec
pl_move_exec:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	jal     pl_move_80269830
	lw      $a0, 0x0028($sp)
	beqz    $v0, 10$
	nop
	b       372$
	li      $v0, 0x0001
10$:
	lw      $a0, 0x0028($sp)
	jal     physics_80255414
	li      $a1, 0x3E800000
	beqz    $v0, 17$
	nop
	b       372$
	li      $v0, 0x0001
17$:
	lw      $t6, 0x0028($sp)
	li.u    $at, 0x008C0454
	li.l    $at, 0x008C0454
	lw      $s0, 0x000C($t6)
	sltu    $at, $s0, $at
	bnez    $at, 85$
	nop
	li.u    $at, 0x0400044B
	li.l    $at, 0x0400044B
	sltu    $at, $s0, $at
	bnez    $at, 67$
	nop
	li.u    $at, 0x04008449
	li.l    $at, 0x04008449
	sltu    $at, $s0, $at
	bnez    $at, 44$
	nop
	li.u    $at, 0x04808459
	li.l    $at, 0x04808459
	beq     $s0, $at, 246$
	nop
	li.u    $at, 0x20810446
	li.l    $at, 0x20810446
	beq     $s0, $at, 191$
	nop
	b       L80269ED0
	nop
44$:
	li.u    $at, 0x0400047B
	li.l    $at, 0x0400047B
	sltu    $at, $s0, $at
	bnez    $at, 55$
	nop
	li.u    $at, 0x04008448
	li.l    $at, 0x04008448
	beq     $s0, $at, 196$
	nop
	b       L80269ED0
	nop
55$:
	li.u    $at, 0xFBFFFB90
	li.l    $at, 0xFBFFFB90
	addu    $t7, $s0, $at
	sltiu   $at, $t7, 0x000B
	beqz    $at, L80269ED0
	nop
	sll     $t7, $t7, 2
	lui     $at, %hi(pl_move_80336B0C)
	addu    $at, $at, $t7
	lw      $t7, %lo(pl_move_80336B0C)($at)
	jr      $t7
	nop
67$:
	li.u    $at, 0x008C0455
	li.l    $at, 0x008C0455
	beq     $s0, $at, 231$
	nop
	li.u    $at, 0x04000440
	li.l    $at, 0x04000440
	beq     $s0, $at, 161$
	nop
	li.u    $at, 0x04000445
	li.l    $at, 0x04000445
	beq     $s0, $at, 186$
	nop
	li.u    $at, 0x0400044A
	li.l    $at, 0x0400044A
	beq     $s0, $at, 206$
	nop
	b       L80269ED0
	nop
85$:
	li.u    $at, 0x0080045B
	li.l    $at, 0x0080045B
	sltu    $at, $s0, $at
	bnez    $at, 108$
	nop
	li.u    $at, 0x00840452
	li.l    $at, 0x00840452
	beq     $s0, $at, 216$
	nop
	li.u    $at, 0x00840454
	li.l    $at, 0x00840454
	beq     $s0, $at, 226$
	nop
	li.u    $at, 0x00880456
	li.l    $at, 0x00880456
	beq     $s0, $at, 236$
	nop
	li.u    $at, 0x008C0453
	li.l    $at, 0x008C0453
	beq     $s0, $at, 221$
	nop
	b       L80269ED0
	nop
108$:
	li.u    $at, 0x00020468
	li.l    $at, 0x00020468
	sltu    $at, $s0, $at
	bnez    $at, 123$
	nop
	li.u    $at, 0x00800457
	li.l    $at, 0x00800457
	beq     $s0, $at, 241$
	nop
	li.u    $at, 0x0080045A
	li.l    $at, 0x0080045A
	beq     $s0, $at, 251$
	nop
	b       L80269ED0
	nop
123$:
	sltiu   $at, $s0, 0x047A
	bnez    $at, 138$
	nop
	li.u    $at, 0xFFFDFBB7
	li.l    $at, 0xFFFDFBB7
	addu    $t8, $s0, $at
	sltiu   $at, $t8, 0x001F
	beqz    $at, L80269ED0
	nop
	sll     $t8, $t8, 2
	lui     $at, %hi(pl_move_80336B38)
	addu    $at, $at, $t8
	lw      $t8, %lo(pl_move_80336B38)($at)
	jr      $t8
	nop
138$:
	sltiu   $at, $s0, 0x044C
	bnez    $at, 151$
	nop
	addiu   $t9, $s0, -0x0474
	sltiu   $at, $t9, 0x0006
	beqz    $at, L80269ED0
	nop
	sll     $t9, $t9, 2
	lui     $at, %hi(pl_move_80336BB4)
	addu    $at, $at, $t9
	lw      $t9, %lo(pl_move_80336BB4)($at)
	jr      $t9
	nop
151$:
	addiu   $t0, $s0, -0x0442
	sltiu   $at, $t0, 0x000A
	beqz    $at, L80269ED0
	nop
	sll     $t0, $t0, 2
	lui     $at, %hi(pl_move_80336BCC)
	addu    $at, $at, $t0
	lw      $t0, %lo(pl_move_80336BCC)($at)
	jr      $t0
	nop
161$:
	jal     pl_move_80266354
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80269ED0
	nop
.globl L80269BEC
L80269BEC:
	jal     pl_move_80266734
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80269ED0
	nop
.globl L80269C00
L80269C00:
	jal     pl_move_8026699C
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80269ED0
	nop
.globl L80269C14
L80269C14:
	jal     pl_move_80266AF8
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80269ED0
	nop
.globl L80269C28
L80269C28:
	jal     pl_move_80266D4C
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80269ED0
	nop
186$:
	jal     pl_move_80266E48
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80269ED0
	nop
191$:
	jal     pl_move_80267504
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80269ED0
	nop
196$:
	jal     pl_move_80267728
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80269ED0
	nop
.globl L80269C78
L80269C78:
	jal     pl_move_8026795C
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80269ED0
	nop
206$:
	jal     pl_move_80266FC8
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80269ED0
	nop
.globl L80269CA0
L80269CA0:
	jal     pl_move_80267240
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80269ED0
	nop
216$:
	jal     pl_move_80268074
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80269ED0
	nop
221$:
	jal     pl_move_802685C0
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80269ED0
	nop
226$:
	jal     pl_move_802680D4
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80269ED0
	nop
231$:
	jal     pl_move_80268608
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80269ED0
	nop
236$:
	jal     pl_move_80268684
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80269ED0
	nop
241$:
	jal     pl_move_802665B4
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80269ED0
	nop
246$:
	jal     pl_move_80268168
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80269ED0
	nop
251$:
	jal     pl_move_80268338
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80269ED0
	nop
.globl L80269D54
L80269D54:
	jal     pl_move_802689F8
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80269ED0
	nop
.globl L80269D68
L80269D68:
	jal     pl_move_80268ADC
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80269ED0
	nop
.globl L80269D7C
L80269D7C:
	jal     pl_move_80268B64
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80269ED0
	nop
.globl L80269D90
L80269D90:
	jal     pl_move_80268BB0
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80269ED0
	nop
.globl L80269DA4
L80269DA4:
	jal     pl_move_80268BFC
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80269ED0
	nop
.globl L80269DB8
L80269DB8:
	jal     pl_move_80268C48
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80269ED0
	nop
.globl L80269DCC
L80269DCC:
	jal     pl_move_80268C94
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80269ED0
	nop
.globl L80269DE0
L80269DE0:
	jal     pl_move_80268D04
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80269ED0
	nop
.globl L80269DF4
L80269DF4:
	jal     pl_move_80269108
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80269ED0
	nop
.globl L80269E08
L80269E08:
	jal     pl_move_80269170
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80269ED0
	nop
.globl L80269E1C
L80269E1C:
	jal     pl_move_8026947C
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80269ED0
	nop
.globl L80269E30
L80269E30:
	jal     pl_move_802691D8
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80269ED0
	nop
.globl L80269E44
L80269E44:
	jal     pl_move_80269264
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80269ED0
	nop
.globl L80269E58
L80269E58:
	jal     pl_move_80269300
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80269ED0
	nop
.globl L80269E6C
L80269E6C:
	jal     pl_move_802694E4
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80269ED0
	nop
.globl L80269E80
L80269E80:
	jal     pl_move_80269588
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80269ED0
	nop
.globl L80269E94
L80269E94:
	jal     pl_move_80269788
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80269ED0
	nop
.globl L80269EA8
L80269EA8:
	jal     pl_move_802697DC
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80269ED0
	nop
.globl L80269EBC
L80269EBC:
	jal     pl_move_8026939C
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80269ED0
	nop
.globl L80269ED0
L80269ED0:
	lw      $t1, 0x0024($sp)
	bnez    $t1, 368$
	nop
	lw      $t2, 0x0028($sp)
	lhu     $t3, 0x0002($t2)
	andi    $t4, $t3, 0x0200
	beqz    $t4, 368$
	nop
	lw      $t5, 0x0028($sp)
	lw      $t6, 0x0008($t5)
	ori     $t7, $t6, 0x0400
	sw      $t7, 0x0008($t5)
	lw      $t8, 0x0028($sp)
	li      $at, -0x0002
	lw      $t9, 0x0008($t8)
	and     $t0, $t9, $at
	sw      $t0, 0x0008($t8)
368$:
	b       372$
	lw      $v0, 0x0024($sp)
	b       372$
	nop
372$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop
