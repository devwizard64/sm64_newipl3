.include "sm64/asm.inc"

.set noreorder
.set noat

.align 4

pl_jump_80269F40:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	sw      $a2, 0x0028($sp)
	sw      $a3, 0x002C($sp)
	lw      $t6, 0x0020($sp)
	lw      $t7, 0x0088($t6)
	lh      $t8, 0x0040($t7)
	sw      $t8, 0x001C($sp)
	lh      $t9, 0x0026($sp)
	lw      $t0, 0x001C($sp)
	beq     $t9, $t0, 20$
	nop
	lh      $t1, 0x002A($sp)
	beq     $t1, $t0, 20$
	nop
	lh      $t2, 0x002E($sp)
	bne     $t2, $t0, 26$
	nop
20$:
	lw      $t3, 0x0020($sp)
	li.u    $a0, 0x04378081
	li.l    $a0, 0x04378081
	lw      $a1, 0x0088($t3)
	jal     Na_SePlay
	addiu   $a1, $a1, 0x0054
26$:
	b       28$
	nop
28$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

pl_jump_80269FC0:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lw      $t6, 0x0020($sp)
	lw      $t7, 0x000C($t6)
	sw      $t7, 0x001C($sp)
	lw      $t8, 0x001C($sp)
	li      $at, 0x00020000
	and     $t9, $t8, $at
	bnez    $t9, 46$
	nop
	li.u    $at, 0x108008A4
	li.l    $at, 0x108008A4
	beq     $t8, $at, 46$
	nop
	li.u    $at, 0x10880899
	li.l    $at, 0x10880899
	beq     $t8, $at, 46$
	nop
	lw      $t0, 0x0020($sp)
	li      $at, 0x00040000
	lw      $t1, 0x0004($t0)
	and     $t2, $t1, $at
	bnez    $t2, 46$
	nop
	lw      $t3, 0x0020($sp)
	lui     $at, %hi(pl_jump_80336C00)
	lwc1    $f10, %lo(pl_jump_80336C00)($at)
	lwc1    $f4, 0x00BC($t3)
	lwc1    $f6, 0x0040($t3)
	sub.s   $f8, $f4, $f6
	c.lt.s  $f10, $f8
	nop
	bc1f    46$
	nop
	lw      $t4, 0x0020($sp)
	li.u    $a0, 0x2410C081
	li.l    $a0, 0x2410C081
	lw      $a1, 0x0088($t4)
	jal     Na_SePlay
	addiu   $a1, $a1, 0x0054
	lw      $t5, 0x0020($sp)
	li      $at, 0x00040000
	lw      $t6, 0x0004($t5)
	or      $t7, $t6, $at
	sw      $t7, 0x0004($t5)
46$:
	b       48$
	nop
48$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

pl_jump_8026A090:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	lw      $t7, 0x001C($t6)
	bnez    $t7, 28$
	nop
	li      $at, 0xC1E00000
	mtc1    $at, $f6
	lwc1    $f4, 0x0054($t6)
	c.le.s  $f4, $f6
	nop
	bc1t    21$
	nop
	li      $at, 0x41E00000
	mtc1    $at, $f8
	nop
	c.le.s  $f8, $f4
	nop
	bc1f    28$
	nop
21$:
	li.u    $a1, 0x24308081
	li.l    $a1, 0x24308081
	lw      $a0, 0x0018($sp)
	jal     player_80251120
	li      $a2, 0x00020000
	b       33$
	nop
28$:
	li.u    $a1, 0x24058081
	li.l    $a1, 0x24058081
	lw      $a0, 0x0018($sp)
	jal     player_80251120
	li      $a2, 0x00020000
33$:
	b       35$
	nop
35$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_jump_8026A12C:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	lw      $t7, 0x0060($t6)
	lwc1    $f12, 0x0024($t7)
	jal     ATAN2
	lwc1    $f14, 0x001C($t7)
	lw      $t8, 0x0028($sp)
	sh      $v0, 0x002E($t8)
	lw      $t9, 0x0028($sp)
	li      $at, 0x41C00000
	mtc1    $at, $f6
	lwc1    $f4, 0x0054($t9)
	c.lt.s  $f4, $f6
	nop
	bc1f    23$
	nop
	li      $at, 0x41C00000
	mtc1    $at, $f8
	lw      $t0, 0x0028($sp)
	swc1    $f8, 0x0054($t0)
23$:
	lw      $t1, 0x0028($sp)
	lw      $t2, 0x0004($t1)
	andi    $t3, $t2, 0x0004
	bnez    $t3, 40$
	nop
	lw      $t4, 0x0028($sp)
	lw      $t5, 0x0004($t4)
	andi    $t6, $t5, 0x0010
	beqz    $t6, 35$
	nop
	b       36$
	li      $s0, 0x000C
35$:
	li      $s0, 0x0012
36$:
	lw      $t7, 0x0028($sp)
	lbu     $t8, 0x00B2($t7)
	addu    $t9, $t8, $s0
	sb      $t9, 0x00B2($t7)
40$:
	lw      $t0, 0x0028($sp)
	li.u    $a0, 0x2414A081
	li.l    $a0, 0x2414A081
	lw      $a1, 0x0088($t0)
	jal     Na_SePlay
	addiu   $a1, $a1, 0x0054
	jal     player_802521A0
	lw      $a0, 0x0028($sp)
	li.u    $a1, 0x010208B7
	li.l    $a1, 0x010208B7
	lw      $a0, 0x0028($sp)
	jal     player_80253178
	li      $a2, 0x0001
	b       57$
	nop
	b       57$
	nop
57$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_jump_8026A224:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0030($sp)
	sw      $a1, 0x0034($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0030($sp)
	lwc1    $f4, 0x00BC($t6)
	lwc1    $f6, 0x0040($t6)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x002C($sp)
	lw      $t7, 0x0030($sp)
	li.u    $at, 0x008008A9
	li.l    $at, 0x008008A9
	lhu     $t8, 0x0018($t7)
	bne     $t8, $at, 20$
	nop
	li      $at, 0x44160000
	mtc1    $at, $f10
	b       23$
	swc1    $f10, 0x0028($sp)
20$:
	lui     $at, %hi(pl_jump_80336C04)
	lwc1    $f16, %lo(pl_jump_80336C04)($at)
	swc1    $f16, 0x0028($sp)
23$:
	lw      $t9, 0x0030($sp)
	li.u    $at, 0x108008A4
	li.l    $at, 0x108008A4
	lw      $t0, 0x000C($t9)
	beq     $t0, $at, 110$
	nop
	lw      $t1, 0x0068($t9)
	li      $at, 0x0001
	lh      $t2, 0x0000($t1)
	beq     $t2, $at, 110$
	nop
	lw      $t3, 0x0030($sp)
	li      $at, 0xC25C0000
	mtc1    $at, $f4
	lwc1    $f18, 0x004C($t3)
	c.lt.s  $f18, $f4
	nop
	bc1f    110$
	nop
	lui     $at, %hi(pl_jump_80336C08)
	lwc1    $f8, %lo(pl_jump_80336C08)($at)
	lwc1    $f6, 0x002C($sp)
	c.lt.s  $f8, $f6
	nop
	bc1f    77$
	nop
	lw      $t4, 0x0030($sp)
	lw      $t5, 0x0004($t4)
	andi    $t6, $t5, 0x0010
	beqz    $t6, 56$
	nop
	b       57$
	li      $s0, 0x0010
56$:
	li      $s0, 0x0018
57$:
	lw      $t7, 0x0030($sp)
	lbu     $t8, 0x00B2($t7)
	addu    $t0, $t8, $s0
	sb      $t0, 0x00B2($t7)
	jal     camera_8027F590
	li      $a0, 0x0009
	lw      $t9, 0x0030($sp)
	li.u    $a0, 0x240AFF81
	li.l    $a0, 0x240AFF81
	lw      $a1, 0x0088($t9)
	jal     Na_SePlay
	addiu   $a1, $a1, 0x0054
	lw      $a0, 0x0030($sp)
	lw      $a1, 0x0034($sp)
	jal     player_80253178
	li      $a2, 0x0004
	b       114$
	nop
	b       110$
	nop
77$:
	lwc1    $f10, 0x002C($sp)
	lwc1    $f16, 0x0028($sp)
	c.lt.s  $f16, $f10
	nop
	bc1f    110$
	nop
	jal     player_80251BD4
	lw      $a0, 0x0030($sp)
	bnez    $v0, 110$
	nop
	lw      $t1, 0x0030($sp)
	lw      $t2, 0x0004($t1)
	andi    $t3, $t2, 0x0010
	beqz    $t3, 94$
	nop
	b       95$
	li      $s0, 0x0008
94$:
	li      $s0, 0x000C
95$:
	lw      $t4, 0x0030($sp)
	lbu     $t5, 0x00B2($t4)
	addu    $t6, $t5, $s0
	sb      $t6, 0x00B2($t4)
	lw      $t0, 0x0030($sp)
	li      $t8, 0x001E
	sb      $t8, 0x00B4($t0)
	jal     camera_8027F590
	li      $a0, 0x0009
	lw      $t7, 0x0030($sp)
	li.u    $a0, 0x240AFF81
	li.l    $a0, 0x240AFF81
	lw      $a1, 0x0088($t7)
	jal     Na_SePlay
	addiu   $a1, $a1, 0x0054
110$:
	b       114$
	move    $v0, $0
	b       114$
	nop
114$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

pl_jump_8026A400:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	lhu     $t7, 0x0002($t6)
	andi    $t8, $t7, 0x2000
	beqz    $t8, 28$
	nop
	lw      $t9, 0x0028($sp)
	li      $at, 0x41E00000
	mtc1    $at, $f6
	lwc1    $f4, 0x0054($t9)
	c.lt.s  $f6, $f4
	nop
	bc1f    20$
	nop
	li.u    $s0, 0x0188088A
	b       22$
	li.l    $s0, 0x0188088A
20$:
	li.u    $s0, 0x018008AC
	li.l    $s0, 0x018008AC
22$:
	lw      $a0, 0x0028($sp)
	move    $a1, $s0
	jal     pl_set_state
	move    $a2, $0
	b       32$
	nop
28$:
	b       32$
	move    $v0, $0
	b       32$
	nop
32$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_jump_8026A494:
	addiu   $sp, $sp, -0x0010
	lw      $t6, 0x0090($a0)
	lhu     $t7, 0x0002($t6)
	andi    $t8, $t7, 0x0007
	sw      $t8, 0x000C($sp)
	lw      $t9, 0x0068($a0)
	sw      $t9, 0x0008($sp)
	lw      $t0, 0x0008($sp)
	lb      $t1, 0x0004($t0)
	sw      $t1, 0x0004($sp)
	lw      $t2, 0x0008($sp)
	lh      $t3, 0x0000($t2)
	sw      $t3, 0x0000($sp)
	lw      $t4, 0x0008($sp)
	beqz    $t4, 59$
	nop
	lw      $t5, 0x000C($sp)
	li      $at, 0x0002
	beq     $t5, $at, 23$
	nop
	li      $at, 0x0003
	bne     $t5, $at, 59$
	nop
23$:
	lw      $t6, 0x0000($sp)
	li      $at, 0x0001
	beq     $t6, $at, 59$
	nop
	li      $at, 0x0030
	beq     $t6, $at, 59$
	nop
	slti    $at, $t6, 0x0035
	bnez    $at, 36$
	nop
	slti    $at, $t6, 0x0038
	bnez    $at, 59$
	nop
36$:
	lw      $t7, 0x0004($sp)
	andi    $t8, $t7, 0x0001
	bnez    $t8, 59$
	nop
	lwc1    $f4, 0x00BC($a0)
	lwc1    $f6, 0x0040($a0)
	li      $at, 0x447A0000
	mtc1    $at, $f10
	sub.s   $f8, $f4, $f6
	c.lt.s  $f10, $f8
	nop
	bc1f    59$
	nop
	lw      $t9, 0x0008($sp)
	lui     $at, %hi(pl_jump_80336C0C)
	lwc1    $f18, %lo(pl_jump_80336C0C)($at)
	lwc1    $f16, 0x0020($t9)
	c.le.s  $f18, $f16
	nop
	bc1f    59$
	nop
	b       63$
	li      $v0, 0x0001
59$:
	b       63$
	move    $v0, $0
	b       63$
	nop
63$:
	jr      $ra
	addiu   $sp, $sp, 0x0010

pl_jump_8026A598:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	jal     pl_jump_8026A494
	lw      $a0, 0x0018($sp)
	beqz    $v0, 26$
	nop
	lw      $t6, 0x0018($sp)
	li.u    $a0, 0x240BD081
	li.l    $a0, 0x240BD081
	lw      $a1, 0x0088($t6)
	jal     Na_SePlay
	addiu   $a1, $a1, 0x0054
	lw      $t7, 0x0018($sp)
	li      $at, 0x00010000
	lw      $t8, 0x0008($t7)
	or      $t9, $t8, $at
	sw      $t9, 0x0008($t7)
	li.u    $a1, 0x0002033C
	li.l    $a1, 0x0002033C
	lw      $a0, 0x0018($sp)
	jal     player_80253178
	move    $a2, $0
	b       33$
	li      $v0, 0x0001
26$:
	lw      $a0, 0x0018($sp)
	jal     pl_jump_8026A224
	lw      $a1, 0x001C($sp)
	b       33$
	nop
	b       33$
	nop
33$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_jump_8026A62C:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	lw      $t6, 0x0028($sp)
	lw      $t7, 0x0068($t6)
	sw      $t7, 0x0024($sp)
	lw      $t8, 0x0024($sp)
	li      $at, 0x002C
	lh      $t9, 0x0000($t8)
	bne     $t9, $at, 115$
	nop
	lw      $t0, 0x0024($sp)
	lh      $t1, 0x0002($t0)
	sll     $t2, $t1, 8
	sh      $t2, 0x001E($sp)
	lhu     $t3, 0x001E($sp)
	lui     $at, %hi(pl_jump_80336C10)
	lwc1    $f4, %lo(pl_jump_80336C10)($at)
	sra     $t4, $t3, 4
	sll     $t5, $t4, 2
	lui     $at, %hi(math_sin)
	addu    $at, $at, $t5
	lwc1    $f6, %lo(math_sin)($at)
	lw      $t6, 0x0028($sp)
	mul.s   $f8, $f4, $f6
	lwc1    $f10, 0x0058($t6)
	add.s   $f16, $f10, $f8
	swc1    $f16, 0x0058($t6)
	lhu     $t7, 0x001E($sp)
	lui     $at, %hi(pl_jump_80336C14)
	lwc1    $f18, %lo(pl_jump_80336C14)($at)
	sra     $t8, $t7, 4
	sll     $t9, $t8, 2
	lui     $at, %hi(math_cos)
	addu    $at, $at, $t9
	lwc1    $f4, %lo(math_cos)($at)
	lw      $t0, 0x0028($sp)
	mul.s   $f6, $f18, $f4
	lwc1    $f10, 0x005C($t0)
	add.s   $f8, $f10, $f6
	swc1    $f8, 0x005C($t0)
	lw      $t1, 0x0028($sp)
	lwc1    $f16, 0x0058($t1)
	lwc1    $f4, 0x005C($t1)
	mul.s   $f18, $f16, $f16
	nop
	mul.s   $f10, $f4, $f4
	jal     sqrtf
	add.s   $f12, $f18, $f10
	swc1    $f0, 0x0020($sp)
	li      $at, 0x42400000
	mtc1    $at, $f8
	lwc1    $f6, 0x0020($sp)
	c.lt.s  $f8, $f6
	nop
	bc1f    77$
	nop
	lw      $t2, 0x0028($sp)
	li      $at, 0x42400000
	mtc1    $at, $f4
	lwc1    $f16, 0x0058($t2)
	lwc1    $f10, 0x0020($sp)
	mul.s   $f18, $f16, $f4
	div.s   $f6, $f18, $f10
	swc1    $f6, 0x0058($t2)
	lw      $t3, 0x0028($sp)
	li      $at, 0x42400000
	mtc1    $at, $f16
	lwc1    $f8, 0x005C($t3)
	lwc1    $f18, 0x0020($sp)
	mul.s   $f4, $f8, $f16
	div.s   $f10, $f4, $f18
	swc1    $f10, 0x005C($t3)
	li      $at, 0x42000000
	mtc1    $at, $f6
	b       88$
	swc1    $f6, 0x0020($sp)
77$:
	li      $at, 0x42000000
	mtc1    $at, $f16
	lwc1    $f8, 0x0020($sp)
	c.lt.s  $f16, $f8
	nop
	bc1f    88$
	nop
	li      $at, 0x42000000
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x0020($sp)
88$:
	lw      $t4, 0x0028($sp)
	lwc1    $f18, 0x0058($t4)
	swc1    $f18, 0x0048($t4)
	lw      $t5, 0x0028($sp)
	lwc1    $f10, 0x005C($t5)
	swc1    $f10, 0x0050($t5)
	lw      $t6, 0x0028($sp)
	lwc1    $f12, 0x005C($t6)
	jal     ATAN2
	lwc1    $f14, 0x0058($t6)
	lw      $t7, 0x0028($sp)
	sh      $v0, 0x0038($t7)
	lw      $t8, 0x0028($sp)
	lui     $at, %hi(math_cos)
	lwc1    $f8, 0x0020($sp)
	lh      $t9, 0x002E($t8)
	lh      $t0, 0x0038($t8)
	subu    $t1, $t9, $t0
	andi    $t2, $t1, 0xFFFF
	sra     $t3, $t2, 4
	sll     $t4, $t3, 2
	addu    $at, $at, $t4
	lwc1    $f6, %lo(math_cos)($at)
	mul.s   $f16, $f6, $f8
	swc1    $f16, 0x0054($t8)
	b       119$
	li      $v0, 0x0001
115$:
	b       119$
	move    $v0, $0
	b       119$
	nop
119$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_jump_8026A818:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0030($sp)
	sdc1    $f20, 0x0010($sp)
	jal     pl_jump_8026A62C
	lw      $a0, 0x0030($sp)
	bnez    $v0, 133$
	nop
	lw      $t6, 0x0030($sp)
	li.u    $at, 0x03000888
	li.l    $at, 0x03000888
	lw      $t7, 0x000C($t6)
	bne     $t7, $at, 18$
	nop
	li      $at, 0x42400000
	mtc1    $at, $f4
	b       22$
	swc1    $f4, 0x002C($sp)
18$:
	li      $at, 0x42000000
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x002C($sp)
22$:
	lw      $t8, 0x0030($sp)
	li.u    $a2, 0x3EB33333
	li.l    $a2, 0x3EB33333
	mtc1    $0, $f14
	addu    $a3, $a2, $0
	jal     convergef
	lwc1    $f12, 0x0054($t8)
	lw      $t9, 0x0030($sp)
	swc1    $f0, 0x0054($t9)
	lw      $t0, 0x0030($sp)
	lhu     $t1, 0x0002($t0)
	andi    $t2, $t1, 0x0001
	beqz    $t2, 82$
	nop
	lw      $t3, 0x0030($sp)
	lh      $t4, 0x0024($t3)
	lh      $t5, 0x002E($t3)
	subu    $t6, $t4, $t5
	sh      $t6, 0x002A($sp)
	lw      $t7, 0x0030($sp)
	li      $at, 0x42000000
	mtc1    $at, $f10
	lwc1    $f8, 0x0020($t7)
	div.s   $f16, $f8, $f10
	swc1    $f16, 0x0024($sp)
	lhu     $t8, 0x002A($sp)
	li      $at, 0x3FC00000
	mtc1    $at, $f18
	sra     $t9, $t8, 4
	sll     $t0, $t9, 2
	lui     $at, %hi(math_cos)
	addu    $at, $at, $t0
	lwc1    $f4, %lo(math_cos)($at)
	lwc1    $f8, 0x0024($sp)
	lw      $t1, 0x0030($sp)
	mul.s   $f6, $f18, $f4
	lwc1    $f16, 0x0054($t1)
	mul.s   $f10, $f6, $f8
	add.s   $f18, $f16, $f10
	swc1    $f18, 0x0054($t1)
	lhu     $t2, 0x002A($sp)
	li      $at, 0x44000000
	mtc1    $at, $f4
	sra     $t3, $t2, 4
	sll     $t4, $t3, 2
	lui     $at, %hi(math_sin)
	addu    $at, $at, $t4
	lwc1    $f6, %lo(math_sin)($at)
	lw      $t5, 0x0030($sp)
	lwc1    $f16, 0x0024($sp)
	mul.s   $f8, $f4, $f6
	lh      $t6, 0x002E($t5)
	mtc1    $t6, $f18
	mul.s   $f10, $f8, $f16
	cvt.s.w $f4, $f18
	add.s   $f6, $f4, $f10
	trunc.w.s $f8, $f6
	mfc1    $t8, $f8
	nop
	sh      $t8, 0x002E($t5)
82$:
	lw      $t9, 0x0030($sp)
	lwc1    $f18, 0x002C($sp)
	lwc1    $f16, 0x0054($t9)
	c.lt.s  $f18, $f16
	nop
	bc1f    95$
	nop
	lw      $t0, 0x0030($sp)
	li      $at, 0x3F800000
	mtc1    $at, $f10
	lwc1    $f4, 0x0054($t0)
	sub.s   $f6, $f4, $f10
	swc1    $f6, 0x0054($t0)
95$:
	lw      $t1, 0x0030($sp)
	li      $at, 0xC1800000
	mtc1    $at, $f16
	lwc1    $f8, 0x0054($t1)
	c.lt.s  $f8, $f16
	nop
	bc1f    109$
	nop
	lw      $t2, 0x0030($sp)
	li      $at, 0x40000000
	mtc1    $at, $f4
	lwc1    $f18, 0x0054($t2)
	add.s   $f10, $f18, $f4
	swc1    $f10, 0x0054($t2)
109$:
	lw      $t3, 0x0030($sp)
	lui     $at, %hi(math_sin)
	lhu     $t4, 0x002E($t3)
	lwc1    $f8, 0x0054($t3)
	sra     $t6, $t4, 4
	sll     $t7, $t6, 2
	addu    $at, $at, $t7
	lwc1    $f6, %lo(math_sin)($at)
	mul.s   $f20, $f6, $f8
	swc1    $f20, 0x0058($t3)
	lw      $t8, 0x0030($sp)
	swc1    $f20, 0x0048($t8)
	lw      $t5, 0x0030($sp)
	lui     $at, %hi(math_cos)
	lhu     $t9, 0x002E($t5)
	lwc1    $f18, 0x0054($t5)
	sra     $t0, $t9, 4
	sll     $t1, $t0, 2
	addu    $at, $at, $t1
	lwc1    $f16, %lo(math_cos)($at)
	mul.s   $f20, $f16, $f18
	swc1    $f20, 0x005C($t5)
	lw      $t2, 0x0030($sp)
	swc1    $f20, 0x0050($t2)
133$:
	b       135$
	nop
135$:
	lw      $ra, 0x001C($sp)
	ldc1    $f20, 0x0010($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

pl_jump_8026AA48:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x0024($sp)
	jal     pl_jump_8026A62C
	lw      $a0, 0x0028($sp)
	bnez    $v0, 158$
	nop
	lw      $t6, 0x0028($sp)
	li.u    $at, 0x03000888
	li.l    $at, 0x03000888
	lw      $t7, 0x000C($t6)
	bne     $t7, $at, 20$
	nop
	li      $at, 0x42400000
	mtc1    $at, $f6
	b       24$
	swc1    $f6, 0x0020($sp)
20$:
	li      $at, 0x42000000
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x0020($sp)
24$:
	lw      $t8, 0x0028($sp)
	li.u    $a2, 0x3EB33333
	li.l    $a2, 0x3EB33333
	mtc1    $0, $f14
	addu    $a3, $a2, $0
	jal     convergef
	lwc1    $f12, 0x0054($t8)
	lw      $t9, 0x0028($sp)
	swc1    $f0, 0x0054($t9)
	lw      $t0, 0x0028($sp)
	lhu     $t1, 0x0002($t0)
	andi    $t2, $t1, 0x0001
	beqz    $t2, 77$
	nop
	lw      $t3, 0x0028($sp)
	lh      $t4, 0x0024($t3)
	lh      $t5, 0x002E($t3)
	subu    $t6, $t4, $t5
	sh      $t6, 0x001E($sp)
	lw      $t7, 0x0028($sp)
	li      $at, 0x42000000
	mtc1    $at, $f16
	lwc1    $f10, 0x0020($t7)
	div.s   $f18, $f10, $f16
	swc1    $f18, 0x0018($sp)
	lhu     $t8, 0x001E($sp)
	lui     $at, %hi(math_cos)
	lwc1    $f4, 0x0018($sp)
	sra     $t9, $t8, 4
	sll     $t0, $t9, 2
	addu    $at, $at, $t0
	lwc1    $f6, %lo(math_cos)($at)
	li      $at, 0x3FC00000
	mtc1    $at, $f10
	mul.s   $f8, $f4, $f6
	lw      $t1, 0x0028($sp)
	lwc1    $f18, 0x0054($t1)
	mul.s   $f16, $f8, $f10
	add.s   $f4, $f18, $f16
	swc1    $f4, 0x0054($t1)
	lhu     $t2, 0x001E($sp)
	lui     $at, %hi(math_sin)
	lwc1    $f8, 0x0018($sp)
	sra     $t3, $t2, 4
	sll     $t4, $t3, 2
	addu    $at, $at, $t4
	lwc1    $f6, %lo(math_sin)($at)
	li      $at, 0x41200000
	mtc1    $at, $f18
	mul.s   $f10, $f6, $f8
	nop
	mul.s   $f16, $f10, $f18
	swc1    $f16, 0x0024($sp)
77$:
	lw      $t5, 0x0028($sp)
	lwc1    $f6, 0x0020($sp)
	lwc1    $f4, 0x0054($t5)
	c.lt.s  $f6, $f4
	nop
	bc1f    90$
	nop
	lw      $t6, 0x0028($sp)
	li      $at, 0x3F800000
	mtc1    $at, $f10
	lwc1    $f8, 0x0054($t6)
	sub.s   $f18, $f8, $f10
	swc1    $f18, 0x0054($t6)
90$:
	lw      $t7, 0x0028($sp)
	li      $at, 0xC1800000
	mtc1    $at, $f4
	lwc1    $f16, 0x0054($t7)
	c.lt.s  $f16, $f4
	nop
	bc1f    104$
	nop
	lw      $t8, 0x0028($sp)
	li      $at, 0x40000000
	mtc1    $at, $f8
	lwc1    $f6, 0x0054($t8)
	add.s   $f10, $f6, $f8
	swc1    $f10, 0x0054($t8)
104$:
	lw      $t9, 0x0028($sp)
	lui     $at, %hi(math_sin)
	lhu     $t0, 0x002E($t9)
	lwc1    $f16, 0x0054($t9)
	sra     $t1, $t0, 4
	sll     $t2, $t1, 2
	addu    $at, $at, $t2
	lwc1    $f18, %lo(math_sin)($at)
	mul.s   $f4, $f18, $f16
	swc1    $f4, 0x0058($t9)
	lw      $t3, 0x0028($sp)
	lui     $at, %hi(math_cos)
	lhu     $t4, 0x002E($t3)
	lwc1    $f8, 0x0054($t3)
	sra     $t5, $t4, 4
	sll     $t6, $t5, 2
	addu    $at, $at, $t6
	lwc1    $f6, %lo(math_cos)($at)
	mul.s   $f10, $f6, $f8
	swc1    $f10, 0x005C($t3)
	lw      $t7, 0x0028($sp)
	lui     $at, %hi(math_sin)
	lwc1    $f18, 0x0024($sp)
	lh      $t8, 0x002E($t7)
	lwc1    $f6, 0x0058($t7)
	addiu   $t0, $t8, 0x4000
	andi    $t1, $t0, 0xFFFF
	sra     $t2, $t1, 4
	sll     $t9, $t2, 2
	addu    $at, $at, $t9
	lwc1    $f16, %lo(math_sin)($at)
	mul.s   $f4, $f18, $f16
	add.s   $f8, $f6, $f4
	swc1    $f8, 0x0058($t7)
	lw      $t4, 0x0028($sp)
	lui     $at, %hi(math_cos)
	lwc1    $f10, 0x0024($sp)
	lh      $t5, 0x002E($t4)
	lwc1    $f6, 0x005C($t4)
	addiu   $t6, $t5, 0x4000
	andi    $t3, $t6, 0xFFFF
	sra     $t8, $t3, 4
	sll     $t0, $t8, 2
	addu    $at, $at, $t0
	lwc1    $f18, %lo(math_cos)($at)
	mul.s   $f16, $f10, $f18
	add.s   $f4, $f6, $f16
	swc1    $f4, 0x005C($t4)
	lw      $t1, 0x0028($sp)
	lwc1    $f8, 0x0058($t1)
	swc1    $f8, 0x0048($t1)
	lw      $t2, 0x0028($sp)
	lwc1    $f10, 0x005C($t2)
	swc1    $f10, 0x0050($t2)
158$:
	b       160$
	nop
160$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_jump_8026ACD8:
	addiu   $sp, $sp, -0x0010
	lhu     $t6, 0x0002($a0)
	andi    $t7, $t6, 0x0001
	beqz    $t7, 73$
	nop
	lh      $t8, 0x0024($a0)
	lh      $t9, 0x002E($a0)
	subu    $t0, $t8, $t9
	sh      $t0, 0x000E($sp)
	li      $at, 0x42000000
	mtc1    $at, $f6
	lwc1    $f4, 0x0020($a0)
	div.s   $f8, $f4, $f6
	swc1    $f8, 0x0008($sp)
	lhu     $t1, 0x000E($sp)
	lui     $at, %hi(math_cos)
	lwc1    $f16, 0x0008($sp)
	sra     $t2, $t1, 4
	sll     $t3, $t2, 2
	addu    $at, $at, $t3
	lwc1    $f10, %lo(math_cos)($at)
	lwc1    $f4, 0x0054($a0)
	mul.s   $f18, $f10, $f16
	add.s   $f6, $f4, $f18
	swc1    $f6, 0x0054($a0)
	lhu     $t4, 0x000E($sp)
	lui     $at, %hi(math_sin)
	lwc1    $f10, 0x0008($sp)
	sra     $t5, $t4, 4
	sll     $t6, $t5, 2
	addu    $at, $at, $t6
	lwc1    $f8, %lo(math_sin)($at)
	lh      $t7, 0x002E($a0)
	li      $at, 0x44800000
	mul.s   $f16, $f8, $f10
	mtc1    $at, $f4
	mtc1    $t7, $f6
	nop
	cvt.s.w $f8, $f6
	mul.s   $f18, $f16, $f4
	add.s   $f10, $f8, $f18
	trunc.w.s $f16, $f10
	mfc1    $t9, $f16
	nop
	sh      $t9, 0x002E($a0)
	lwc1    $f4, 0x0054($a0)
	mtc1    $0, $f6
	nop
	c.lt.s  $f4, $f6
	nop
	bc1f    61$
	nop
	lh      $t0, 0x002E($a0)
	li      $at, 0x8000
	addu    $t1, $t0, $at
	sh      $t1, 0x002E($a0)
	li      $at, 0xBF800000
	mtc1    $at, $f18
	lwc1    $f8, 0x0054($a0)
	mul.s   $f10, $f8, $f18
	swc1    $f10, 0x0054($a0)
61$:
	li      $at, 0x42000000
	mtc1    $at, $f4
	lwc1    $f16, 0x0054($a0)
	c.lt.s  $f4, $f16
	nop
	bc1f    73$
	nop
	li      $at, 0x40000000
	mtc1    $at, $f8
	lwc1    $f6, 0x0054($a0)
	sub.s   $f18, $f6, $f8
	swc1    $f18, 0x0054($a0)
73$:
	lhu     $t2, 0x002E($a0)
	lui     $at, %hi(math_sin)
	lwc1    $f16, 0x0054($a0)
	sra     $t3, $t2, 4
	sll     $t4, $t3, 2
	addu    $at, $at, $t4
	lwc1    $f10, %lo(math_sin)($at)
	mul.s   $f12, $f10, $f16
	swc1    $f12, 0x0058($a0)
	swc1    $f12, 0x0048($a0)
	lhu     $t5, 0x002E($a0)
	lui     $at, %hi(math_cos)
	lwc1    $f6, 0x0054($a0)
	sra     $t6, $t5, 4
	sll     $t7, $t6, 2
	addu    $at, $at, $t7
	lwc1    $f4, %lo(math_cos)($at)
	mul.s   $f12, $f4, $f6
	swc1    $f12, 0x005C($a0)
	swc1    $f12, 0x0050($a0)
	b       95$
	nop
95$:
	jr      $ra
	addiu   $sp, $sp, 0x0010

pl_jump_8026AE5C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lw      $t6, 0x0020($sp)
	li      $at, 0x40800000
	mtc1    $at, $f6
	lwc1    $f4, 0x0054($t6)
	lw      $t7, 0x009C($t6)
	div.s   $f8, $f4, $f6
	lwc1    $f10, 0x0004($t7)
	mul.s   $f16, $f10, $f8
	trunc.w.s $f18, $f16
	mfc1    $t9, $f18
	nop
	sll     $t0, $t9, 16
	sra     $t1, $t0, 16
	subu    $t2, $0, $t1
	sh      $t2, 0x001E($sp)
	lh      $t3, 0x001E($sp)
	blez    $t3, 49$
	nop
	lw      $t4, 0x0020($sp)
	lh      $t5, 0x0034($t4)
	bgez    $t5, 39$
	nop
	lw      $t6, 0x0020($sp)
	lh      $t7, 0x0034($t6)
	addiu   $t8, $t7, 0x0040
	sh      $t8, 0x0034($t6)
	lw      $t9, 0x0020($sp)
	lh      $t0, 0x0034($t9)
	slti    $at, $t0, 0x0011
	bnez    $at, 37$
	nop
	lw      $t2, 0x0020($sp)
	li      $t1, 0x0010
	sh      $t1, 0x0034($t2)
37$:
	b       47$
	nop
39$:
	lw      $t3, 0x0020($sp)
	lh      $a1, 0x001E($sp)
	li      $a2, 0x0010
	li      $a3, 0x0020
	jal     convergei
	lh      $a0, 0x0034($t3)
	lw      $t4, 0x0020($sp)
	sh      $v0, 0x0034($t4)
47$:
	b       88$
	nop
49$:
	lh      $t5, 0x001E($sp)
	bgez    $t5, 80$
	nop
	lw      $t7, 0x0020($sp)
	lh      $t8, 0x0034($t7)
	blez    $t8, 70$
	nop
	lw      $t6, 0x0020($sp)
	lh      $t9, 0x0034($t6)
	addiu   $t0, $t9, -0x0040
	sh      $t0, 0x0034($t6)
	lw      $t1, 0x0020($sp)
	lh      $t2, 0x0034($t1)
	slti    $at, $t2, -0x0010
	beqz    $at, 68$
	nop
	lw      $t4, 0x0020($sp)
	li      $t3, -0x0010
	sh      $t3, 0x0034($t4)
68$:
	b       78$
	nop
70$:
	lw      $t5, 0x0020($sp)
	lh      $a1, 0x001E($sp)
	li      $a2, 0x0020
	li      $a3, 0x0010
	jal     convergei
	lh      $a0, 0x0034($t5)
	lw      $t7, 0x0020($sp)
	sh      $v0, 0x0034($t7)
78$:
	b       88$
	nop
80$:
	lw      $t8, 0x0020($sp)
	move    $a1, $0
	li      $a2, 0x0040
	li      $a3, 0x0040
	jal     convergei
	lh      $a0, 0x0034($t8)
	lw      $t9, 0x0020($sp)
	sh      $v0, 0x0034($t9)
88$:
	lw      $t0, 0x0020($sp)
	lh      $t6, 0x002E($t0)
	lh      $t1, 0x0034($t0)
	addu    $t2, $t6, $t1
	sh      $t2, 0x002E($t0)
	lw      $t3, 0x0020($sp)
	lh      $t4, 0x0034($t3)
	subu    $t5, $0, $t4
	sll     $t7, $t5, 2
	addu    $t7, $t7, $t5
	sll     $t7, $t7, 2
	sh      $t7, 0x0030($t3)
	b       102$
	nop
102$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

pl_jump_8026B004:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lw      $t6, 0x0020($sp)
	li      $at, 0x40A00000
	mtc1    $at, $f6
	lwc1    $f4, 0x0054($t6)
	lw      $t7, 0x009C($t6)
	div.s   $f8, $f4, $f6
	lwc1    $f10, 0x0008($t7)
	mul.s   $f16, $f10, $f8
	trunc.w.s $f18, $f16
	mfc1    $t9, $f18
	nop
	sll     $t0, $t9, 16
	sra     $t1, $t0, 16
	subu    $t2, $0, $t1
	sh      $t2, 0x001E($sp)
	lh      $t3, 0x001E($sp)
	blez    $t3, 49$
	nop
	lw      $t4, 0x0020($sp)
	lh      $t5, 0x0032($t4)
	bgez    $t5, 39$
	nop
	lw      $t6, 0x0020($sp)
	lh      $t7, 0x0032($t6)
	addiu   $t8, $t7, 0x0040
	sh      $t8, 0x0032($t6)
	lw      $t9, 0x0020($sp)
	lh      $t0, 0x0032($t9)
	slti    $at, $t0, 0x0021
	bnez    $at, 37$
	nop
	lw      $t2, 0x0020($sp)
	li      $t1, 0x0020
	sh      $t1, 0x0032($t2)
37$:
	b       47$
	nop
39$:
	lw      $t3, 0x0020($sp)
	lh      $a1, 0x001E($sp)
	li      $a2, 0x0020
	li      $a3, 0x0040
	jal     convergei
	lh      $a0, 0x0032($t3)
	lw      $t4, 0x0020($sp)
	sh      $v0, 0x0032($t4)
47$:
	b       88$
	nop
49$:
	lh      $t5, 0x001E($sp)
	bgez    $t5, 80$
	nop
	lw      $t7, 0x0020($sp)
	lh      $t8, 0x0032($t7)
	blez    $t8, 70$
	nop
	lw      $t6, 0x0020($sp)
	lh      $t9, 0x0032($t6)
	addiu   $t0, $t9, -0x0040
	sh      $t0, 0x0032($t6)
	lw      $t1, 0x0020($sp)
	lh      $t2, 0x0032($t1)
	slti    $at, $t2, -0x0020
	beqz    $at, 68$
	nop
	lw      $t4, 0x0020($sp)
	li      $t3, -0x0020
	sh      $t3, 0x0032($t4)
68$:
	b       78$
	nop
70$:
	lw      $t5, 0x0020($sp)
	lh      $a1, 0x001E($sp)
	li      $a2, 0x0040
	li      $a3, 0x0020
	jal     convergei
	lh      $a0, 0x0032($t5)
	lw      $t7, 0x0020($sp)
	sh      $v0, 0x0032($t7)
78$:
	b       88$
	nop
80$:
	lw      $t8, 0x0020($sp)
	move    $a1, $0
	li      $a2, 0x0040
	li      $a3, 0x0040
	jal     convergei
	lh      $a0, 0x0032($t8)
	lw      $t9, 0x0020($sp)
	sh      $v0, 0x0032($t9)
88$:
	b       90$
	nop
90$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

pl_jump_8026B17C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	jal     pl_jump_8026B004
	lw      $a0, 0x0020($sp)
	jal     pl_jump_8026AE5C
	lw      $a0, 0x0020($sp)
	lw      $t6, 0x0020($sp)
	li      $at, 0x46800000
	mtc1    $at, $f8
	lh      $t7, 0x002C($t6)
	li      $at, 0x40000000
	mtc1    $at, $f16
	mtc1    $t7, $f4
	lui     $at, %hi(pl_jump_80336C18)
	cvt.s.w $f6, $f4
	lwc1    $f4, %lo(pl_jump_80336C18)($at)
	div.s   $f10, $f6, $f8
	lwc1    $f8, 0x0054($t6)
	mul.s   $f18, $f16, $f10
	add.s   $f6, $f18, $f4
	sub.s   $f16, $f8, $f6
	swc1    $f16, 0x0054($t6)
	lw      $t8, 0x0020($sp)
	li      $at, 0x3F800000
	mtc1    $at, $f10
	lhu     $t9, 0x0034($t8)
	lui     $at, %hi(math_cos)
	lwc1    $f16, 0x0054($t8)
	sra     $t0, $t9, 4
	sll     $t1, $t0, 2
	addu    $at, $at, $t1
	lwc1    $f18, %lo(math_cos)($at)
	li      $at, 0x3F000000
	mtc1    $at, $f8
	sub.s   $f4, $f10, $f18
	mul.s   $f6, $f8, $f4
	sub.s   $f10, $f16, $f6
	swc1    $f10, 0x0054($t8)
	lw      $t2, 0x0020($sp)
	mtc1    $0, $f8
	lwc1    $f18, 0x0054($t2)
	c.lt.s  $f18, $f8
	nop
	bc1f    49$
	nop
	mtc1    $0, $f4
	lw      $t3, 0x0020($sp)
	swc1    $f4, 0x0054($t3)
49$:
	lw      $t4, 0x0020($sp)
	li      $at, 0x41800000
	mtc1    $at, $f6
	lwc1    $f16, 0x0054($t4)
	c.lt.s  $f6, $f16
	nop
	bc1f    73$
	nop
	lw      $t5, 0x0020($sp)
	li      $at, 0x42000000
	mtc1    $at, $f18
	lwc1    $f10, 0x0054($t5)
	lh      $t7, 0x002C($t5)
	li      $at, 0x40C00000
	sub.s   $f8, $f10, $f18
	mtc1    $at, $f4
	mtc1    $t7, $f6
	mul.s   $f16, $f8, $f4
	cvt.s.w $f10, $f6
	add.s   $f18, $f10, $f16
	trunc.w.s $f8, $f18
	mfc1    $t9, $f8
	b       101$
	sh      $t9, 0x002C($t5)
73$:
	lw      $t0, 0x0020($sp)
	li      $at, 0x40800000
	mtc1    $at, $f6
	lwc1    $f4, 0x0054($t0)
	c.lt.s  $f6, $f4
	nop
	bc1f    97$
	nop
	lw      $t1, 0x0020($sp)
	li      $at, 0x42000000
	mtc1    $at, $f16
	lwc1    $f10, 0x0054($t1)
	lh      $t8, 0x002C($t1)
	li      $at, 0x41200000
	sub.s   $f18, $f10, $f16
	mtc1    $at, $f8
	mtc1    $t8, $f6
	mul.s   $f4, $f18, $f8
	cvt.s.w $f10, $f6
	add.s   $f16, $f10, $f4
	trunc.w.s $f18, $f16
	mfc1    $t3, $f18
	b       101$
	sh      $t3, 0x002C($t1)
97$:
	lw      $t4, 0x0020($sp)
	lh      $t7, 0x002C($t4)
	addiu   $t6, $t7, -0x0400
	sh      $t6, 0x002C($t4)
101$:
	lw      $t9, 0x0020($sp)
	lh      $t5, 0x002C($t9)
	lh      $t0, 0x0032($t9)
	addu    $t8, $t5, $t0
	sh      $t8, 0x002C($t9)
	lw      $t2, 0x0020($sp)
	lh      $t3, 0x002C($t2)
	slti    $at, $t3, 0x2AAB
	bnez    $at, 114$
	nop
	lw      $t7, 0x0020($sp)
	li      $t1, 0x2AAA
	sh      $t1, 0x002C($t7)
114$:
	lw      $t6, 0x0020($sp)
	lh      $t4, 0x002C($t6)
	slti    $at, $t4, -0x2AAA
	beqz    $at, 122$
	nop
	lw      $t0, 0x0020($sp)
	li      $t5, -0x2AAA
	sh      $t5, 0x002C($t0)
122$:
	lw      $t8, 0x0020($sp)
	lui     $at, %hi(math_cos)
	lhu     $t9, 0x002C($t8)
	lwc1    $f8, 0x0054($t8)
	lhu     $t1, 0x002E($t8)
	sra     $t2, $t9, 4
	sll     $t3, $t2, 2
	addu    $at, $at, $t3
	lwc1    $f6, %lo(math_cos)($at)
	sra     $t7, $t1, 4
	sll     $t6, $t7, 2
	mul.s   $f10, $f8, $f6
	lui     $at, %hi(math_sin)
	addu    $at, $at, $t6
	lwc1    $f4, %lo(math_sin)($at)
	mul.s   $f16, $f4, $f10
	swc1    $f16, 0x0048($t8)
	lw      $t4, 0x0020($sp)
	lui     $at, %hi(math_sin)
	lhu     $t5, 0x002C($t4)
	lwc1    $f8, 0x0054($t4)
	sra     $t0, $t5, 4
	sll     $t9, $t0, 2
	addu    $at, $at, $t9
	lwc1    $f18, %lo(math_sin)($at)
	mul.s   $f6, $f18, $f8
	swc1    $f6, 0x004C($t4)
	lw      $t2, 0x0020($sp)
	la.u    $t6, math_cos
	la.l    $t6, math_cos
	lhu     $t3, 0x002C($t2)
	lwc1    $f4, 0x0054($t2)
	lhu     $t5, 0x002E($t2)
	sra     $t1, $t3, 4
	sll     $t7, $t1, 2
	addu    $t8, $t7, $t6
	lwc1    $f10, 0x0000($t8)
	sra     $t0, $t5, 4
	sll     $t9, $t0, 2
	mul.s   $f16, $f4, $f10
	addu    $t4, $t9, $t6
	lwc1    $f18, 0x0000($t4)
	mul.s   $f8, $f18, $f16
	swc1    $f8, 0x0050($t2)
	lw      $t3, 0x0020($sp)
	lwc1    $f6, 0x0048($t3)
	swc1    $f6, 0x0058($t3)
	lw      $t1, 0x0020($sp)
	lwc1    $f4, 0x0050($t1)
	swc1    $f4, 0x005C($t1)
	b       174$
	nop
174$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

pl_jump_8026B444:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	sw      $a2, 0x0028($sp)
	sw      $a3, 0x002C($sp)
	jal     pl_jump_8026AA48
	lw      $a0, 0x0020($sp)
	lw      $a0, 0x0020($sp)
	jal     physics_80256B24
	lw      $a1, 0x002C($sp)
	sw      $v0, 0x001C($sp)
	lw      $t6, 0x001C($sp)
	sltiu   $at, $t6, 0x0007
	beqz    $at, L8026B680
	nop
	sll     $t6, $t6, 2
	lui     $at, %hi(pl_jump_80336C1C)
	addu    $at, $at, $t6
	lw      $t6, %lo(pl_jump_80336C1C)($at)
	jr      $t6
	nop
.globl L8026B49C
L8026B49C:
	lw      $a0, 0x0020($sp)
	jal     pl_set_anime
	lw      $a1, 0x0028($sp)
	b       L8026B680
	nop
.globl L8026B4B0
L8026B4B0:
	li.u    $a1, 0x00020460
	li.l    $a1, 0x00020460
	jal     pl_jump_8026A598
	lw      $a0, 0x0020($sp)
	bnez    $v0, 37$
	nop
	lw      $a0, 0x0020($sp)
	lw      $a1, 0x0024($sp)
	jal     pl_set_state
	move    $a2, $0
37$:
	b       L8026B680
	nop
.globl L8026B4E0
L8026B4E0:
	lw      $a0, 0x0020($sp)
	jal     pl_set_anime
	lw      $a1, 0x0028($sp)
	lw      $t7, 0x0020($sp)
	li      $at, 0x41800000
	mtc1    $at, $f6
	lwc1    $f4, 0x0054($t7)
	c.lt.s  $f6, $f4
	nop
	bc1f    117$
	nop
	lw      $a0, 0x0020($sp)
	jal     physics_802552FC
	move    $a1, $0
	lw      $t8, 0x0020($sp)
	li      $at, 0x8000
	lh      $t9, 0x002E($t8)
	addu    $t0, $t9, $at
	sh      $t0, 0x002E($t8)
	lw      $t1, 0x0020($sp)
	lw      $t2, 0x0060($t1)
	beqz    $t2, 68$
	nop
	lw      $a0, 0x0020($sp)
	li      $a1, 0x08A7
	jal     pl_set_state
	move    $a2, $0
	b       115$
	nop
68$:
	lw      $t3, 0x0020($sp)
	mtc1    $0, $f10
	lwc1    $f8, 0x004C($t3)
	c.lt.s  $f10, $f8
	nop
	bc1f    78$
	nop
	mtc1    $0, $f16
	lw      $t4, 0x0020($sp)
	swc1    $f16, 0x004C($t4)
78$:
	lw      $t5, 0x0020($sp)
	li      $at, 0x42180000
	mtc1    $at, $f4
	lwc1    $f18, 0x0054($t5)
	c.le.s  $f4, $f18
	nop
	bc1f    97$
	nop
	lw      $t6, 0x0020($sp)
	lw      $t7, 0x0008($t6)
	ori     $t9, $t7, 0x0002
	sw      $t9, 0x0008($t6)
	li.u    $a1, 0x010208B0
	li.l    $a1, 0x010208B0
	lw      $a0, 0x0020($sp)
	jal     pl_set_state
	move    $a2, $0
	b       115$
	nop
97$:
	lw      $t0, 0x0020($sp)
	li      $at, 0x41000000
	mtc1    $at, $f8
	lwc1    $f6, 0x0054($t0)
	c.lt.s  $f8, $f6
	nop
	bc1f    108$
	nop
	lw      $a0, 0x0020($sp)
	jal     player_80251708
	li      $a1, 0xC1000000
108$:
	li.u    $a1, 0x010208B6
	li.l    $a1, 0x010208B6
	lw      $a0, 0x0020($sp)
	jal     pl_set_state
	move    $a2, $0
	b       147$
	nop
115$:
	b       120$
	nop
117$:
	lw      $a0, 0x0020($sp)
	jal     player_80251708
	li      $a1, 0x0000
120$:
	b       L8026B680
	nop
.globl L8026B62C
L8026B62C:
	lw      $a0, 0x0020($sp)
	jal     pl_set_anime
	li      $a1, 0x0033
	li.u    $a1, 0x0800034B
	li.l    $a1, 0x0800034B
	lw      $a0, 0x0020($sp)
	jal     player_80253178
	move    $a2, $0
	b       L8026B680
	nop
.globl L8026B654
L8026B654:
	li.u    $a1, 0x08200348
	li.l    $a1, 0x08200348
	lw      $a0, 0x0020($sp)
	jal     pl_set_state
	move    $a2, $0
	b       L8026B680
	nop
.globl L8026B670
L8026B670:
	jal     pl_jump_8026A12C
	lw      $a0, 0x0020($sp)
	b       L8026B680
	nop
.globl L8026B680
L8026B680:
	b       147$
	lw      $v0, 0x001C($sp)
	b       147$
	nop
147$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

pl_jump_8026B6A0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	jal     pl_jump_8026A400
	lw      $a0, 0x0018($sp)
	beqz    $v0, 9$
	nop
	b       36$
	li      $v0, 0x0001
9$:
	lw      $t6, 0x0018($sp)
	lhu     $t7, 0x0002($t6)
	andi    $t8, $t7, 0x8000
	beqz    $t8, 21$
	nop
	li.u    $a1, 0x008008A9
	li.l    $a1, 0x008008A9
	lw      $a0, 0x0018($sp)
	jal     pl_set_state
	move    $a2, $0
	b       36$
	nop
21$:
	li.u    $a1, 0x04008081
	li.l    $a1, 0x04008081
	lw      $a0, 0x0018($sp)
	jal     player_8025163C
	move    $a2, $0
	li.u    $a1, 0x04000470
	li.l    $a1, 0x04000470
	lw      $a0, 0x0018($sp)
	li      $a2, 0x004D
	jal     pl_jump_8026B444
	li      $a3, 0x0003
	b       36$
	move    $v0, $0
	b       36$
	nop
36$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_jump_8026B740:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lw      $t6, 0x0020($sp)
	mtc1    $0, $f6
	lwc1    $f4, 0x004C($t6)
	c.le.s  $f6, $f4
	nop
	bc1f    13$
	nop
	li      $t7, 0x0050
	b       15$
	sw      $t7, 0x001C($sp)
13$:
	li      $t8, 0x004C
	sw      $t8, 0x001C($sp)
15$:
	jal     pl_jump_8026A400
	lw      $a0, 0x0020($sp)
	beqz    $v0, 21$
	nop
	b       49$
	li      $v0, 0x0001
21$:
	lw      $t9, 0x0020($sp)
	lhu     $t0, 0x0002($t9)
	andi    $t1, $t0, 0x8000
	beqz    $t1, 33$
	nop
	li.u    $a1, 0x008008A9
	li.l    $a1, 0x008008A9
	lw      $a0, 0x0020($sp)
	jal     pl_set_state
	move    $a2, $0
	b       49$
	nop
33$:
	li.u    $a1, 0x04008081
	li.u    $a2, 0x24038081
	li.l    $a2, 0x24038081
	li.l    $a1, 0x04008081
	jal     player_8025163C
	lw      $a0, 0x0020($sp)
	li.u    $a1, 0x04000472
	li.l    $a1, 0x04000472
	lw      $a0, 0x0020($sp)
	lw      $a2, 0x001C($sp)
	jal     pl_jump_8026B444
	li      $a3, 0x0003
	b       49$
	move    $v0, $0
	b       49$
	nop
49$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

pl_jump_8026B814:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lui     $t6, %hi(save_jump)
	lbu     $t6, %lo(save_jump)($t6)
	beqz    $t6, 14$
	nop
	li.u    $a1, 0x030008AF
	li.l    $a1, 0x030008AF
	lw      $a0, 0x0018($sp)
	jal     pl_set_state
	move    $a2, $0
	b       58$
	nop
14$:
	lw      $t7, 0x0018($sp)
	lhu     $t8, 0x0002($t7)
	andi    $t9, $t8, 0x2000
	beqz    $t9, 26$
	nop
	li.u    $a1, 0x0188088A
	li.l    $a1, 0x0188088A
	lw      $a0, 0x0018($sp)
	jal     pl_set_state
	move    $a2, $0
	b       58$
	nop
26$:
	lw      $t0, 0x0018($sp)
	lhu     $t1, 0x0002($t0)
	andi    $t2, $t1, 0x8000
	beqz    $t2, 38$
	nop
	li.u    $a1, 0x008008A9
	li.l    $a1, 0x008008A9
	lw      $a0, 0x0018($sp)
	jal     pl_set_state
	move    $a2, $0
	b       58$
	nop
38$:
	li.u    $a1, 0x04008081
	li.l    $a1, 0x04008081
	lw      $a0, 0x0018($sp)
	jal     player_8025163C
	move    $a2, $0
	li.u    $a1, 0x04000478
	li.l    $a1, 0x04000478
	lw      $a0, 0x0018($sp)
	li      $a2, 0x00C1
	jal     pl_jump_8026B444
	move    $a3, $0
	lw      $a0, 0x0018($sp)
	li      $a1, 0x0002
	li      $a2, 0x0008
	jal     pl_jump_80269F40
	li      $a3, 0x0014
	b       58$
	move    $v0, $0
	b       58$
	nop
58$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_jump_8026B90C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	lhu     $t7, 0x0002($t6)
	andi    $t8, $t7, 0x8000
	beqz    $t8, 15$
	nop
	li.u    $a1, 0x008008A9
	li.l    $a1, 0x008008A9
	lw      $a0, 0x0018($sp)
	jal     pl_set_state
	move    $a2, $0
	b       36$
	nop
15$:
	li.u    $a1, 0x04008081
	li.u    $a2, 0x24008081
	li.l    $a2, 0x24008081
	li.l    $a1, 0x04008081
	jal     player_8025163C
	lw      $a0, 0x0018($sp)
	li.u    $a1, 0x0400047A
	li.l    $a1, 0x0400047A
	lw      $a0, 0x0018($sp)
	li      $a2, 0x0004
	jal     pl_jump_8026B444
	move    $a3, $0
	lw      $a0, 0x0018($sp)
	li      $a1, 0x0002
	li      $a2, 0x0003
	jal     pl_jump_80269F40
	li      $a3, 0x0011
	b       36$
	move    $v0, $0
	b       36$
	nop
36$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_jump_8026B9AC:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	lhu     $t7, 0x0002($t6)
	andi    $t8, $t7, 0x2000
	beqz    $t8, 16$
	nop
	li.u    $a1, 0x0188088A
	li.l    $a1, 0x0188088A
	lw      $a0, 0x0028($sp)
	jal     pl_set_state
	move    $a2, $0
	b       62$
	nop
16$:
	lw      $t9, 0x0028($sp)
	lhu     $t0, 0x0002($t9)
	andi    $t1, $t0, 0x8000
	beqz    $t1, 28$
	nop
	li.u    $a1, 0x008008A9
	li.l    $a1, 0x008008A9
	lw      $a0, 0x0028($sp)
	jal     pl_set_state
	move    $a2, $0
	b       62$
	nop
28$:
	lw      $t2, 0x0028($sp)
	lw      $s0, 0x001C($t2)
	beqz    $s0, 40$
	nop
	li      $at, 0x0001
	beq     $s0, $at, 44$
	nop
	li      $at, 0x0002
	beq     $s0, $at, 48$
	nop
	b       52$
	nop
40$:
	li      $t3, 0x0056
	sw      $t3, 0x0024($sp)
	b       52$
	nop
44$:
	li      $t4, 0x0090
	sw      $t4, 0x0024($sp)
	b       52$
	nop
48$:
	li      $t5, 0x0053
	sw      $t5, 0x0024($sp)
	b       52$
	nop
52$:
	li.u    $a1, 0x04000471
	li.l    $a1, 0x04000471
	lw      $a0, 0x0028($sp)
	lw      $a2, 0x0024($sp)
	jal     pl_jump_8026B444
	li      $a3, 0x0001
	b       62$
	move    $v0, $0
	b       62$
	nop
62$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_jump_8026BAB8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	lw      $t7, 0x0088($t6)
	lw      $t8, 0x0134($t7)
	andi    $t9, $t8, 0x0008
	beqz    $t9, 16$
	nop
	li.u    $a1, 0x0100088C
	li.l    $a1, 0x0100088C
	lw      $a0, 0x0018($sp)
	jal     player_80253178
	move    $a2, $0
	b       59$
	nop
16$:
	lw      $t0, 0x0018($sp)
	lhu     $t1, 0x0002($t0)
	andi    $t2, $t1, 0x2000
	beqz    $t2, 33$
	nop
	lw      $t3, 0x007C($t0)
	lw      $t4, 0x0190($t3)
	andi    $t5, $t4, 0x0010
	bnez    $t5, 33$
	nop
	li.u    $a1, 0x830008AB
	li.l    $a1, 0x830008AB
	lw      $a0, 0x0018($sp)
	jal     pl_set_state
	move    $a2, $0
	b       59$
	nop
33$:
	lw      $t6, 0x0018($sp)
	lhu     $t7, 0x0002($t6)
	andi    $t8, $t7, 0x8000
	beqz    $t8, 45$
	nop
	li.u    $a1, 0x008008A9
	li.l    $a1, 0x008008A9
	lw      $a0, 0x0018($sp)
	jal     player_80253178
	move    $a2, $0
	b       59$
	nop
45$:
	li.u    $a1, 0x04008081
	li.l    $a1, 0x04008081
	lw      $a0, 0x0018($sp)
	jal     player_8025163C
	move    $a2, $0
	lw      $a0, 0x0018($sp)
	li      $a1, 0x0474
	li      $a2, 0x0041
	jal     pl_jump_8026B444
	li      $a3, 0x0001
	b       59$
	move    $v0, $0
	b       59$
	nop
59$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_jump_8026BBB4:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lw      $t6, 0x0020($sp)
	lw      $t7, 0x001C($t6)
	bnez    $t7, 10$
	nop
	li      $t8, 0x0043
	b       12$
	sw      $t8, 0x001C($sp)
10$:
	li      $t9, 0x0044
	sw      $t9, 0x001C($sp)
12$:
	lw      $t0, 0x0020($sp)
	lw      $t1, 0x0088($t0)
	lw      $t2, 0x0134($t1)
	andi    $t3, $t2, 0x0008
	beqz    $t3, 25$
	nop
	li.u    $a1, 0x0100088C
	li.l    $a1, 0x0100088C
	lw      $a0, 0x0020($sp)
	jal     player_80253178
	move    $a2, $0
	b       63$
	nop
25$:
	lw      $t4, 0x0020($sp)
	lhu     $t5, 0x0002($t4)
	andi    $t6, $t5, 0x2000
	beqz    $t6, 42$
	nop
	lw      $t7, 0x007C($t4)
	lw      $t8, 0x0190($t7)
	andi    $t9, $t8, 0x0010
	bnez    $t9, 42$
	nop
	li.u    $a1, 0x830008AB
	li.l    $a1, 0x830008AB
	lw      $a0, 0x0020($sp)
	jal     pl_set_state
	move    $a2, $0
	b       63$
	nop
42$:
	lw      $t0, 0x0020($sp)
	lhu     $t1, 0x0002($t0)
	andi    $t2, $t1, 0x8000
	beqz    $t2, 54$
	nop
	li.u    $a1, 0x008008A9
	li.l    $a1, 0x008008A9
	lw      $a0, 0x0020($sp)
	jal     player_80253178
	move    $a2, $0
	b       63$
	nop
54$:
	lw      $a0, 0x0020($sp)
	li      $a1, 0x0475
	lw      $a2, 0x001C($sp)
	jal     pl_jump_8026B444
	li      $a3, 0x0001
	b       63$
	move    $v0, $0
	b       63$
	nop
63$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

pl_jump_8026BCC0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	lhu     $t7, 0x0002($t6)
	andi    $t8, $t7, 0x2000
	beqz    $t8, 15$
	nop
	li.u    $a1, 0x0188088A
	li.l    $a1, 0x0188088A
	lw      $a0, 0x0018($sp)
	jal     pl_set_state
	move    $a2, $0
	b       63$
	nop
15$:
	lw      $t9, 0x0018($sp)
	lhu     $t0, 0x0002($t9)
	andi    $t1, $t0, 0x8000
	beqz    $t1, 27$
	nop
	li.u    $a1, 0x008008A9
	li.l    $a1, 0x008008A9
	lw      $a0, 0x0018($sp)
	jal     pl_set_state
	move    $a2, $0
	b       63$
	nop
27$:
	li.u    $a1, 0x04008081
	li.l    $a1, 0x04008081
	lw      $a0, 0x0018($sp)
	jal     player_8025163C
	move    $a2, $0
	li.u    $a1, 0x04000473
	li.l    $a1, 0x04000473
	lw      $a0, 0x0018($sp)
	li      $a2, 0x00BF
	jal     pl_jump_8026B444
	li      $a3, 0x0001
	li      $at, 0x0003
	beq     $v0, $at, 47$
	nop
	lw      $t2, 0x0018($sp)
	li      $at, 0x8000
	lw      $t3, 0x0088($t2)
	lh      $t4, 0x001C($t3)
	addu    $t5, $t4, $at
	sh      $t5, 0x001C($t3)
47$:
	lw      $t6, 0x0018($sp)
	li      $at, 0x0006
	lw      $t7, 0x0088($t6)
	lh      $t8, 0x0040($t7)
	bne     $t8, $at, 59$
	nop
	lw      $t9, 0x0018($sp)
	li.u    $a0, 0x045A8081
	li.l    $a0, 0x045A8081
	lw      $a1, 0x0088($t9)
	jal     Na_SePlay
	addiu   $a1, $a1, 0x0054
59$:
	b       63$
	move    $v0, $0
	b       63$
	nop
63$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_jump_8026BDCC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	lhu     $t7, 0x0002($t6)
	andi    $t8, $t7, 0x2000
	beqz    $t8, 15$
	nop
	li.u    $a1, 0x0188088A
	li.l    $a1, 0x0188088A
	lw      $a0, 0x0018($sp)
	jal     pl_set_state
	move    $a2, $0
	b       39$
	nop
15$:
	lw      $t9, 0x0018($sp)
	lhu     $t0, 0x0002($t9)
	andi    $t1, $t0, 0x8000
	beqz    $t1, 27$
	nop
	li.u    $a1, 0x008008A9
	li.l    $a1, 0x008008A9
	lw      $a0, 0x0018($sp)
	jal     pl_set_state
	move    $a2, $0
	b       39$
	nop
27$:
	jal     player_8025118C
	lw      $a0, 0x0018($sp)
	li.u    $a1, 0x04000470
	li.l    $a1, 0x04000470
	lw      $a0, 0x0018($sp)
	li      $a2, 0x00CB
	jal     pl_jump_8026B444
	li      $a3, 0x0001
	b       39$
	move    $v0, $0
	b       39$
	nop
39$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_jump_8026BE78:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lw      $t6, 0x0020($sp)
	lw      $t7, 0x0088($t6)
	lw      $t8, 0x0110($t7)
	bnez    $t8, 11$
	nop
	li      $t9, 0x0013
	b       13$
	sw      $t9, 0x001C($sp)
11$:
	li      $t0, 0x0014
	sw      $t0, 0x001C($sp)
13$:
	li.u    $a1, 0x04008081
	li.u    $a2, 0x24048081
	li.l    $a2, 0x24048081
	li.l    $a1, 0x04008081
	jal     player_8025163C
	lw      $a0, 0x0020($sp)
	lw      $t1, 0x0020($sp)
	li      $at, 0x0038
	lw      $t2, 0x0068($t1)
	lh      $t3, 0x0000($t2)
	bne     $t3, $at, 37$
	nop
	lhu     $t4, 0x0018($t1)
	bnez    $t4, 37$
	nop
	lw      $t5, 0x0020($sp)
	li.u    $a0, 0x240C8081
	li.l    $a0, 0x240C8081
	lw      $a1, 0x0088($t5)
	jal     Na_SePlay
	addiu   $a1, $a1, 0x0054
	lw      $t7, 0x0020($sp)
	li      $t6, 0x0001
	sh      $t6, 0x0018($t7)
37$:
	lw      $a0, 0x0020($sp)
	li      $a1, 0x0479
	lw      $a2, 0x001C($sp)
	jal     pl_jump_8026B444
	li      $a3, 0x0001
	b       46$
	move    $v0, $0
	b       46$
	nop
46$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

pl_jump_8026BF40:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	li.u    $a1, 0x04008081
	li.l    $a1, 0x04008081
	lw      $a0, 0x0028($sp)
	jal     player_8025163C
	move    $a2, $0
	lw      $a0, 0x0028($sp)
	jal     pl_set_anime
	li      $a1, 0x004A
	jal     pl_jump_8026AA48
	lw      $a0, 0x0028($sp)
	lw      $a0, 0x0028($sp)
	jal     physics_80256B24
	move    $a1, $0
	move    $s0, $v0
	li      $at, 0x0001
	beq     $s0, $at, 29$
	nop
	li      $at, 0x0002
	beq     $s0, $at, 36$
	nop
	li      $at, 0x0006
	beq     $s0, $at, 41$
	nop
	b       45$
	nop
29$:
	li.u    $a1, 0x20810446
	li.l    $a1, 0x20810446
	lw      $a0, 0x0028($sp)
	jal     pl_set_state
	li      $a2, 0x0001
	b       45$
	nop
36$:
	lw      $a0, 0x0028($sp)
	jal     player_80251708
	li      $a1, 0x0000
	b       45$
	nop
41$:
	jal     pl_jump_8026A12C
	lw      $a0, 0x0028($sp)
	b       45$
	nop
45$:
	lw      $t6, 0x0028($sp)
	li      $at, 0x42280000
	mtc1    $at, $f6
	lw      $t7, 0x0088($t6)
	lwc1    $f4, 0x0024($t7)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x0024($t7)
	b       56$
	move    $v0, $0
	b       56$
	nop
56$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_jump_8026C034:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	lh      $t7, 0x003A($t6)
	sh      $t7, 0x0026($sp)
	lw      $t8, 0x0028($sp)
	lhu     $t9, 0x0002($t8)
	andi    $t0, $t9, 0x0080
	beqz    $t0, 15$
	nop
	li      $t1, 0x2000
	b       17$
	sh      $t1, 0x0024($sp)
15$:
	li      $t2, 0x1800
	sh      $t2, 0x0024($sp)
17$:
	lw      $t3, 0x0028($sp)
	lh      $a1, 0x0024($sp)
	li      $a2, 0x0200
	li      $a3, 0x0200
	jal     convergei
	lh      $a0, 0x0034($t3)
	lw      $t4, 0x0028($sp)
	sh      $v0, 0x0034($t4)
	lw      $t5, 0x0028($sp)
	lh      $t6, 0x003A($t5)
	lh      $t7, 0x0034($t5)
	addu    $t8, $t6, $t7
	sh      $t8, 0x003A($t5)
	lw      $t9, 0x0028($sp)
	lw      $t0, 0x001C($t9)
	bnez    $t0, 36$
	nop
	b       37$
	li      $s0, 0x0095
36$:
	li      $s0, 0x0094
37$:
	lw      $a0, 0x0028($sp)
	jal     pl_set_anime
	move    $a1, $s0
	jal     player_8025097C
	lw      $a0, 0x0028($sp)
	beqz    $v0, 47$
	nop
	lw      $t2, 0x0028($sp)
	li      $t1, 0x0001
	sw      $t1, 0x001C($t2)
47$:
	lw      $t4, 0x0028($sp)
	lh      $t3, 0x0026($sp)
	lh      $t6, 0x003A($t4)
	slt     $at, $t6, $t3
	beqz    $at, 59$
	nop
	lw      $t7, 0x0028($sp)
	li.u    $a0, 0x04388081
	li.l    $a0, 0x04388081
	lw      $a1, 0x0088($t7)
	jal     Na_SePlay
	addiu   $a1, $a1, 0x0054
59$:
	jal     pl_jump_8026ACD8
	lw      $a0, 0x0028($sp)
	lw      $a0, 0x0028($sp)
	jal     physics_80256B24
	move    $a1, $0
	move    $s0, $v0
	li      $at, 0x0001
	beq     $s0, $at, 76$
	nop
	li      $at, 0x0002
	beq     $s0, $at, 83$
	nop
	li      $at, 0x0006
	beq     $s0, $at, 88$
	nop
	b       92$
	nop
76$:
	li.u    $a1, 0x18800238
	li.l    $a1, 0x18800238
	lw      $a0, 0x0028($sp)
	jal     pl_set_state
	move    $a2, $0
	b       92$
	nop
83$:
	lw      $a0, 0x0028($sp)
	jal     physics_802552FC
	move    $a1, $0
	b       92$
	nop
88$:
	jal     pl_jump_8026A12C
	lw      $a0, 0x0028($sp)
	b       92$
	nop
92$:
	lw      $t8, 0x0028($sp)
	lw      $t5, 0x0088($t8)
	lh      $t0, 0x003A($t8)
	lh      $t9, 0x001C($t5)
	addu    $t1, $t9, $t0
	sh      $t1, 0x001C($t5)
	b       102$
	move    $v0, $0
	b       102$
	nop
102$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_jump_8026C1E0:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	lw      $t7, 0x001C($t6)
	bnez    $t7, 16$
	nop
	li.u    $a1, 0x04358081
	li.u    $a2, 0x24038081
	li.l    $a2, 0x24038081
	li.l    $a1, 0x04358081
	jal     player_8025163C
	lw      $a0, 0x0028($sp)
	b       21$
	nop
16$:
	li.u    $a1, 0x04008081
	li.l    $a1, 0x04008081
	lw      $a0, 0x0028($sp)
	jal     player_8025163C
	move    $a2, $0
21$:
	lw      $a0, 0x0028($sp)
	jal     pl_set_anime
	li      $a1, 0x0088
	jal     collision_8024CC7C
	lw      $a0, 0x0028($sp)
	beqz    $v0, 42$
	nop
	jal     collision_8024C66C
	lw      $a0, 0x0028($sp)
	lw      $t9, 0x0028($sp)
	li      $t8, 0x0001
	lw      $t0, 0x0098($t9)
	sb      $t8, 0x000A($t0)
	lw      $t1, 0x0028($sp)
	li.u    $at, 0x0188088A
	li.l    $at, 0x0188088A
	lw      $t2, 0x000C($t1)
	beq     $t2, $at, 42$
	nop
	b       177$
	li      $v0, 0x0001
42$:
	jal     pl_jump_8026AA48
	lw      $a0, 0x0028($sp)
	lw      $a0, 0x0028($sp)
	jal     physics_80256B24
	move    $a1, $0
	move    $s0, $v0
	beqz    $s0, 61$
	nop
	li      $at, 0x0001
	beq     $s0, $at, 91$
	nop
	li      $at, 0x0002
	beq     $s0, $at, 143$
	nop
	li      $at, 0x0006
	beq     $s0, $at, 169$
	nop
	b       173$
	nop
61$:
	lw      $t3, 0x0028($sp)
	mtc1    $0, $f6
	lwc1    $f4, 0x004C($t3)
	c.lt.s  $f4, $f6
	nop
	bc1f    84$
	nop
	lh      $t4, 0x002C($t3)
	slti    $at, $t4, -0x2AA9
	bnez    $at, 84$
	nop
	lw      $t5, 0x0028($sp)
	lh      $t6, 0x002C($t5)
	addiu   $t7, $t6, -0x0200
	sh      $t7, 0x002C($t5)
	lw      $t9, 0x0028($sp)
	lh      $t8, 0x002C($t9)
	slti    $at, $t8, -0x2AAA
	beqz    $at, 84$
	nop
	lw      $t1, 0x0028($sp)
	li      $t0, -0x2AAA
	sh      $t0, 0x002C($t1)
84$:
	lw      $t2, 0x0028($sp)
	lh      $t3, 0x002C($t2)
	lw      $t6, 0x0088($t2)
	subu    $t4, $0, $t3
	sh      $t4, 0x001A($t6)
	b       173$
	nop
91$:
	jal     pl_jump_8026A494
	lw      $a0, 0x0028($sp)
	beqz    $v0, 118$
	nop
	lw      $t7, 0x0028($sp)
	li      $at, -0x2AAA
	lh      $t5, 0x002C($t7)
	bne     $t5, $at, 118$
	nop
	lw      $t9, 0x0028($sp)
	li.u    $a0, 0x240BD081
	li.l    $a0, 0x240BD081
	lw      $a1, 0x0088($t9)
	jal     Na_SePlay
	addiu   $a1, $a1, 0x0054
	lw      $t8, 0x0028($sp)
	li      $at, 0x00010000
	lw      $t0, 0x0008($t8)
	or      $t1, $t0, $at
	sw      $t1, 0x0008($t8)
	li.u    $a1, 0x0002033A
	li.l    $a1, 0x0002033A
	lw      $a0, 0x0028($sp)
	jal     player_80253178
	move    $a2, $0
	b       139$
	nop
118$:
	li.u    $a1, 0x00020461
	li.l    $a1, 0x00020461
	jal     pl_jump_8026A224
	lw      $a0, 0x0028($sp)
	bnez    $v0, 139$
	nop
	lw      $t3, 0x0028($sp)
	lw      $t2, 0x007C($t3)
	bnez    $t2, 135$
	nop
	li.u    $a1, 0x00880456
	li.l    $a1, 0x00880456
	lw      $a0, 0x0028($sp)
	jal     pl_set_state
	move    $a2, $0
	b       139$
	nop
135$:
	lw      $a0, 0x0028($sp)
	li      $a1, 0x0385
	jal     pl_set_state
	move    $a2, $0
139$:
	lw      $t4, 0x0028($sp)
	sh      $0, 0x002C($t4)
	b       173$
	nop
143$:
	lw      $a0, 0x0028($sp)
	jal     physics_802552FC
	li      $a1, 0x0001
	lw      $t6, 0x0028($sp)
	sh      $0, 0x002C($t6)
	lw      $t7, 0x0028($sp)
	mtc1    $0, $f10
	lwc1    $f8, 0x004C($t7)
	c.lt.s  $f10, $f8
	nop
	bc1f    158$
	nop
	mtc1    $0, $f16
	lw      $t5, 0x0028($sp)
	swc1    $f16, 0x004C($t5)
158$:
	lw      $t9, 0x0028($sp)
	lw      $t0, 0x0008($t9)
	ori     $t1, $t0, 0x0002
	sw      $t1, 0x0008($t9)
	li.u    $a1, 0x010208B0
	li.l    $a1, 0x010208B0
	lw      $a0, 0x0028($sp)
	jal     player_80253178
	move    $a2, $0
	b       173$
	nop
169$:
	jal     pl_jump_8026A12C
	lw      $a0, 0x0028($sp)
	b       173$
	nop
173$:
	b       177$
	move    $v0, $0
	b       177$
	nop
177$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_jump_8026C4B8:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	li      $at, 0x0004
	lhu     $t7, 0x001A($t6)
	addiu   $t8, $t7, 0x0001
	sh      $t8, 0x001A($t6)
	lw      $t9, 0x0028($sp)
	lhu     $t0, 0x001A($t9)
	bne     $t0, $at, 15$
	nop
	jal     collision_8024C780
	lw      $a0, 0x0028($sp)
15$:
	li.u    $a1, 0x24078081
	li.l    $a1, 0x24078081
	lw      $a0, 0x0028($sp)
	jal     player_80251120
	li      $a2, 0x00020000
	lw      $a0, 0x0028($sp)
	jal     pl_set_anime
	li      $a1, 0x0052
	jal     pl_jump_8026AA48
	lw      $a0, 0x0028($sp)
	lw      $a0, 0x0028($sp)
	jal     physics_80256B24
	move    $a1, $0
	move    $s0, $v0
	li      $at, 0x0001
	beq     $s0, $at, 40$
	nop
	li      $at, 0x0002
	beq     $s0, $at, 52$
	nop
	li      $at, 0x0006
	beq     $s0, $at, 57$
	nop
	b       61$
	nop
40$:
	li.u    $a1, 0x00020460
	li.l    $a1, 0x00020460
	jal     pl_jump_8026A598
	lw      $a0, 0x0028($sp)
	bnez    $v0, 50$
	nop
	lw      $t2, 0x0028($sp)
	li.u    $t1, 0x80000A36
	li.l    $t1, 0x80000A36
	sw      $t1, 0x000C($t2)
50$:
	b       61$
	nop
52$:
	lw      $a0, 0x0028($sp)
	jal     player_80251708
	li      $a1, 0x0000
	b       61$
	nop
57$:
	jal     pl_jump_8026A12C
	lw      $a0, 0x0028($sp)
	b       61$
	nop
61$:
	b       65$
	move    $v0, $0
	b       65$
	nop
65$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_jump_8026C5D0:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	li      $at, 0x41700000
	mtc1    $at, $f6
	lwc1    $f4, 0x0054($t6)
	c.lt.s  $f4, $f6
	nop
	bc1f    15$
	nop
	lw      $a0, 0x0028($sp)
	jal     player_80251708
	li      $a1, 0x41700000
15$:
	li.u    $a1, 0x04328081
	li.l    $a1, 0x04328081
	lw      $a0, 0x0028($sp)
	jal     player_8025163C
	move    $a2, $0
	lw      $a0, 0x0028($sp)
	jal     pl_set_anime
	li      $a1, 0x004D
	lw      $a0, 0x0028($sp)
	jal     physics_80256B24
	li      $a1, 0x0001
	move    $s0, $v0
	li      $at, 0x0001
	beq     $s0, $at, 41$
	nop
	li      $at, 0x0002
	beq     $s0, $at, 55$
	nop
	li      $at, 0x0003
	beq     $s0, $at, 60$
	nop
	li      $at, 0x0006
	beq     $s0, $at, 77$
	nop
	b       81$
	nop
41$:
	li.u    $a1, 0x04000470
	li.l    $a1, 0x04000470
	lw      $a0, 0x0028($sp)
	jal     pl_set_state
	move    $a2, $0
	lw      $t7, 0x0028($sp)
	li      $a2, 0x0001
	lw      $t8, 0x0090($t7)
	lw      $t9, 0x0024($t8)
	move    $a0, $t9
	jal     camera_80286188
	lbu     $a1, 0x0001($t9)
	b       81$
	nop
55$:
	lw      $a0, 0x0028($sp)
	jal     player_80251708
	li      $a1, 0x41700000
	b       81$
	nop
60$:
	lw      $a0, 0x0028($sp)
	jal     pl_set_anime
	li      $a1, 0x0033
	li.u    $a1, 0x0800034B
	li.l    $a1, 0x0800034B
	lw      $a0, 0x0028($sp)
	jal     pl_set_state
	move    $a2, $0
	lw      $t0, 0x0028($sp)
	li      $a2, 0x0001
	lw      $t1, 0x0090($t0)
	lw      $t2, 0x0024($t1)
	move    $a0, $t2
	jal     camera_80286188
	lbu     $a1, 0x0001($t2)
	b       81$
	nop
77$:
	jal     pl_jump_8026A12C
	lw      $a0, 0x0028($sp)
	b       81$
	nop
81$:
	b       85$
	move    $v0, $0
	b       85$
	nop
85$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_jump_8026C738:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	lw      $t7, 0x0088($t6)
	lw      $t8, 0x0134($t7)
	andi    $t9, $t8, 0x0008
	beqz    $t9, 17$
	nop
	li.u    $a1, 0x0100088C
	li.l    $a1, 0x0100088C
	lw      $a0, 0x0028($sp)
	jal     player_80253178
	move    $a2, $0
	b       77$
	nop
17$:
	lw      $t0, 0x0028($sp)
	li      $at, 0x41700000
	mtc1    $at, $f6
	lwc1    $f4, 0x0054($t0)
	c.lt.s  $f4, $f6
	nop
	bc1f    28$
	nop
	lw      $a0, 0x0028($sp)
	jal     player_80251708
	li      $a1, 0x41700000
28$:
	li.u    $a1, 0x04328081
	li.l    $a1, 0x04328081
	lw      $a0, 0x0028($sp)
	jal     player_8025163C
	move    $a2, $0
	lw      $a0, 0x0028($sp)
	jal     pl_set_anime
	li      $a1, 0x0041
	lw      $a0, 0x0028($sp)
	jal     physics_80256B24
	move    $a1, $0
	move    $s0, $v0
	li      $at, 0x0001
	beq     $s0, $at, 51$
	nop
	li      $at, 0x0002
	beq     $s0, $at, 64$
	nop
	li      $at, 0x0006
	beq     $s0, $at, 69$
	nop
	b       73$
	nop
51$:
	lw      $a0, 0x0028($sp)
	li      $a1, 0x0474
	jal     pl_set_state
	move    $a2, $0
	lw      $t1, 0x0028($sp)
	li      $a2, 0x0001
	lw      $t2, 0x0090($t1)
	lw      $t3, 0x0024($t2)
	move    $a0, $t3
	jal     camera_80286188
	lbu     $a1, 0x0001($t3)
	b       73$
	nop
64$:
	lw      $a0, 0x0028($sp)
	jal     player_80251708
	li      $a1, 0x41700000
	b       73$
	nop
69$:
	jal     pl_jump_8026A12C
	lw      $a0, 0x0028($sp)
	b       73$
	nop
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

pl_jump_8026C880:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	lhu     $t7, 0x0002($t6)
	andi    $t8, $t7, 0x2000
	beqz    $t8, 16$
	nop
	li.u    $a1, 0x0188088A
	li.l    $a1, 0x0188088A
	lw      $a0, 0x0028($sp)
	jal     pl_set_state
	move    $a2, $0
	b       90$
	nop
16$:
	li.u    $a1, 0x04008081
	li.l    $a1, 0x04008081
	lw      $a0, 0x0028($sp)
	jal     player_8025163C
	move    $a2, $0
	lw      $t9, 0x0028($sp)
	lui     $at, %hi(pl_jump_80336C38)
	lwc1    $f6, %lo(pl_jump_80336C38)($at)
	lwc1    $f4, 0x0054($t9)
	move    $a0, $t9
	mul.s   $f8, $f4, $f6
	mfc1    $a1, $f8
	jal     player_80251708
	nop
	lw      $a0, 0x0028($sp)
	jal     physics_80256B24
	move    $a1, $0
	move    $s0, $v0
	li      $at, 0x0001
	beq     $s0, $at, 45$
	nop
	li      $at, 0x0002
	beq     $s0, $at, 70$
	nop
	li      $at, 0x0006
	beq     $s0, $at, 75$
	nop
	b       79$
	nop
45$:
	li.u    $a1, 0x00020460
	li.l    $a1, 0x00020460
	jal     pl_jump_8026A598
	lw      $a0, 0x0028($sp)
	bnez    $v0, 68$
	nop
	lw      $t0, 0x0028($sp)
	sh      $0, 0x002C($t0)
	lw      $t1, 0x0028($sp)
	mtc1    $0, $f16
	lwc1    $f10, 0x0054($t1)
	c.lt.s  $f10, $f16
	nop
	bc1f    62$
	nop
	b       64$
	li      $s0, 0x0050
62$:
	li.u    $s0, 0x04000470
	li.l    $s0, 0x04000470
64$:
	lw      $a0, 0x0028($sp)
	move    $a1, $s0
	jal     pl_set_state
	move    $a2, $0
68$:
	b       79$
	nop
70$:
	lw      $a0, 0x0028($sp)
	jal     player_80251708
	li      $a1, 0x0000
	b       79$
	nop
75$:
	jal     pl_jump_8026A12C
	lw      $a0, 0x0028($sp)
	b       79$
	nop
79$:
	lw      $a0, 0x0028($sp)
	jal     pl_set_anime
	li      $a1, 0x004D
	lw      $t2, 0x0028($sp)
	lw      $t3, 0x0088($t2)
	lw      $t4, 0x0110($t3)
	sh      $t4, 0x001C($t3)
	b       90$
	move    $v0, $0
	b       90$
	nop
90$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_jump_8026C9FC:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0030($sp)
	sw      $s0, 0x0018($sp)
	li.u    $a1, 0x04358081
	li.l    $a1, 0x04358081
	lw      $a0, 0x0030($sp)
	jal     player_80251120
	li      $a2, 0x00010000
	lw      $t6, 0x0030($sp)
	lhu     $t7, 0x0018($t6)
	bnez    $t7, 103$
	nop
	lw      $t8, 0x0030($sp)
	lhu     $t9, 0x001A($t8)
	slti    $at, $t9, 0x000A
	beqz    $at, 52$
	nop
	lw      $t0, 0x0030($sp)
	li      $t3, 0x0014
	lhu     $t1, 0x001A($t0)
	sll     $t2, $t1, 1
	subu    $t4, $t3, $t2
	mtc1    $t4, $f4
	nop
	cvt.s.w $f6, $f4
	swc1    $f6, 0x0028($sp)
	lw      $t5, 0x0030($sp)
	lwc1    $f10, 0x0028($sp)
	li      $at, 0x43200000
	lwc1    $f8, 0x0040($t5)
	mtc1    $at, $f18
	lwc1    $f6, 0x006C($t5)
	add.s   $f16, $f8, $f10
	add.s   $f4, $f16, $f18
	c.lt.s  $f4, $f6
	nop
	bc1f    52$
	nop
	lw      $t6, 0x0030($sp)
	lwc1    $f10, 0x0028($sp)
	lwc1    $f8, 0x0040($t6)
	add.s   $f16, $f8, $f10
	swc1    $f16, 0x0040($t6)
	lw      $t7, 0x0030($sp)
	lwc1    $f18, 0x0040($t7)
	swc1    $f18, 0x00BC($t7)
	lw      $t8, 0x0030($sp)
	lw      $a0, 0x0088($t8)
	addiu   $a1, $t8, 0x003C
	jal     vecf_cpy
	addiu   $a0, $a0, 0x0020
52$:
	li      $at, 0xC2480000
	mtc1    $at, $f4
	lw      $t9, 0x0030($sp)
	swc1    $f4, 0x004C($t9)
	lw      $a0, 0x0030($sp)
	jal     player_80251708
	li      $a1, 0x0000
	lw      $t0, 0x0030($sp)
	lw      $t1, 0x001C($t0)
	bnez    $t1, 65$
	nop
	b       66$
	li      $s0, 0x003C
65$:
	li      $s0, 0x003B
66$:
	lw      $a0, 0x0030($sp)
	jal     pl_set_anime
	move    $a1, $s0
	lw      $t3, 0x0030($sp)
	lhu     $t2, 0x001A($t3)
	bnez    $t2, 79$
	nop
	lw      $t4, 0x0030($sp)
	li.u    $a0, 0x04378081
	li.l    $a0, 0x04378081
	lw      $a1, 0x0088($t4)
	jal     Na_SePlay
	addiu   $a1, $a1, 0x0054
79$:
	lw      $t5, 0x0030($sp)
	lhu     $t6, 0x001A($t5)
	addiu   $t7, $t6, 0x0001
	sh      $t7, 0x001A($t5)
	lw      $t8, 0x0030($sp)
	lw      $t0, 0x0088($t8)
	lhu     $t9, 0x001A($t8)
	lw      $t1, 0x003C($t0)
	lh      $t3, 0x0008($t1)
	addiu   $t2, $t3, 0x0004
	slt     $at, $t9, $t2
	bnez    $at, 101$
	nop
	lw      $t4, 0x0030($sp)
	li.u    $a0, 0x24228081
	li.l    $a0, 0x24228081
	lw      $a1, 0x0088($t4)
	jal     Na_SePlay
	addiu   $a1, $a1, 0x0054
	lw      $t7, 0x0030($sp)
	li      $t6, 0x0001
	sh      $t6, 0x0018($t7)
101$:
	b       187$
	nop
103$:
	lw      $a0, 0x0030($sp)
	jal     pl_set_anime
	li      $a1, 0x003D
	lw      $a0, 0x0030($sp)
	jal     physics_80256B24
	move    $a1, $0
	sw      $v0, 0x002C($sp)
	lw      $t5, 0x002C($sp)
	li      $at, 0x0001
	bne     $t5, $at, 161$
	nop
	jal     pl_jump_8026A494
	lw      $a0, 0x0030($sp)
	beqz    $v0, 136$
	nop
	lw      $t8, 0x0030($sp)
	li.u    $a0, 0x240BD081
	li.l    $a0, 0x240BD081
	lw      $a1, 0x0088($t8)
	jal     Na_SePlay
	addiu   $a1, $a1, 0x0054
	lw      $t0, 0x0030($sp)
	li      $at, 0x00010000
	lw      $t1, 0x0008($t0)
	or      $t3, $t1, $at
	sw      $t3, 0x0008($t0)
	li.u    $a1, 0x0002033B
	li.l    $a1, 0x0002033B
	lw      $a0, 0x0030($sp)
	jal     pl_set_state
	move    $a2, $0
	b       157$
	nop
136$:
	li.u    $a1, 0x04608081
	li.l    $a1, 0x04608081
	jal     player_80251574
	lw      $a0, 0x0030($sp)
	li.u    $a1, 0x00020460
	li.l    $a1, 0x00020460
	jal     pl_jump_8026A224
	lw      $a0, 0x0030($sp)
	bnez    $v0, 157$
	nop
	lw      $t9, 0x0030($sp)
	li.u    $at, 0x00010010
	li.l    $at, 0x00010010
	lw      $t2, 0x0008($t9)
	or      $t4, $t2, $at
	sw      $t4, 0x0008($t9)
	li.u    $a1, 0x0080023C
	li.l    $a1, 0x0080023C
	lw      $a0, 0x0030($sp)
	jal     pl_set_state
	move    $a2, $0
157$:
	jal     camera_8027F590
	li      $a0, 0x0002
	b       187$
	nop
161$:
	lw      $t6, 0x002C($sp)
	li      $at, 0x0002
	bne     $t6, $at, 187$
	nop
	lw      $a0, 0x0030($sp)
	jal     player_80251708
	li      $a1, 0xC1800000
	lw      $t7, 0x0030($sp)
	mtc1    $0, $f8
	lwc1    $f6, 0x004C($t7)
	c.lt.s  $f8, $f6
	nop
	bc1f    178$
	nop
	mtc1    $0, $f10
	lw      $t5, 0x0030($sp)
	swc1    $f10, 0x004C($t5)
178$:
	lw      $t8, 0x0030($sp)
	lw      $t1, 0x0008($t8)
	ori     $t3, $t1, 0x0002
	sw      $t3, 0x0008($t8)
	li.u    $a1, 0x010208B0
	li.l    $a1, 0x010208B0
	lw      $a0, 0x0030($sp)
	jal     pl_set_state
	move    $a2, $0
187$:
	b       191$
	move    $v0, $0
	b       191$
	nop
191$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

pl_jump_8026CD0C:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	lw      $t7, 0x001C($t6)
	bnez    $t7, 10$
	nop
	b       11$
	move    $s0, $0
10$:
	li      $s0, -0x0001
11$:
	li.u    $a1, 0x04008081
	li.l    $a1, 0x04008081
	lw      $a0, 0x0028($sp)
	jal     player_8025163C
	move    $a2, $s0
	lw      $t8, 0x0028($sp)
	move    $a0, $t8
	jal     player_80251708
	lw      $a1, 0x0054($t8)
	lw      $a0, 0x0028($sp)
	jal     physics_80256B24
	move    $a1, $0
	li      $at, 0x0001
	bne     $v0, $at, 35$
	nop
	li.u    $a1, 0x04088081
	li.l    $a1, 0x04088081
	jal     player_802514AC
	lw      $a0, 0x0028($sp)
	li.u    $a1, 0x00020449
	li.l    $a1, 0x00020449
	lw      $a0, 0x0028($sp)
	jal     pl_set_state
	move    $a2, $0
35$:
	lw      $t9, 0x0028($sp)
	lw      $t0, 0x001C($t9)
	bnez    $t0, 41$
	nop
	b       42$
	li      $s0, 0x004D
41$:
	li      $s0, 0x0029
42$:
	lw      $a0, 0x0028($sp)
	jal     pl_set_anime
	move    $a1, $s0
	lw      $t1, 0x0028($sp)
	lw      $t2, 0x0008($t1)
	ori     $t3, $t2, 0x0800
	sw      $t3, 0x0008($t1)
	lw      $t4, 0x0028($sp)
	li.u    $a0, 0x14100001
	li.l    $a0, 0x14100001
	lw      $a1, 0x0088($t4)
	jal     Na_SePlay
	addiu   $a1, $a1, 0x0054
	lw      $t5, 0x0028($sp)
	lw      $t6, 0x0088($t5)
	lw      $t7, 0x0110($t6)
	addiu   $t8, $t7, 0x0003
	sw      $t8, 0x0110($t6)
	lw      $t9, 0x0028($sp)
	lh      $t0, 0x00AE($t9)
	addiu   $t2, $t0, -0x000A
	sh      $t2, 0x00AE($t9)
	lw      $t3, 0x0028($sp)
	lh      $t1, 0x00AE($t3)
	slti    $at, $t1, 0x0100
	beqz    $at, 72$
	nop
	lw      $t5, 0x0028($sp)
	li      $t4, 0x00FF
	sh      $t4, 0x00AE($t5)
72$:
	b       76$
	move    $v0, $0
	b       76$
	nop
76$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_jump_8026CE50:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	move    $a0, $t6
	jal     player_80251708
	lw      $a1, 0x0054($t6)
	lw      $a0, 0x0018($sp)
	jal     physics_80256B24
	move    $a1, $0
	li      $at, 0x0001
	bne     $v0, $at, 22$
	nop
	li.u    $a1, 0x04088081
	li.l    $a1, 0x04088081
	jal     player_802514AC
	lw      $a0, 0x0018($sp)
	li.u    $a1, 0x00020449
	li.l    $a1, 0x00020449
	lw      $a0, 0x0018($sp)
	jal     pl_set_state
	move    $a2, $0
22$:
	lw      $a0, 0x0018($sp)
	jal     pl_set_anime
	li      $a1, 0x0056
	lw      $t7, 0x0018($sp)
	lw      $t8, 0x0008($t7)
	ori     $t9, $t8, 0x0800
	sw      $t9, 0x0008($t7)
	lw      $t0, 0x0018($sp)
	lw      $t1, 0x0088($t0)
	lw      $t2, 0x0110($t1)
	addiu   $t3, $t2, 0x0003
	sw      $t3, 0x0110($t1)
	lw      $t4, 0x0018($sp)
	lh      $t5, 0x00AE($t4)
	addiu   $t6, $t5, -0x000A
	sh      $t6, 0x00AE($t4)
	lw      $t8, 0x0018($sp)
	lh      $t9, 0x00AE($t8)
	slti    $at, $t9, 0x0100
	beqz    $at, 46$
	nop
	lw      $t0, 0x0018($sp)
	li      $t7, 0x00FF
	sh      $t7, 0x00AE($t0)
46$:
	b       50$
	move    $v0, $0
	b       50$
	nop
50$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_jump_8026CF28:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	lhu     $t7, 0x001A($t6)
	bnez    $t7, 80$
	nop
	lw      $t8, 0x0028($sp)
	lw      $s0, 0x001C($t8)
	beqz    $s0, 20$
	nop
	li      $at, 0x0001
	beq     $s0, $at, 30$
	nop
	li      $at, 0x0002
	beq     $s0, $at, 40$
	nop
	b       50$
	nop
20$:
	li      $at, 0x42340000
	mtc1    $at, $f4
	lw      $t9, 0x0028($sp)
	swc1    $f4, 0x004C($t9)
	li      $at, 0x42000000
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x0024($sp)
	b       50$
	nop
30$:
	li      $at, 0x42700000
	mtc1    $at, $f8
	lw      $t0, 0x0028($sp)
	swc1    $f8, 0x004C($t0)
	li      $at, 0x42100000
	mtc1    $at, $f10
	nop
	swc1    $f10, 0x0024($sp)
	b       50$
	nop
40$:
	li      $at, 0x42C80000
	mtc1    $at, $f16
	lw      $t1, 0x0028($sp)
	swc1    $f16, 0x004C($t1)
	li      $at, 0x42400000
	mtc1    $at, $f18
	nop
	swc1    $f18, 0x0024($sp)
	b       50$
	nop
50$:
	li      $at, 0x42200000
	mtc1    $at, $f6
	lwc1    $f4, 0x0024($sp)
	c.lt.s  $f4, $f6
	nop
	bc1f    60$
	nop
	li.u    $s0, 0x306C4081
	b       62$
	li.l    $s0, 0x306C4081
60$:
	li.u    $s0, 0x306D4081
	li.l    $s0, 0x306D4081
62$:
	lw      $t2, 0x0028($sp)
	move    $a0, $s0
	lw      $a1, 0x0088($t2)
	jal     Na_SePlay
	addiu   $a1, $a1, 0x0054
	lw      $t3, 0x0028($sp)
	lwc1    $f10, 0x0024($sp)
	lwc1    $f8, 0x0054($t3)
	c.lt.s  $f8, $f10
	nop
	bc1f    77$
	nop
	lw      $a0, 0x0028($sp)
	jal     player_80251708
	lw      $a1, 0x0024($sp)
77$:
	lw      $t5, 0x0028($sp)
	li      $t4, 0x0001
	sh      $t4, 0x001A($t5)
80$:
	li.u    $a1, 0x04008081
	li.l    $a1, 0x04008081
	lw      $a0, 0x0028($sp)
	jal     player_8025163C
	move    $a2, $0
	lw      $a0, 0x0028($sp)
	jal     pl_set_anime
	li      $a1, 0x0088
	jal     pl_jump_8026AA48
	lw      $a0, 0x0028($sp)
	lw      $a0, 0x0028($sp)
	jal     physics_80256B24
	move    $a1, $0
	move    $s0, $v0
	li      $at, 0x0001
	beq     $s0, $at, 105$
	nop
	li      $at, 0x0002
	beq     $s0, $at, 136$
	nop
	li      $at, 0x0006
	beq     $s0, $at, 141$
	nop
	b       145$
	nop
105$:
	lw      $t6, 0x0028($sp)
	lw      $t7, 0x001C($t6)
	sltiu   $at, $t7, 0x0002
	beqz    $at, 118$
	nop
	lw      $t8, 0x0028($sp)
	li      $a1, 0x08AE
	lw      $a2, 0x001C($t8)
	move    $a0, $t8
	jal     pl_set_state
	addiu   $a2, $a2, 0x0001
	b       129$
	nop
118$:
	lw      $t0, 0x0028($sp)
	li      $t9, 0x00400000
	lw      $t1, 0x007C($t0)
	sw      $t9, 0x0134($t1)
	lw      $t2, 0x0028($sp)
	sw      $0, 0x007C($t2)
	li.u    $a1, 0x008C0453
	li.l    $a1, 0x008C0453
	lw      $a0, 0x0028($sp)
	jal     pl_set_state
	move    $a2, $0
129$:
	lw      $t3, 0x0028($sp)
	li      $at, 0x00010000
	lw      $t4, 0x0008($t3)
	or      $t5, $t4, $at
	sw      $t5, 0x0008($t3)
	b       145$
	nop
136$:
	lw      $a0, 0x0028($sp)
	jal     physics_802552FC
	move    $a1, $0
	b       145$
	nop
141$:
	jal     pl_jump_8026A12C
	lw      $a0, 0x0028($sp)
	b       145$
	nop
145$:
	lw      $t6, 0x0028($sp)
	lwc1    $f14, 0x004C($t6)
	lwc1    $f12, 0x0054($t6)
	jal     ATAN2
	neg.s   $f14, $f14
	lw      $t7, 0x0028($sp)
	lw      $t8, 0x0088($t7)
	sh      $v0, 0x001A($t8)
	b       157$
	move    $v0, $0
	b       157$
	nop
157$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_jump_8026D1B0:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sw      $a2, 0x0030($sp)
	sw      $a3, 0x0034($sp)
	sw      $s0, 0x0018($sp)
	lw      $a0, 0x0028($sp)
	jal     player_80251708
	lw      $a1, 0x0038($sp)
	lw      $a0, 0x0028($sp)
	jal     physics_80256B24
	move    $a1, $0
	sw      $v0, 0x0024($sp)
	lw      $s0, 0x0024($sp)
	beqz    $s0, 28$
	nop
	li      $at, 0x0001
	beq     $s0, $at, 33$
	nop
	li      $at, 0x0002
	beq     $s0, $at, 62$
	nop
	li      $at, 0x0006
	beq     $s0, $at, 86$
	nop
	b       90$
	nop
28$:
	lw      $a0, 0x0028($sp)
	jal     pl_set_anime
	lw      $a1, 0x0034($sp)
	b       90$
	nop
33$:
	lw      $a0, 0x0028($sp)
	jal     pl_jump_8026A598
	lw      $a1, 0x0030($sp)
	bnez    $v0, 60$
	nop
	lw      $t6, 0x0028($sp)
	li.u    $at, 0x010208BD
	li.l    $at, 0x010208BD
	lw      $t7, 0x000C($t6)
	beq     $t7, $at, 48$
	nop
	li.u    $at, 0x010208BE
	li.l    $at, 0x010208BE
	bne     $t7, $at, 55$
	nop
48$:
	lw      $t8, 0x0028($sp)
	lw      $a1, 0x002C($sp)
	move    $a0, $t8
	jal     pl_set_state
	lbu     $a2, 0x00B2($t8)
	b       60$
	nop
55$:
	lw      $t9, 0x0028($sp)
	lw      $a1, 0x002C($sp)
	move    $a0, $t9
	jal     pl_set_state
	lw      $a2, 0x001C($t9)
60$:
	b       90$
	nop
62$:
	lw      $a0, 0x0028($sp)
	jal     pl_set_anime
	li      $a1, 0x0002
	lw      $a0, 0x0028($sp)
	jal     physics_802552FC
	move    $a1, $0
	lw      $t0, 0x0028($sp)
	mtc1    $0, $f6
	lwc1    $f4, 0x004C($t0)
	c.lt.s  $f6, $f4
	nop
	bc1f    78$
	nop
	mtc1    $0, $f8
	lw      $t1, 0x0028($sp)
	swc1    $f8, 0x004C($t1)
78$:
	lwc1    $f10, 0x0038($sp)
	lw      $a0, 0x0028($sp)
	neg.s   $f16, $f10
	mfc1    $a1, $f16
	jal     player_80251708
	nop
	b       90$
	nop
86$:
	jal     pl_jump_8026A12C
	lw      $a0, 0x0028($sp)
	b       90$
	nop
90$:
	b       94$
	lw      $v0, 0x0024($sp)
	b       94$
	nop
94$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_jump_8026D33C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	lhu     $t7, 0x0002($t6)
	andi    $t8, $t7, 0x0002
	beqz    $t8, 27$
	nop
	lbu     $t9, 0x002A($t6)
	beqz    $t9, 27$
	nop
	lw      $t0, 0x0010($t6)
	li      $at, 0x08A7
	bne     $t0, $at, 27$
	nop
	lw      $t1, 0x0018($sp)
	li      $at, 0x8000
	lh      $t2, 0x002E($t1)
	addu    $t3, $t2, $at
	sh      $t3, 0x002E($t1)
	li.u    $a1, 0x03000886
	li.l    $a1, 0x03000886
	lw      $a0, 0x0018($sp)
	jal     pl_set_state
	move    $a2, $0
	b       31$
	nop
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

pl_jump_8026D3C8:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0020($sp)
	jal     pl_jump_8026D33C
	lw      $a0, 0x0020($sp)
	beqz    $v0, 9$
	nop
	b       25$
	li      $v0, 0x0001
9$:
	jal     pl_jump_8026A090
	lw      $a0, 0x0020($sp)
	li      $at, 0xC1800000
	mtc1    $at, $f4
	li.u    $a1, 0x00020462
	li.u    $a2, 0x00020460
	li.l    $a2, 0x00020460
	li.l    $a1, 0x00020462
	lw      $a0, 0x0020($sp)
	li      $a3, 0x0002
	jal     pl_jump_8026D1B0
	swc1    $f4, 0x0010($sp)
	b       25$
	move    $v0, $0
	b       25$
	nop
25$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

pl_jump_8026D43C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0020($sp)
	jal     pl_jump_8026D33C
	lw      $a0, 0x0020($sp)
	beqz    $v0, 9$
	nop
	b       25$
	li      $v0, 0x0001
9$:
	jal     pl_jump_8026A090
	lw      $a0, 0x0020($sp)
	li      $at, 0x41800000
	mtc1    $at, $f4
	li.u    $a1, 0x00020463
	li.u    $a2, 0x00020461
	li.l    $a2, 0x00020461
	li.l    $a1, 0x00020463
	lw      $a0, 0x0020($sp)
	li      $a3, 0x002D
	jal     pl_jump_8026D1B0
	swc1    $f4, 0x0010($sp)
	b       25$
	move    $v0, $0
	b       25$
	nop
25$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

pl_jump_8026D4B0:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0020($sp)
	jal     pl_jump_8026A090
	lw      $a0, 0x0020($sp)
	li      $at, 0xC1800000
	mtc1    $at, $f4
	li.u    $a1, 0x00020460
	li.l    $a1, 0x00020460
	addu    $a2, $a1, $0
	lw      $a0, 0x0020($sp)
	li      $a3, 0x0002
	jal     pl_jump_8026D1B0
	swc1    $f4, 0x0010($sp)
	b       18$
	move    $v0, $0
	b       18$
	nop
18$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

pl_jump_8026D508:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0020($sp)
	jal     pl_jump_8026A090
	lw      $a0, 0x0020($sp)
	li      $at, 0x41800000
	mtc1    $at, $f4
	li.u    $a1, 0x00020461
	li.l    $a1, 0x00020461
	addu    $a2, $a1, $0
	lw      $a0, 0x0020($sp)
	li      $a3, 0x002D
	jal     pl_jump_8026D1B0
	swc1    $f4, 0x0010($sp)
	b       18$
	move    $v0, $0
	b       18$
	nop
18$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

pl_jump_8026D560:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	lw      $t6, 0x0028($sp)
	lw      $t7, 0x001C($t6)
	beqz    $t7, 11$
	nop
	li.u    $t8, 0x00020460
	li.l    $t8, 0x00020460
	b       14$
	sw      $t8, 0x0024($sp)
11$:
	li.u    $t9, 0x00020462
	li.l    $t9, 0x00020462
	sw      $t9, 0x0024($sp)
14$:
	li.u    $a1, 0x2410C081
	li.l    $a1, 0x2410C081
	lw      $a0, 0x0028($sp)
	jal     player_80251120
	li      $a2, 0x00020000
	lw      $t0, 0x0028($sp)
	li.u    $a2, 0x00020460
	li.l    $a2, 0x00020460
	lwc1    $f4, 0x0054($t0)
	lw      $a1, 0x0024($sp)
	li      $a3, 0x0002
	move    $a0, $t0
	jal     pl_jump_8026D1B0
	swc1    $f4, 0x0010($sp)
	lw      $t1, 0x0028($sp)
	lui     $at, %hi(pl_jump_80336C3C)
	lwc1    $f8, %lo(pl_jump_80336C3C)($at)
	lwc1    $f6, 0x0054($t1)
	mul.s   $f10, $f6, $f8
	swc1    $f10, 0x0054($t1)
	b       38$
	move    $v0, $0
	b       38$
	nop
38$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_jump_8026D608:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	lw      $t6, 0x0028($sp)
	lw      $t7, 0x001C($t6)
	beqz    $t7, 11$
	nop
	li.u    $t8, 0x00020461
	li.l    $t8, 0x00020461
	b       14$
	sw      $t8, 0x0020($sp)
11$:
	li.u    $t9, 0x00020463
	li.l    $t9, 0x00020463
	sw      $t9, 0x0020($sp)
14$:
	li.u    $a1, 0x2410C081
	li.l    $a1, 0x2410C081
	lw      $a0, 0x0028($sp)
	jal     player_80251120
	li      $a2, 0x00020000
	lw      $t0, 0x0028($sp)
	li.u    $a2, 0x00020461
	li.l    $a2, 0x00020461
	lwc1    $f4, 0x0054($t0)
	lw      $a1, 0x0020($sp)
	li      $a3, 0x002D
	move    $a0, $t0
	jal     pl_jump_8026D1B0
	swc1    $f4, 0x0010($sp)
	bnez    $v0, 47$
	nop
	lw      $t1, 0x0028($sp)
	lwc1    $f14, 0x004C($t1)
	lwc1    $f12, 0x0054($t1)
	jal     ATAN2
	neg.s   $f14, $f14
	sh      $v0, 0x0026($sp)
	lh      $t2, 0x0026($sp)
	slti    $at, $t2, 0x1801
	bnez    $at, 42$
	nop
	li      $t3, 0x1800
	sh      $t3, 0x0026($sp)
42$:
	lw      $t6, 0x0028($sp)
	lh      $t4, 0x0026($sp)
	lw      $t7, 0x0088($t6)
	addiu   $t5, $t4, 0x1800
	sh      $t5, 0x001A($t7)
47$:
	lw      $t8, 0x0028($sp)
	lui     $at, %hi(pl_jump_80336C40)
	lwc1    $f8, %lo(pl_jump_80336C40)($at)
	lwc1    $f6, 0x0054($t8)
	mul.s   $f10, $f6, $f8
	swc1    $f10, 0x0054($t8)
	b       57$
	move    $v0, $0
	b       57$
	nop
57$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_jump_8026D6FC:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0020($sp)
	jal     pl_jump_8026D33C
	lw      $a0, 0x0020($sp)
	beqz    $v0, 9$
	nop
	b       25$
	li      $v0, 0x0001
9$:
	jal     pl_jump_8026A090
	lw      $a0, 0x0020($sp)
	lw      $t6, 0x0020($sp)
	li.u    $a1, 0x04000471
	li.u    $a2, 0x00020460
	lwc1    $f4, 0x0054($t6)
	li.l    $a2, 0x00020460
	li.l    $a1, 0x04000471
	li      $a3, 0x0056
	move    $a0, $t6
	jal     pl_jump_8026D1B0
	swc1    $f4, 0x0010($sp)
	b       25$
	move    $v0, $0
	b       25$
	nop
25$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

pl_jump_8026D770:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	lhu     $t7, 0x0018($t6)
	bnez    $t7, 28$
	nop
	lw      $t8, 0x0028($sp)
	li      $at, 0xC2700000
	mtc1    $at, $f6
	lwc1    $f4, 0x0054($t8)
	c.lt.s  $f6, $f4
	nop
	bc1f    23$
	nop
	lw      $t9, 0x0028($sp)
	li      $at, 0x40C00000
	mtc1    $at, $f10
	lwc1    $f8, 0x0054($t9)
	sub.s   $f16, $f8, $f10
	b       26$
	swc1    $f16, 0x0054($t9)
23$:
	lw      $t1, 0x0028($sp)
	li      $t0, 0x0001
	sh      $t0, 0x0018($t1)
26$:
	b       62$
	nop
28$:
	lw      $t2, 0x0028($sp)
	li      $at, 0xC1800000
	mtc1    $at, $f4
	lwc1    $f18, 0x0054($t2)
	c.lt.s  $f18, $f4
	nop
	bc1f    42$
	nop
	lw      $t3, 0x0028($sp)
	lui     $at, %hi(pl_jump_80336C44)
	lwc1    $f8, %lo(pl_jump_80336C44)($at)
	lwc1    $f6, 0x0054($t3)
	add.s   $f10, $f6, $f8
	swc1    $f10, 0x0054($t3)
42$:
	lw      $t4, 0x0028($sp)
	mtc1    $0, $f18
	lwc1    $f16, 0x004C($t4)
	c.lt.s  $f16, $f18
	nop
	bc1f    62$
	nop
	li      $at, 0x40800000
	mtc1    $at, $f6
	lwc1    $f4, 0x00C4($t4)
	c.lt.s  $f4, $f6
	nop
	bc1f    62$
	nop
	lw      $t5, 0x0028($sp)
	lui     $at, %hi(pl_jump_80336C48)
	lwc1    $f10, %lo(pl_jump_80336C48)($at)
	lwc1    $f8, 0x00C4($t5)
	add.s   $f16, $f8, $f10
	swc1    $f16, 0x00C4($t5)
62$:
	lw      $t6, 0x0028($sp)
	li      $at, 0x0014
	lhu     $t7, 0x001A($t6)
	addiu   $t8, $t7, 0x0001
	sh      $t8, 0x001A($t6)
	lw      $t9, 0x0028($sp)
	lhu     $t0, 0x001A($t9)
	bne     $t0, $at, 74$
	nop
	lw      $a0, 0x0028($sp)
	jal     collision_8024C928
	li      $a1, 0x42480000
74$:
	lw      $t1, 0x0028($sp)
	move    $a0, $t1
	jal     player_80251708
	lw      $a1, 0x0054($t1)
	lw      $a0, 0x0028($sp)
	jal     pl_set_anime
	li      $a1, 0x0002
	lw      $a0, 0x0028($sp)
	jal     physics_80256B24
	move    $a1, $0
	move    $s0, $v0
	li      $at, 0x0001
	beq     $s0, $at, 93$
	nop
	li      $at, 0x0002
	beq     $s0, $at, 100$
	nop
	b       125$
	nop
93$:
	li.u    $a1, 0x010208B3
	li.l    $a1, 0x010208B3
	lw      $a0, 0x0028($sp)
	jal     pl_set_state
	move    $a2, $0
	b       125$
	nop
100$:
	lw      $a0, 0x0028($sp)
	jal     pl_set_anime
	li      $a1, 0x002D
	lw      $a0, 0x0028($sp)
	jal     physics_802552FC
	move    $a1, $0
	lw      $t2, 0x0028($sp)
	mtc1    $0, $f4
	lwc1    $f18, 0x004C($t2)
	c.lt.s  $f4, $f18
	nop
	bc1f    116$
	nop
	mtc1    $0, $f6
	lw      $t3, 0x0028($sp)
	swc1    $f6, 0x004C($t3)
116$:
	lw      $t4, 0x0028($sp)
	lwc1    $f8, 0x0054($t4)
	move    $a0, $t4
	neg.s   $f10, $f8
	mfc1    $a1, $f10
	jal     player_80251708
	nop
	b       125$
	nop
125$:
	b       129$
	move    $v0, $0
	b       129$
	nop
129$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_jump_8026D988:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	lw      $t7, 0x007C($t6)
	beqz    $t7, 9$
	nop
	jal     collision_8024C6C0
	lw      $a0, 0x0018($sp)
9$:
	lw      $t8, 0x0018($sp)
	lhu     $t9, 0x001A($t8)
	addiu   $t0, $t9, 0x0001
	sh      $t0, 0x001A($t8)
	lw      $t1, 0x0018($sp)
	lhu     $t2, 0x001A($t1)
	slti    $at, $t2, 0x0003
	beqz    $at, 41$
	nop
	lw      $t3, 0x0018($sp)
	lhu     $t4, 0x0002($t3)
	andi    $t5, $t4, 0x0002
	beqz    $t5, 39$
	nop
	li      $at, 0x42500000
	mtc1    $at, $f4
	lw      $t6, 0x0018($sp)
	swc1    $f4, 0x004C($t6)
	lw      $t7, 0x0018($sp)
	li      $at, 0x8000
	lh      $t9, 0x002E($t7)
	addu    $t0, $t9, $at
	sh      $t0, 0x002E($t7)
	li.u    $a1, 0x03000886
	li.l    $a1, 0x03000886
	lw      $a0, 0x0018($sp)
	jal     pl_set_state
	move    $a2, $0
	b       111$
	nop
39$:
	b       106$
	nop
41$:
	lw      $t8, 0x0018($sp)
	li      $at, 0x42180000
	mtc1    $at, $f8
	lwc1    $f6, 0x0054($t8)
	c.le.s  $f8, $f6
	nop
	bc1f    75$
	nop
	lw      $t2, 0x0018($sp)
	li      $t1, 0x0005
	sb      $t1, 0x002A($t2)
	lw      $t3, 0x0018($sp)
	mtc1    $0, $f16
	lwc1    $f10, 0x004C($t3)
	c.lt.s  $f16, $f10
	nop
	bc1f    62$
	nop
	mtc1    $0, $f18
	lw      $t4, 0x0018($sp)
	swc1    $f18, 0x004C($t4)
62$:
	lw      $t5, 0x0018($sp)
	lw      $t6, 0x0008($t5)
	ori     $t9, $t6, 0x0002
	sw      $t9, 0x0008($t5)
	li.u    $a1, 0x010208B0
	li.l    $a1, 0x010208B0
	lw      $a0, 0x0018($sp)
	jal     pl_set_state
	move    $a2, $0
	b       111$
	nop
	b       106$
	nop
75$:
	lw      $t7, 0x0018($sp)
	li      $t0, 0x0005
	sb      $t0, 0x002A($t7)
	lw      $t8, 0x0018($sp)
	mtc1    $0, $f6
	lwc1    $f4, 0x004C($t8)
	c.lt.s  $f6, $f4
	nop
	bc1f    88$
	nop
	mtc1    $0, $f8
	lw      $t1, 0x0018($sp)
	swc1    $f8, 0x004C($t1)
88$:
	lw      $t2, 0x0018($sp)
	li      $at, 0x41000000
	mtc1    $at, $f16
	lwc1    $f10, 0x0054($t2)
	c.lt.s  $f16, $f10
	nop
	bc1f    99$
	nop
	lw      $a0, 0x0018($sp)
	jal     player_80251708
	li      $a1, 0xC1000000
99$:
	li.u    $a1, 0x010208B6
	li.l    $a1, 0x010208B6
	lw      $a0, 0x0018($sp)
	jal     pl_set_state
	move    $a2, $0
	b       111$
	nop
106$:
	lw      $a0, 0x0018($sp)
	jal     pl_set_anime
	li      $a1, 0x00CC
	b       111$
	nop
111$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_jump_8026DB54:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	lhu     $t7, 0x0018($t6)
	bnez    $t7, 15$
	nop
	li      $at, 0x41F00000
	mtc1    $at, $f4
	lw      $t8, 0x0028($sp)
	swc1    $f4, 0x004C($t8)
	lw      $t0, 0x0028($sp)
	li      $t9, 0x0001
	sh      $t9, 0x0018($t0)
15$:
	li.u    $a1, 0x04008081
	li.l    $a1, 0x04008081
	lw      $a0, 0x0028($sp)
	jal     player_8025163C
	move    $a2, $0
	jal     pl_jump_8026AA48
	lw      $a0, 0x0028($sp)
	lw      $a0, 0x0028($sp)
	jal     physics_80256B24
	move    $a1, $0
	move    $s0, $v0
	beqz    $s0, 39$
	nop
	li      $at, 0x0001
	beq     $s0, $at, 63$
	nop
	li      $at, 0x0002
	beq     $s0, $at, 74$
	nop
	li      $at, 0x0006
	beq     $s0, $at, 79$
	nop
	b       83$
	nop
39$:
	lw      $t1, 0x0028($sp)
	li      $at, 0x0001
	lhu     $t2, 0x0018($t1)
	bne     $t2, $at, 58$
	nop
	lw      $a0, 0x0028($sp)
	jal     pl_set_anime
	li      $a1, 0x006F
	li      $at, 0x0004
	bne     $v0, $at, 56$
	nop
	lw      $t3, 0x0028($sp)
	li.u    $a0, 0x04378081
	li.l    $a0, 0x04378081
	lw      $a1, 0x0088($t3)
	jal     Na_SePlay
	addiu   $a1, $a1, 0x0054
56$:
	b       61$
	nop
58$:
	lw      $a0, 0x0028($sp)
	jal     pl_set_anime
	li      $a1, 0x0056
61$:
	b       83$
	nop
63$:
	li.u    $a1, 0x0C000232
	li.l    $a1, 0x0C000232
	lw      $a0, 0x0028($sp)
	jal     pl_set_state
	move    $a2, $0
	li.u    $a1, 0x04088081
	li.l    $a1, 0x04088081
	jal     player_802514AC
	lw      $a0, 0x0028($sp)
	b       83$
	nop
74$:
	lw      $a0, 0x0028($sp)
	jal     player_80251708
	li      $a1, 0x0000
	b       83$
	nop
79$:
	jal     pl_jump_8026A12C
	lw      $a0, 0x0028($sp)
	b       83$
	nop
83$:
	lw      $t4, 0x0028($sp)
	li      $at, 0x0001
	lhu     $t5, 0x0018($t4)
	bne     $t5, $at, 95$
	nop
	jal     player_8025097C
	move    $a0, $t4
	beqz    $v0, 95$
	nop
	lw      $t7, 0x0028($sp)
	li      $t6, 0x0002
	sh      $t6, 0x0018($t7)
95$:
	b       99$
	move    $v0, $0
	b       99$
	nop
99$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_jump_8026DCF4:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	lhu     $t7, 0x0018($t6)
	bnez    $t7, 15$
	nop
	li      $at, 0x41F00000
	mtc1    $at, $f4
	lw      $t8, 0x0028($sp)
	swc1    $f4, 0x004C($t8)
	lw      $t0, 0x0028($sp)
	li      $t9, 0x0001
	sh      $t9, 0x0018($t0)
15$:
	li.u    $a1, 0x04008081
	li.l    $a1, 0x04008081
	lw      $a0, 0x0028($sp)
	jal     player_8025163C
	move    $a2, $0
	jal     pl_jump_8026AA48
	lw      $a0, 0x0028($sp)
	lw      $a0, 0x0028($sp)
	jal     physics_80256B24
	move    $a1, $0
	move    $s0, $v0
	beqz    $s0, 39$
	nop
	li      $at, 0x0001
	beq     $s0, $at, 63$
	nop
	li      $at, 0x0002
	beq     $s0, $at, 74$
	nop
	li      $at, 0x0006
	beq     $s0, $at, 79$
	nop
	b       83$
	nop
39$:
	lw      $t1, 0x0028($sp)
	li      $at, 0x0001
	lhu     $t2, 0x0018($t1)
	bne     $t2, $at, 58$
	nop
	lw      $a0, 0x0028($sp)
	jal     pl_set_anime
	li      $a1, 0x0070
	li      $at, 0x0004
	bne     $v0, $at, 56$
	nop
	lw      $t3, 0x0028($sp)
	li.u    $a0, 0x04378081
	li.l    $a0, 0x04378081
	lw      $a1, 0x0088($t3)
	jal     Na_SePlay
	addiu   $a1, $a1, 0x0054
56$:
	b       61$
	nop
58$:
	lw      $a0, 0x0028($sp)
	jal     pl_set_anime
	li      $a1, 0x0056
61$:
	b       83$
	nop
63$:
	li.u    $a1, 0x0C000232
	li.l    $a1, 0x0C000232
	lw      $a0, 0x0028($sp)
	jal     pl_set_state
	move    $a2, $0
	li.u    $a1, 0x04088081
	li.l    $a1, 0x04088081
	jal     player_802514AC
	lw      $a0, 0x0028($sp)
	b       83$
	nop
74$:
	lw      $a0, 0x0028($sp)
	jal     player_80251708
	li      $a1, 0x0000
	b       83$
	nop
79$:
	jal     pl_jump_8026A12C
	lw      $a0, 0x0028($sp)
	b       83$
	nop
83$:
	lw      $t4, 0x0028($sp)
	li      $at, 0x0001
	lhu     $t5, 0x0018($t4)
	bne     $t5, $at, 96$
	nop
	lw      $t6, 0x0088($t4)
	li      $at, 0x0002
	lh      $t7, 0x0040($t6)
	bne     $t7, $at, 96$
	nop
	lw      $t9, 0x0028($sp)
	li      $t8, 0x0002
	sh      $t8, 0x0018($t9)
96$:
	b       100$
	move    $v0, $0
	b       100$
	nop
100$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_jump_8026DE98:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	lhu     $t7, 0x001A($t6)
	addiu   $t8, $t7, 0x0001
	sh      $t8, 0x001A($t6)
	lw      $t9, 0x0028($sp)
	lhu     $t0, 0x001A($t9)
	slti    $at, $t0, 0x001F
	bnez    $at, 29$
	nop
	lwc1    $f4, 0x0040($t9)
	lwc1    $f6, 0x0070($t9)
	li      $at, 0x43FA0000
	mtc1    $at, $f10
	sub.s   $f8, $f4, $f6
	c.lt.s  $f10, $f8
	nop
	bc1f    29$
	nop
	li.u    $a1, 0x0100088C
	li.l    $a1, 0x0100088C
	lw      $a0, 0x0028($sp)
	jal     pl_set_state
	li      $a2, 0x0001
	b       119$
	nop
29$:
	jal     pl_jump_8026A818
	lw      $a0, 0x0028($sp)
	lw      $a0, 0x0028($sp)
	jal     physics_80256B24
	move    $a1, $0
	move    $s0, $v0
	li      $at, 0x0001
	beq     $s0, $at, 46$
	nop
	li      $at, 0x0002
	beq     $s0, $at, 87$
	nop
	li      $at, 0x0006
	beq     $s0, $at, 108$
	nop
	b       112$
	nop
46$:
	lw      $t1, 0x0028($sp)
	lhu     $t2, 0x0018($t1)
	bnez    $t2, 76$
	nop
	lwc1    $f16, 0x004C($t1)
	mtc1    $0, $f18
	nop
	c.lt.s  $f16, $f18
	nop
	bc1f    76$
	nop
	lw      $t3, 0x0068($t1)
	lui     $at, %hi(pl_jump_80336C4C)
	lwc1    $f6, %lo(pl_jump_80336C4C)($at)
	lwc1    $f4, 0x0020($t3)
	c.le.s  $f6, $f4
	nop
	bc1f    76$
	nop
	lw      $t4, 0x0028($sp)
	li      $at, 0x40000000
	mtc1    $at, $f16
	lwc1    $f8, 0x004C($t4)
	neg.s   $f10, $f8
	div.s   $f18, $f10, $f16
	swc1    $f18, 0x004C($t4)
	lw      $t7, 0x0028($sp)
	li      $t5, 0x0001
	b       81$
	sh      $t5, 0x0018($t7)
76$:
	li.u    $a1, 0x00840452
	li.l    $a1, 0x00840452
	lw      $a0, 0x0028($sp)
	jal     pl_set_state
	move    $a2, $0
81$:
	li.u    $a1, 0x04088081
	li.l    $a1, 0x04088081
	jal     player_802514AC
	lw      $a0, 0x0028($sp)
	b       112$
	nop
87$:
	lw      $t8, 0x0028($sp)
	mtc1    $0, $f6
	lwc1    $f4, 0x004C($t8)
	c.lt.s  $f6, $f4
	nop
	bc1f    97$
	nop
	mtc1    $0, $f8
	lw      $t6, 0x0028($sp)
	swc1    $f8, 0x004C($t6)
97$:
	lw      $t0, 0x0028($sp)
	lw      $t9, 0x0008($t0)
	ori     $t2, $t9, 0x0002
	sw      $t2, 0x0008($t0)
	li.u    $a1, 0x010208B0
	li.l    $a1, 0x010208B0
	lw      $a0, 0x0028($sp)
	jal     pl_set_state
	move    $a2, $0
	b       112$
	nop
108$:
	jal     pl_jump_8026A12C
	lw      $a0, 0x0028($sp)
	b       112$
	nop
112$:
	lw      $a0, 0x0028($sp)
	jal     pl_set_anime
	li      $a1, 0x0091
	b       119$
	move    $v0, $0
	b       119$
	nop
119$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_jump_8026E088:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	lw      $t7, 0x0088($t6)
	lw      $t8, 0x0134($t7)
	andi    $t9, $t8, 0x0008
	beqz    $t9, 17$
	nop
	li.u    $a1, 0x010008A1
	li.l    $a1, 0x010008A1
	lw      $a0, 0x0028($sp)
	jal     player_80253178
	li      $a2, 0x0001
	b       134$
	nop
17$:
	lw      $t0, 0x0028($sp)
	lhu     $t1, 0x001A($t0)
	addiu   $t2, $t1, 0x0001
	sh      $t2, 0x001A($t0)
	lw      $t3, 0x0028($sp)
	lhu     $t4, 0x001A($t3)
	slti    $at, $t4, 0x001F
	bnez    $at, 42$
	nop
	lwc1    $f4, 0x0040($t3)
	lwc1    $f6, 0x0070($t3)
	li      $at, 0x43FA0000
	mtc1    $at, $f10
	sub.s   $f8, $f4, $f6
	c.lt.s  $f10, $f8
	nop
	bc1f    42$
	nop
	li.u    $a1, 0x010008A1
	li.l    $a1, 0x010008A1
	lw      $a0, 0x0028($sp)
	jal     pl_set_state
	li      $a2, 0x0001
	b       134$
	nop
42$:
	jal     pl_jump_8026A818
	lw      $a0, 0x0028($sp)
	lw      $a0, 0x0028($sp)
	jal     physics_80256B24
	move    $a1, $0
	move    $s0, $v0
	li      $at, 0x0001
	beq     $s0, $at, 59$
	nop
	li      $at, 0x0002
	beq     $s0, $at, 100$
	nop
	li      $at, 0x0006
	beq     $s0, $at, 123$
	nop
	b       127$
	nop
59$:
	lw      $t5, 0x0028($sp)
	lhu     $t6, 0x0018($t5)
	bnez    $t6, 89$
	nop
	lwc1    $f16, 0x004C($t5)
	mtc1    $0, $f18
	nop
	c.lt.s  $f16, $f18
	nop
	bc1f    89$
	nop
	lw      $t7, 0x0068($t5)
	lui     $at, %hi(pl_jump_80336C50)
	lwc1    $f6, %lo(pl_jump_80336C50)($at)
	lwc1    $f4, 0x0020($t7)
	c.le.s  $f6, $f4
	nop
	bc1f    89$
	nop
	lw      $t8, 0x0028($sp)
	li      $at, 0x40000000
	mtc1    $at, $f16
	lwc1    $f8, 0x004C($t8)
	neg.s   $f10, $f8
	div.s   $f18, $f10, $f16
	swc1    $f18, 0x004C($t8)
	lw      $t1, 0x0028($sp)
	li      $t9, 0x0001
	b       94$
	sh      $t9, 0x0018($t1)
89$:
	li.u    $a1, 0x00840454
	li.l    $a1, 0x00840454
	lw      $a0, 0x0028($sp)
	jal     pl_set_state
	move    $a2, $0
94$:
	li.u    $a1, 0x04088081
	li.l    $a1, 0x04088081
	jal     player_802514AC
	lw      $a0, 0x0028($sp)
	b       127$
	nop
100$:
	lw      $t2, 0x0028($sp)
	mtc1    $0, $f6
	lwc1    $f4, 0x004C($t2)
	c.lt.s  $f6, $f4
	nop
	bc1f    110$
	nop
	mtc1    $0, $f8
	lw      $t0, 0x0028($sp)
	swc1    $f8, 0x004C($t0)
110$:
	jal     collision_8024C6C0
	lw      $a0, 0x0028($sp)
	lw      $t4, 0x0028($sp)
	lw      $t3, 0x0008($t4)
	ori     $t6, $t3, 0x0002
	sw      $t6, 0x0008($t4)
	li.u    $a1, 0x010208B0
	li.l    $a1, 0x010208B0
	lw      $a0, 0x0028($sp)
	jal     pl_set_state
	move    $a2, $0
	b       127$
	nop
123$:
	jal     pl_jump_8026A12C
	lw      $a0, 0x0028($sp)
	b       127$
	nop
127$:
	lw      $a0, 0x0028($sp)
	jal     pl_set_anime
	li      $a1, 0x0045
	b       134$
	move    $v0, $0
	b       134$
	nop
134$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_jump_8026E2B4:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	li.u    $a1, 0x2414A081
	li.l    $a1, 0x2414A081
	lw      $a0, 0x0028($sp)
	jal     player_80251120
	li      $a2, 0x00020000
	lw      $t6, 0x0028($sp)
	lhu     $t7, 0x0002($t6)
	andi    $t8, $t7, 0x0001
	bnez    $t8, 23$
	nop
	lw      $t9, 0x0028($sp)
	li.u    $a2, 0x3EB33333
	li.l    $a2, 0x3EB33333
	mtc1    $0, $f14
	addu    $a3, $a2, $0
	jal     convergef
	lwc1    $f12, 0x0054($t9)
	lw      $t0, 0x0028($sp)
	swc1    $f0, 0x0054($t0)
23$:
	jal     pl_jump_8026ACD8
	lw      $a0, 0x0028($sp)
	lw      $a0, 0x0028($sp)
	jal     physics_80256B24
	move    $a1, $0
	move    $s0, $v0
	li      $at, 0x0001
	beq     $s0, $at, 40$
	nop
	li      $at, 0x0002
	beq     $s0, $at, 121$
	nop
	li      $at, 0x0006
	beq     $s0, $at, 126$
	nop
	b       130$
	nop
40$:
	lw      $t1, 0x0028($sp)
	li      $at, 0x0001
	lw      $t2, 0x0068($t1)
	lh      $t3, 0x0000($t2)
	bne     $t3, $at, 77$
	nop
	lw      $t4, 0x0028($sp)
	sh      $0, 0x0018($t4)
	lw      $t5, 0x0028($sp)
	lw      $t6, 0x0004($t5)
	andi    $t7, $t6, 0x0004
	bnez    $t7, 65$
	nop
	lw      $t8, 0x0028($sp)
	lw      $t9, 0x0004($t8)
	andi    $t0, $t9, 0x0010
	beqz    $t0, 60$
	nop
	b       61$
	li      $s0, 0x000C
60$:
	li      $s0, 0x0012
61$:
	lw      $t1, 0x0028($sp)
	lbu     $t2, 0x00B2($t1)
	addu    $t3, $t2, $s0
	sb      $t3, 0x00B2($t1)
65$:
	li      $at, 0x42A80000
	mtc1    $at, $f4
	lw      $t4, 0x0028($sp)
	swc1    $f4, 0x004C($t4)
	lw      $t5, 0x0028($sp)
	li.u    $a0, 0x2414A081
	li.l    $a0, 0x2414A081
	lw      $a1, 0x0088($t5)
	jal     Na_SePlay
	addiu   $a1, $a1, 0x0054
	b       119$
	nop
77$:
	li.u    $a1, 0x04188081
	li.l    $a1, 0x04188081
	jal     player_80251574
	lw      $a0, 0x0028($sp)
	lw      $t6, 0x0028($sp)
	lhu     $t7, 0x0018($t6)
	slti    $at, $t7, 0x0002
	beqz    $at, 114$
	nop
	lwc1    $f6, 0x004C($t6)
	mtc1    $0, $f8
	nop
	c.lt.s  $f6, $f8
	nop
	bc1f    114$
	nop
	lw      $t8, 0x0028($sp)
	lui     $at, %hi(pl_jump_80336C54)
	lwc1    $f18, %lo(pl_jump_80336C54)($at)
	lwc1    $f10, 0x004C($t8)
	neg.s   $f16, $f10
	mul.s   $f4, $f16, $f18
	swc1    $f4, 0x004C($t8)
	lw      $t9, 0x0028($sp)
	li      $at, 0x3F000000
	mtc1    $at, $f8
	lwc1    $f6, 0x0054($t9)
	move    $a0, $t9
	mul.s   $f10, $f6, $f8
	mfc1    $a1, $f10
	jal     player_80251708
	nop
	lw      $t0, 0x0028($sp)
	lhu     $t2, 0x0018($t0)
	addiu   $t3, $t2, 0x0001
	b       119$
	sh      $t3, 0x0018($t0)
114$:
	li.u    $a1, 0x08000239
	li.l    $a1, 0x08000239
	lw      $a0, 0x0028($sp)
	jal     pl_set_state
	move    $a2, $0
119$:
	b       130$
	nop
121$:
	lw      $a0, 0x0028($sp)
	jal     physics_802552FC
	move    $a1, $0
	b       130$
	nop
126$:
	jal     pl_jump_8026A12C
	lw      $a0, 0x0028($sp)
	b       130$
	nop
130$:
	lw      $a0, 0x0028($sp)
	jal     pl_set_anime
	li      $a1, 0x0029
	lw      $t1, 0x0028($sp)
	li      $at, 0x0002
	lw      $t4, 0x0090($t1)
	lhu     $t5, 0x0002($t4)
	andi    $t7, $t5, 0x0007
	beq     $t7, $at, 165$
	nop
	lw      $t6, 0x0004($t1)
	andi    $t8, $t6, 0x0004
	bnez    $t8, 165$
	nop
	lwc1    $f16, 0x004C($t1)
	mtc1    $0, $f18
	nop
	c.lt.s  $f18, $f16
	nop
	bc1f    165$
	nop
	lw      $t9, 0x0028($sp)
	lw      $t2, 0x0008($t9)
	ori     $t3, $t2, 0x0800
	sw      $t3, 0x0008($t9)
	lw      $t0, 0x0028($sp)
	lhu     $t4, 0x0018($t0)
	bnez    $t4, 165$
	nop
	lw      $t5, 0x0028($sp)
	li.u    $a0, 0x14100001
	li.l    $a0, 0x14100001
	lw      $a1, 0x0088($t5)
	jal     Na_SePlay
	addiu   $a1, $a1, 0x0054
165$:
	lw      $t7, 0x0028($sp)
	lh      $t6, 0x00AE($t7)
	slti    $at, $t6, 0x0100
	beqz    $at, 173$
	nop
	lw      $a0, 0x0028($sp)
	jal     pl_fade
	li      $a1, 0x0012
173$:
	lw      $t1, 0x0028($sp)
	li      $t8, 0x0008
	lw      $t2, 0x0098($t1)
	sb      $t8, 0x0005($t2)
	b       181$
	move    $v0, $0
	b       181$
	nop
181$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_jump_8026E59C:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	lhu     $t7, 0x0018($t6)
	bnez    $t7, 20$
	nop
	lhu     $t8, 0x001A($t6)
	bnez    $t8, 20$
	nop
	li.u    $a1, 0x04008081
	li.u    $a2, 0x24038081
	li.l    $a2, 0x24038081
	li.l    $a1, 0x04008081
	jal     player_8025163C
	lw      $a0, 0x0028($sp)
	lw      $a0, 0x0028($sp)
	jal     pl_set_anime
	li      $a1, 0x008C
20$:
	lw      $t9, 0x0028($sp)
	lhu     $t0, 0x001A($t9)
	addiu   $t1, $t0, 0x0001
	sh      $t1, 0x001A($t9)
	lw      $t2, 0x0028($sp)
	lhu     $t3, 0x001A($t2)
	slti    $at, $t3, 0x001F
	bnez    $at, 45$
	nop
	lwc1    $f4, 0x0040($t2)
	lwc1    $f6, 0x0070($t2)
	li      $at, 0x43FA0000
	mtc1    $at, $f10
	sub.s   $f8, $f4, $f6
	c.lt.s  $f10, $f8
	nop
	bc1f    45$
	nop
	li.u    $a1, 0x0100088C
	li.l    $a1, 0x0100088C
	lw      $a0, 0x0028($sp)
	jal     pl_set_state
	li      $a2, 0x0002
	b       152$
	nop
45$:
	jal     pl_jump_8026AA48
	lw      $a0, 0x0028($sp)
	lw      $a0, 0x0028($sp)
	jal     physics_80256B24
	move    $a1, $0
	move    $s0, $v0
	beqz    $s0, 64$
	nop
	li      $at, 0x0001
	beq     $s0, $at, 88$
	nop
	li      $at, 0x0002
	beq     $s0, $at, 123$
	nop
	li      $at, 0x0006
	beq     $s0, $at, 144$
	nop
	b       148$
	nop
64$:
	lw      $t4, 0x0028($sp)
	lhu     $t5, 0x0018($t4)
	bnez    $t5, 86$
	nop
	lw      $t7, 0x0028($sp)
	lwc1    $f14, 0x004C($t7)
	lwc1    $f12, 0x0054($t7)
	jal     ATAN2
	neg.s   $f14, $f14
	lw      $t6, 0x0028($sp)
	lw      $t8, 0x0088($t6)
	sh      $v0, 0x001A($t8)
	lw      $t0, 0x0028($sp)
	lw      $t1, 0x0088($t0)
	lh      $t9, 0x001A($t1)
	slti    $at, $t9, 0x1801
	bnez    $at, 86$
	nop
	lw      $t2, 0x0028($sp)
	li      $t3, 0x1800
	lw      $t4, 0x0088($t2)
	sh      $t3, 0x001A($t4)
86$:
	b       148$
	nop
88$:
	lw      $t5, 0x0028($sp)
	lhu     $t7, 0x0018($t5)
	bnez    $t7, 112$
	nop
	lwc1    $f16, 0x004C($t5)
	mtc1    $0, $f18
	nop
	c.lt.s  $f16, $f18
	nop
	bc1f    112$
	nop
	lw      $t6, 0x0028($sp)
	li      $at, 0x40000000
	mtc1    $at, $f8
	lwc1    $f4, 0x004C($t6)
	neg.s   $f6, $f4
	div.s   $f10, $f6, $f8
	swc1    $f10, 0x004C($t6)
	lw      $t0, 0x0028($sp)
	li      $t8, 0x0001
	sh      $t8, 0x0018($t0)
	lw      $t1, 0x0028($sp)
	b       117$
	sh      $0, 0x001A($t1)
112$:
	li.u    $a1, 0x0080045A
	li.l    $a1, 0x0080045A
	lw      $a0, 0x0028($sp)
	jal     pl_set_state
	move    $a2, $0
117$:
	li.u    $a1, 0x04088081
	li.l    $a1, 0x04088081
	jal     player_802514AC
	lw      $a0, 0x0028($sp)
	b       148$
	nop
123$:
	lw      $t9, 0x0028($sp)
	mtc1    $0, $f18
	lwc1    $f16, 0x004C($t9)
	c.lt.s  $f18, $f16
	nop
	bc1f    133$
	nop
	mtc1    $0, $f4
	lw      $t2, 0x0028($sp)
	swc1    $f4, 0x004C($t2)
133$:
	lw      $t3, 0x0028($sp)
	lw      $t4, 0x0008($t3)
	ori     $t7, $t4, 0x0002
	sw      $t7, 0x0008($t3)
	li.u    $a1, 0x010208B0
	li.l    $a1, 0x010208B0
	lw      $a0, 0x0028($sp)
	jal     pl_set_state
	move    $a2, $0
	b       148$
	nop
144$:
	jal     pl_jump_8026A12C
	lw      $a0, 0x0028($sp)
	b       148$
	nop
148$:
	b       152$
	move    $v0, $0
	b       152$
	nop
152$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_jump_8026E810:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	lhu     $t7, 0x0018($t6)
	bnez    $t7, 23$
	nop
	li.u    $a1, 0x241F8081
	li.l    $a1, 0x241F8081
	lw      $a0, 0x0028($sp)
	jal     player_80251120
	li      $a2, 0x00010000
	lw      $t9, 0x0028($sp)
	li      $t8, -0x0001
	lw      $t0, 0x0088($t9)
	sh      $t8, 0x0038($t0)
	lw      $a0, 0x0028($sp)
	jal     pl_set_anime
	li      $a1, 0x004F
	lw      $t2, 0x0028($sp)
	li      $t1, 0x0001
	sh      $t1, 0x0018($t2)
23$:
	lw      $t3, 0x0028($sp)
	lw      $t4, 0x0088($t3)
	lh      $t5, 0x0040($t4)
	sw      $t5, 0x0024($sp)
	lw      $t6, 0x0024($sp)
	bnez    $t6, 34$
	nop
	lw      $t9, 0x0028($sp)
	li      $t7, 0x0086
	lw      $t8, 0x0098($t9)
	sb      $t7, 0x000B($t8)
34$:
	lw      $t0, 0x0024($sp)
	bltz    $t0, 45$
	nop
	slti    $at, $t0, 0x0008
	beqz    $at, 45$
	nop
	lw      $t1, 0x0028($sp)
	li      $at, 0x00200000
	lw      $t2, 0x0004($t1)
	or      $t3, $t2, $at
	sw      $t3, 0x0004($t1)
45$:
	jal     pl_jump_8026AA48
	lw      $a0, 0x0028($sp)
	lw      $a0, 0x0028($sp)
	jal     physics_80256B24
	move    $a1, $0
	move    $s0, $v0
	li      $at, 0x0001
	beq     $s0, $at, 59$
	nop
	li      $at, 0x0002
	beq     $s0, $at, 72$
	nop
	b       77$
	nop
59$:
	li.u    $a1, 0x00020460
	li.l    $a1, 0x00020460
	jal     pl_jump_8026A598
	lw      $a0, 0x0028($sp)
	bnez    $v0, 70$
	nop
	li.u    $a1, 0x04000471
	li.l    $a1, 0x04000471
	lw      $a0, 0x0028($sp)
	jal     pl_set_state
	move    $a2, $0
70$:
	b       77$
	nop
72$:
	lw      $a0, 0x0028($sp)
	jal     player_80251708
	li      $a1, 0x0000
	b       77$
	nop
77$:
	b       81$
	move    $v0, $0
	b       81$
	nop
81$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_jump_8026E968:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	li      $at, 0x0003
	lw      $t7, 0x0090($t6)
	lw      $t8, 0x0024($t7)
	lbu     $t9, 0x0000($t8)
	beq     $t9, $at, 15$
	nop
	lw      $t1, 0x0028($sp)
	li      $t0, 0x0002
	lw      $t2, 0x0094($t1)
	sh      $t0, 0x001E($t2)
15$:
	lw      $t3, 0x0028($sp)
	move    $a0, $t3
	jal     player_80251708
	lw      $a1, 0x0054($t3)
	li.u    $a1, 0x24048081
	li.l    $a1, 0x24048081
	lw      $a0, 0x0028($sp)
	jal     player_80251120
	li      $a2, 0x00020000
	lw      $a0, 0x0028($sp)
	jal     physics_80256B24
	move    $a1, $0
	move    $s0, $v0
	beqz    $s0, 41$
	nop
	li      $at, 0x0001
	beq     $s0, $at, 57$
	nop
	li      $at, 0x0002
	beq     $s0, $at, 73$
	nop
	li      $at, 0x0006
	beq     $s0, $at, 106$
	nop
	b       110$
	nop
41$:
	lw      $a0, 0x0028($sp)
	jal     pl_set_anime
	li      $a1, 0x0015
	lw      $t4, 0x0028($sp)
	lwc1    $f12, 0x0054($t4)
	jal     ATAN2
	lwc1    $f14, 0x004C($t4)
	lw      $t5, 0x0028($sp)
	sh      $v0, 0x002C($t5)
	lw      $t6, 0x0028($sp)
	lh      $t7, 0x002C($t6)
	lw      $t9, 0x0088($t6)
	subu    $t8, $0, $t7
	sh      $t8, 0x001A($t9)
	b       110$
	nop
57$:
	li.u    $a1, 0x00880456
	li.l    $a1, 0x00880456
	lw      $a0, 0x0028($sp)
	jal     pl_set_state
	move    $a2, $0
	lw      $t1, 0x0028($sp)
	sh      $0, 0x002C($t1)
	lw      $t0, 0x0028($sp)
	li      $a2, 0x0001
	lw      $t2, 0x0090($t0)
	lw      $t3, 0x0024($t2)
	move    $a0, $t3
	jal     camera_80286188
	lbu     $a1, 0x0001($t3)
	b       110$
	nop
73$:
	lw      $a0, 0x0028($sp)
	jal     player_80251708
	li      $a1, 0xC1800000
	lw      $t4, 0x0028($sp)
	sh      $0, 0x002C($t4)
	lw      $t5, 0x0028($sp)
	mtc1    $0, $f6
	lwc1    $f4, 0x004C($t5)
	c.lt.s  $f6, $f4
	nop
	bc1f    88$
	nop
	mtc1    $0, $f8
	lw      $t7, 0x0028($sp)
	swc1    $f8, 0x004C($t7)
88$:
	lw      $t6, 0x0028($sp)
	lw      $t8, 0x0008($t6)
	ori     $t9, $t8, 0x0002
	sw      $t9, 0x0008($t6)
	li.u    $a1, 0x010208B0
	li.l    $a1, 0x010208B0
	lw      $a0, 0x0028($sp)
	jal     pl_set_state
	move    $a2, $0
	lw      $t1, 0x0028($sp)
	li      $a2, 0x0001
	lw      $t0, 0x0090($t1)
	lw      $t2, 0x0024($t0)
	move    $a0, $t2
	jal     camera_80286188
	lbu     $a1, 0x0001($t2)
	b       110$
	nop
106$:
	jal     pl_jump_8026A12C
	lw      $a0, 0x0028($sp)
	b       110$
	nop
110$:
	lw      $t3, 0x0028($sp)
	lw      $t4, 0x0004($t3)
	andi    $t5, $t4, 0x0008
	beqz    $t5, 127$
	nop
	lwc1    $f10, 0x004C($t3)
	mtc1    $0, $f16
	nop
	c.lt.s  $f10, $f16
	nop
	bc1f    127$
	nop
	li.u    $a1, 0x10880899
	li.l    $a1, 0x10880899
	lw      $a0, 0x0028($sp)
	jal     pl_set_state
	move    $a2, $0
127$:
	lw      $t7, 0x0028($sp)
	lui     $at, %hi(pl_jump_80336C58)
	ldc1    $f6, %lo(pl_jump_80336C58)($at)
	lwc1    $f18, 0x0054($t7)
	li      $at, 0x41200000
	cvt.d.s $f4, $f18
	mtc1    $at, $f18
	sub.d   $f8, $f4, $f6
	cvt.s.d $f10, $f8
	swc1    $f10, 0x0054($t7)
	lw      $t8, 0x0028($sp)
	lwc1    $f16, 0x0054($t8)
	c.lt.s  $f16, $f18
	nop
	bc1f    146$
	nop
	lw      $a0, 0x0028($sp)
	jal     player_80251708
	li      $a1, 0x41200000
146$:
	lw      $t9, 0x0028($sp)
	mtc1    $0, $f6
	lwc1    $f4, 0x004C($t9)
	c.lt.s  $f6, $f4
	nop
	bc1f    157$
	nop
	lw      $t6, 0x0028($sp)
	lw      $t1, 0x0008($t6)
	ori     $t0, $t1, 0x0001
	sw      $t0, 0x0008($t6)
157$:
	b       161$
	move    $v0, $0
	b       161$
	nop
161$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_jump_8026EC00:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	lh      $t7, 0x002C($t6)
	sh      $t7, 0x0026($sp)
	lw      $t8, 0x0028($sp)
	lhu     $t9, 0x0002($t8)
	andi    $t0, $t9, 0x8000
	beqz    $t0, 33$
	nop
	lw      $t1, 0x0028($sp)
	li      $at, 0x0003
	lw      $t2, 0x0090($t1)
	lw      $t3, 0x0024($t2)
	lbu     $t4, 0x0000($t3)
	bne     $t4, $at, 26$
	nop
	lw      $t5, 0x0028($sp)
	li      $a2, 0x0001
	lw      $t6, 0x0090($t5)
	lw      $t7, 0x0024($t6)
	move    $a0, $t7
	jal     camera_80286188
	lbu     $a1, 0x0001($t7)
26$:
	li.u    $a1, 0x008008A9
	li.l    $a1, 0x008008A9
	lw      $a0, 0x0028($sp)
	jal     pl_set_state
	li      $a2, 0x0001
	b       337$
	nop
33$:
	lw      $t8, 0x0028($sp)
	lw      $t9, 0x0004($t8)
	andi    $t0, $t9, 0x0008
	bnez    $t0, 59$
	nop
	lw      $t1, 0x0028($sp)
	li      $at, 0x0003
	lw      $t2, 0x0090($t1)
	lw      $t3, 0x0024($t2)
	lbu     $t4, 0x0000($t3)
	bne     $t4, $at, 52$
	nop
	lw      $t5, 0x0028($sp)
	li      $a2, 0x0001
	lw      $t6, 0x0090($t5)
	lw      $t7, 0x0024($t6)
	move    $a0, $t7
	jal     camera_80286188
	lbu     $a1, 0x0001($t7)
52$:
	li.u    $a1, 0x0100088C
	li.l    $a1, 0x0100088C
	lw      $a0, 0x0028($sp)
	jal     pl_set_state
	move    $a2, $0
	b       337$
	nop
59$:
	lw      $t8, 0x0028($sp)
	li      $at, 0x0003
	lw      $t9, 0x0090($t8)
	lw      $t0, 0x0024($t9)
	lbu     $t1, 0x0000($t0)
	beq     $t1, $at, 72$
	nop
	lw      $t2, 0x0028($sp)
	li      $a1, 0x0003
	li      $a2, 0x0001
	lw      $t3, 0x0090($t2)
	jal     camera_80286188
	lw      $a0, 0x0024($t3)
72$:
	lw      $t4, 0x0028($sp)
	lhu     $t5, 0x0018($t4)
	bnez    $t5, 120$
	nop
	lw      $t6, 0x0028($sp)
	lw      $t7, 0x001C($t6)
	bnez    $t7, 85$
	nop
	lw      $a0, 0x0028($sp)
	jal     pl_set_anime
	li      $a1, 0x005B
	b       100$
	nop
85$:
	lw      $a0, 0x0028($sp)
	jal     pl_set_anime
	li      $a1, 0x00CF
	lw      $t8, 0x0028($sp)
	li      $at, 0x0001
	lw      $t9, 0x0088($t8)
	lh      $t0, 0x0040($t9)
	bne     $t0, $at, 100$
	nop
	lw      $t1, 0x0028($sp)
	li.u    $a0, 0x04378081
	li.l    $a0, 0x04378081
	lw      $a1, 0x0088($t1)
	jal     Na_SePlay
	addiu   $a1, $a1, 0x0054
100$:
	jal     player_80250940
	lw      $a0, 0x0028($sp)
	beqz    $v0, 120$
	nop
	lw      $t2, 0x0028($sp)
	li      $at, 0x0002
	lw      $t3, 0x001C($t2)
	bne     $t3, $at, 114$
	nop
	jal     game_init_msg
	move    $a0, $0
	lw      $t5, 0x0028($sp)
	li      $t4, 0x0001
	sw      $t4, 0x001C($t5)
114$:
	lw      $a0, 0x0028($sp)
	jal     pl_set_anime
	li      $a1, 0x002A
	lw      $t7, 0x0028($sp)
	li      $t6, 0x0001
	sh      $t6, 0x0018($t7)
120$:
	jal     pl_jump_8026B17C
	lw      $a0, 0x0028($sp)
	lw      $a0, 0x0028($sp)
	jal     physics_80256B24
	move    $a1, $0
	move    $s0, $v0
	beqz    $s0, 139$
	nop
	li      $at, 0x0001
	beq     $s0, $at, 152$
	nop
	li      $at, 0x0002
	beq     $s0, $at, 174$
	nop
	li      $at, 0x0006
	beq     $s0, $at, 270$
	nop
	b       274$
	nop
139$:
	lw      $t8, 0x0028($sp)
	lh      $t9, 0x002C($t8)
	lw      $t1, 0x0088($t8)
	subu    $t0, $0, $t9
	sh      $t0, 0x001A($t1)
	lw      $t2, 0x0028($sp)
	lh      $t3, 0x0030($t2)
	lw      $t4, 0x0088($t2)
	sh      $t3, 0x001E($t4)
	lw      $t5, 0x0028($sp)
	sh      $0, 0x001A($t5)
	b       274$
	nop
152$:
	li.u    $a1, 0x00880456
	li.l    $a1, 0x00880456
	lw      $a0, 0x0028($sp)
	jal     pl_set_state
	move    $a2, $0
	lw      $a0, 0x0028($sp)
	jal     pl_set_anime
	li      $a1, 0x0088
	lw      $a0, 0x0028($sp)
	jal     player_80250C7C
	li      $a1, 0x0007
	lw      $t6, 0x0028($sp)
	sh      $0, 0x002C($t6)
	lw      $t7, 0x0028($sp)
	li      $a2, 0x0001
	lw      $t9, 0x0090($t7)
	lw      $t8, 0x0024($t9)
	move    $a0, $t8
	jal     camera_80286188
	lbu     $a1, 0x0001($t8)
	b       274$
	nop
174$:
	lw      $t0, 0x0028($sp)
	lw      $t1, 0x0060($t0)
	beqz    $t1, 226$
	nop
	lw      $a0, 0x0028($sp)
	jal     player_80251708
	li      $a1, 0xC1800000
	lw      $t2, 0x0028($sp)
	sh      $0, 0x002C($t2)
	lw      $t3, 0x0028($sp)
	mtc1    $0, $f6
	lwc1    $f4, 0x004C($t3)
	c.lt.s  $f6, $f4
	nop
	bc1f    193$
	nop
	mtc1    $0, $f8
	lw      $t4, 0x0028($sp)
	swc1    $f8, 0x004C($t4)
193$:
	lw      $t5, 0x0028($sp)
	lw      $t6, 0x0004($t5)
	andi    $t7, $t6, 0x0004
	beqz    $t7, 201$
	nop
	li.u    $s0, 0x04428081
	b       203$
	li.l    $s0, 0x04428081
201$:
	li.u    $s0, 0x0445A081
	li.l    $s0, 0x0445A081
203$:
	lw      $t9, 0x0028($sp)
	move    $a0, $s0
	lw      $a1, 0x0088($t9)
	jal     Na_SePlay
	addiu   $a1, $a1, 0x0054
	lw      $t8, 0x0028($sp)
	lw      $t0, 0x0008($t8)
	ori     $t1, $t0, 0x0002
	sw      $t1, 0x0008($t8)
	li.u    $a1, 0x010208B0
	li.l    $a1, 0x010208B0
	lw      $a0, 0x0028($sp)
	jal     pl_set_state
	move    $a2, $0
	lw      $t2, 0x0028($sp)
	li      $a2, 0x0001
	lw      $t3, 0x0090($t2)
	lw      $t4, 0x0024($t3)
	move    $a0, $t4
	jal     camera_80286188
	lbu     $a1, 0x0001($t4)
	b       268$
	nop
226$:
	lw      $t5, 0x0028($sp)
	lhu     $s0, 0x001A($t5)
	lhu     $t7, 0x001A($t5)
	sltiu   $t6, $s0, 0x0001
	move    $s0, $t6
	addiu   $t9, $t7, 0x0001
	beqz    $s0, 240$
	sh      $t9, 0x001A($t5)
	lw      $t0, 0x0028($sp)
	li.u    $a0, 0x0444C081
	li.l    $a0, 0x0444C081
	lw      $a1, 0x0088($t0)
	jal     Na_SePlay
	addiu   $a1, $a1, 0x0054
240$:
	lw      $t1, 0x0028($sp)
	li      $at, 0x001E
	lhu     $t8, 0x001A($t1)
	bne     $t8, $at, 247$
	nop
	lw      $t2, 0x0028($sp)
	sh      $0, 0x001A($t2)
247$:
	lw      $t3, 0x0028($sp)
	lh      $t4, 0x002C($t3)
	addiu   $t6, $t4, -0x0200
	sh      $t6, 0x002C($t3)
	lw      $t7, 0x0028($sp)
	lh      $t9, 0x002C($t7)
	slti    $at, $t9, -0x2AAA
	beqz    $at, 259$
	nop
	lw      $t0, 0x0028($sp)
	li      $t5, -0x2AAA
	sh      $t5, 0x002C($t0)
259$:
	lw      $t1, 0x0028($sp)
	lh      $t8, 0x002C($t1)
	lw      $t4, 0x0088($t1)
	subu    $t2, $0, $t8
	sh      $t2, 0x001A($t4)
	lw      $t6, 0x0028($sp)
	lh      $t3, 0x0030($t6)
	lw      $t7, 0x0088($t6)
	sh      $t3, 0x001E($t7)
268$:
	b       274$
	nop
270$:
	jal     pl_jump_8026A12C
	lw      $a0, 0x0028($sp)
	b       274$
	nop
274$:
	lw      $t9, 0x0028($sp)
	lh      $t5, 0x002C($t9)
	slti    $at, $t5, 0x0801
	bnez    $at, 290$
	nop
	li      $at, 0x42400000
	mtc1    $at, $f16
	lwc1    $f10, 0x0054($t9)
	c.le.s  $f16, $f10
	nop
	bc1f    290$
	nop
	lw      $t0, 0x0028($sp)
	lw      $t8, 0x0008($t0)
	ori     $t1, $t8, 0x0001
	sw      $t1, 0x0008($t0)
290$:
	lh      $t2, 0x0026($sp)
	bgtz    $t2, 325$
	nop
	lw      $t4, 0x0028($sp)
	lh      $t6, 0x002C($t4)
	blez    $t6, 325$
	nop
	li      $at, 0x42400000
	mtc1    $at, $f4
	lwc1    $f18, 0x0054($t4)
	c.le.s  $f4, $f18
	nop
	bc1f    325$
	nop
	lw      $t3, 0x0028($sp)
	li.u    $a0, 0x04568081
	li.l    $a0, 0x04568081
	lw      $a1, 0x0088($t3)
	jal     Na_SePlay
	addiu   $a1, $a1, 0x0054
	lui     $a0, %hi(_Na_work_bss+0x5F18)
	lw      $a0, %lo(_Na_work_bss+0x5F18)($a0)
	li      $at, 0x0005
	lw      $t9, 0x0028($sp)
	divu    $0, $a0, $at
	mfhi    $t7
	move    $a0, $t7
	lw      $a1, 0x0088($t9)
	sll     $t5, $a0, 16
	li.u    $at, 0x242B8081
	li.l    $at, 0x242B8081
	move    $a0, $t5
	addu    $a0, $a0, $at
	jal     Na_SePlay
	addiu   $a1, $a1, 0x0054
325$:
	lw      $t8, 0x0028($sp)
	li.u    $a0, 0x14170001
	li.l    $a0, 0x14170001
	lw      $a1, 0x0088($t8)
	jal     Na_SePlay
	addiu   $a1, $a1, 0x0054
	jal     player_80251274
	lw      $a0, 0x0028($sp)
	b       337$
	move    $v0, $0
	b       337$
	nop
337$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_jump_8026F158:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	lhu     $t7, 0x0002($t6)
	andi    $t8, $t7, 0x0080
	beqz    $t8, 13$
	nop
	lw      $t9, 0x0088($t6)
	lw      $t0, 0x0134($t9)
	andi    $t1, $t0, 0x0080
	beqz    $t1, 33$
	nop
13$:
	lw      $t2, 0x0018($sp)
	lw      $t3, 0x0080($t2)
	sw      $0, 0x0134($t3)
	lw      $t5, 0x0018($sp)
	lui     $t4, %hi(gfx_frame)
	lw      $t4, %lo(gfx_frame)($t4)
	lw      $t7, 0x0080($t5)
	sw      $t4, 0x0110($t7)
	li.u    $a1, 0x24058081
	li.l    $a1, 0x24058081
	lw      $a0, 0x0018($sp)
	jal     player_80251120
	li      $a2, 0x00020000
	li.u    $a1, 0x0100088C
	li.l    $a1, 0x0100088C
	lw      $a0, 0x0018($sp)
	jal     pl_set_state
	move    $a2, $0
	b       97$
	nop
33$:
	lw      $t8, 0x0018($sp)
	lw      $t6, 0x0080($t8)
	lwc1    $f4, 0x00A0($t6)
	swc1    $f4, 0x003C($t8)
	lw      $t9, 0x0018($sp)
	li      $at, 0x42B90000
	mtc1    $at, $f8
	lw      $t0, 0x0080($t9)
	lwc1    $f6, 0x00A4($t0)
	sub.s   $f10, $f6, $f8
	swc1    $f10, 0x0040($t9)
	lw      $t1, 0x0018($sp)
	lw      $t2, 0x0080($t1)
	lwc1    $f16, 0x00A8($t2)
	swc1    $f16, 0x0044($t1)
	lw      $t3, 0x0018($sp)
	li      $t7, 0x4000
	lw      $t5, 0x0080($t3)
	lw      $t4, 0x00C8($t5)
	subu    $t6, $t7, $t4
	sh      $t6, 0x002E($t3)
	lw      $t8, 0x0018($sp)
	lhu     $t0, 0x0018($t8)
	bnez    $t0, 71$
	nop
	lw      $a0, 0x0018($sp)
	jal     pl_set_anime
	li      $a1, 0x0035
	jal     player_80250940
	lw      $a0, 0x0018($sp)
	beqz    $v0, 71$
	nop
	lw      $a0, 0x0018($sp)
	jal     pl_set_anime
	li      $a1, 0x002B
	lw      $t2, 0x0018($sp)
	li      $t9, 0x0001
	sh      $t9, 0x0018($t2)
71$:
	lw      $a0, 0x0018($sp)
	li      $a1, 0x0000
	li      $a2, 0x0000
	li      $a3, 0x0000
	jal     vecf_set
	addiu   $a0, $a0, 0x0048
	lw      $t1, 0x0018($sp)
	lw      $a0, 0x0088($t1)
	lw      $a1, 0x003C($t1)
	lw      $a2, 0x0040($t1)
	lw      $a3, 0x0044($t1)
	jal     vecf_set
	addiu   $a0, $a0, 0x0020
	lw      $t5, 0x0018($sp)
	li      $t4, 0x4000
	move    $a1, $0
	lw      $a0, 0x0088($t5)
	lh      $t7, 0x002E($t5)
	move    $a3, $0
	addiu   $a0, $a0, 0x001A
	jal     vecs_set
	subu    $a2, $t4, $t7
	b       97$
	move    $v0, $0
	b       97$
	nop
97$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_jump_8026F2EC:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	lhu     $t7, 0x0002($t6)
	andi    $t8, $t7, 0xA000
	beqz    $t8, 44$
	nop
	lw      $t9, 0x0028($sp)
	li      $at, 0x0003
	lw      $t0, 0x0090($t9)
	lw      $t1, 0x0024($t0)
	lbu     $t2, 0x0000($t1)
	bne     $t2, $at, 23$
	nop
	lw      $t3, 0x0028($sp)
	li      $a2, 0x0001
	lw      $t4, 0x0090($t3)
	lw      $t5, 0x0024($t4)
	move    $a0, $t5
	jal     camera_80286188
	lbu     $a1, 0x0001($t5)
23$:
	lw      $t6, 0x0028($sp)
	lhu     $t7, 0x0002($t6)
	andi    $t8, $t7, 0x2000
	beqz    $t8, 37$
	nop
	li.u    $a1, 0x0188088A
	li.l    $a1, 0x0188088A
	lw      $a0, 0x0028($sp)
	jal     pl_set_state
	move    $a2, $0
	b       197$
	nop
	b       44$
	nop
37$:
	li.u    $a1, 0x008008A9
	li.l    $a1, 0x008008A9
	lw      $a0, 0x0028($sp)
	jal     pl_set_state
	move    $a2, $0
	b       197$
	nop
44$:
	li.u    $a1, 0x04008081
	li.u    $a2, 0x24048081
	li.l    $a2, 0x24048081
	li.l    $a1, 0x04008081
	jal     player_8025163C
	lw      $a0, 0x0028($sp)
	lw      $t9, 0x0028($sp)
	lhu     $t0, 0x0018($t9)
	bnez    $t0, 79$
	nop
	lw      $a0, 0x0028($sp)
	jal     pl_set_anime
	li      $a1, 0x00D0
	lw      $t1, 0x0028($sp)
	li      $at, 0x0007
	lw      $t2, 0x0088($t1)
	lh      $t3, 0x0040($t2)
	bne     $t3, $at, 69$
	nop
	lw      $t4, 0x0028($sp)
	li.u    $a0, 0x04378081
	li.l    $a0, 0x04378081
	lw      $a1, 0x0088($t4)
	jal     Na_SePlay
	addiu   $a1, $a1, 0x0054
69$:
	jal     player_8025097C
	lw      $a0, 0x0028($sp)
	beqz    $v0, 79$
	nop
	lw      $a0, 0x0028($sp)
	jal     pl_set_anime
	li      $a1, 0x006F
	lw      $t6, 0x0028($sp)
	li      $t5, 0x0001
	sh      $t5, 0x0018($t6)
79$:
	lw      $t7, 0x0028($sp)
	li      $at, 0x0001
	lhu     $t8, 0x0018($t7)
	bne     $t8, $at, 95$
	nop
	lw      $t9, 0x0088($t7)
	li      $at, 0x0001
	lh      $t0, 0x0040($t9)
	bne     $t0, $at, 95$
	nop
	lw      $t1, 0x0028($sp)
	li.u    $a0, 0x04378081
	li.l    $a0, 0x04378081
	lw      $a1, 0x0088($t1)
	jal     Na_SePlay
	addiu   $a1, $a1, 0x0054
95$:
	lw      $t2, 0x0028($sp)
	li      $at, 0x40800000
	mtc1    $at, $f6
	lwc1    $f4, 0x004C($t2)
	c.lt.s  $f4, $f6
	nop
	bc1f    132$
	nop
	lw      $t3, 0x0028($sp)
	li      $at, 0x0003
	lw      $t4, 0x0090($t3)
	lw      $t5, 0x0024($t4)
	lbu     $t6, 0x0000($t5)
	beq     $t6, $at, 116$
	nop
	lw      $t8, 0x0028($sp)
	li      $a1, 0x0003
	li      $a2, 0x0001
	lw      $t7, 0x0090($t8)
	jal     camera_80286188
	lw      $a0, 0x0024($t7)
116$:
	lw      $t9, 0x0028($sp)
	li      $at, 0x42000000
	mtc1    $at, $f10
	lwc1    $f8, 0x0054($t9)
	c.lt.s  $f8, $f10
	nop
	bc1f    127$
	nop
	lw      $a0, 0x0028($sp)
	jal     player_80251708
	li      $a1, 0x42000000
127$:
	li.u    $a1, 0x10880899
	li.l    $a1, 0x10880899
	lw      $a0, 0x0028($sp)
	jal     pl_set_state
	li      $a2, 0x0001
132$:
	lw      $t0, 0x0028($sp)
	lhu     $s0, 0x001A($t0)
	lhu     $t2, 0x001A($t0)
	xori    $t1, $s0, 0x000A
	sltiu   $t1, $t1, 0x0001
	move    $s0, $t1
	addiu   $t3, $t2, 0x0001
	beqz    $s0, 154$
	sh      $t3, 0x001A($t0)
	lw      $t4, 0x0028($sp)
	li      $at, 0x0003
	lw      $t5, 0x0090($t4)
	lw      $t6, 0x0024($t5)
	lbu     $t8, 0x0000($t6)
	beq     $t8, $at, 154$
	nop
	lw      $t7, 0x0028($sp)
	li      $a1, 0x0003
	li      $a2, 0x0001
	lw      $t9, 0x0090($t7)
	jal     camera_80286188
	lw      $a0, 0x0024($t9)
154$:
	jal     pl_jump_8026AA48
	lw      $a0, 0x0028($sp)
	lw      $a0, 0x0028($sp)
	jal     physics_80256B24
	move    $a1, $0
	move    $s0, $v0
	li      $at, 0x0001
	beq     $s0, $at, 171$
	nop
	li      $at, 0x0002
	beq     $s0, $at, 184$
	nop
	li      $at, 0x0006
	beq     $s0, $at, 189$
	nop
	b       193$
	nop
171$:
	li.u    $a1, 0x00020460
	li.l    $a1, 0x00020460
	jal     pl_jump_8026A598
	lw      $a0, 0x0028($sp)
	bnez    $v0, 182$
	nop
	li.u    $a1, 0x04000472
	li.l    $a1, 0x04000472
	lw      $a0, 0x0028($sp)
	jal     pl_set_state
	move    $a2, $0
182$:
	b       193$
	nop
184$:
	lw      $a0, 0x0028($sp)
	jal     physics_802552FC
	move    $a1, $0
	b       193$
	nop
189$:
	jal     pl_jump_8026A12C
	lw      $a0, 0x0028($sp)
	b       193$
	nop
193$:
	b       197$
	move    $v0, $0
	b       197$
	nop
197$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_jump_8026F614:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	jal     player_8025118C
	lw      $a0, 0x0018($sp)
	li.u    $a1, 0x04000471
	li.l    $a1, 0x04000471
	lw      $a0, 0x0018($sp)
	li      $a2, 0x000A
	jal     pl_jump_8026B444
	li      $a3, 0x0001
	b       15$
	move    $v0, $0
	b       15$
	nop
15$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_jump_8026F660:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0030($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0030($sp)
	lh      $t7, 0x0024($t6)
	lh      $t8, 0x002E($t6)
	subu    $t9, $t7, $t8
	sh      $t9, 0x002E($sp)
	lw      $t0, 0x0030($sp)
	li      $at, 0x42000000
	mtc1    $at, $f6
	lwc1    $f4, 0x0020($t0)
	div.s   $f8, $f4, $f6
	swc1    $f8, 0x0028($sp)
	li.u    $a1, 0x240C8081
	li.l    $a1, 0x240C8081
	lw      $a0, 0x0030($sp)
	jal     player_80251120
	li      $a2, 0x00020000
	lw      $t1, 0x0030($sp)
	lhu     $t2, 0x0018($t1)
	bnez    $t2, 48$
	nop
	lw      $a0, 0x0030($sp)
	jal     pl_set_anime
	li      $a1, 0x00CF
	lw      $t3, 0x0030($sp)
	li      $at, 0x0001
	lw      $t4, 0x0088($t3)
	lh      $t5, 0x0040($t4)
	bne     $t5, $at, 39$
	nop
	lw      $t6, 0x0030($sp)
	li.u    $a0, 0x04378081
	li.l    $a0, 0x04378081
	lw      $a1, 0x0088($t6)
	jal     Na_SePlay
	addiu   $a1, $a1, 0x0054
39$:
	jal     player_8025097C
	lw      $a0, 0x0030($sp)
	beqz    $v0, 46$
	nop
	lw      $t8, 0x0030($sp)
	li      $t7, 0x0001
	sh      $t7, 0x0018($t8)
46$:
	b       51$
	nop
48$:
	lw      $a0, 0x0030($sp)
	jal     pl_set_anime
	li      $a1, 0x0015
51$:
	jal     pl_jump_8026AA48
	lw      $a0, 0x0030($sp)
	lw      $a0, 0x0030($sp)
	jal     physics_80256B24
	move    $a1, $0
	move    $s0, $v0
	li      $at, 0x0001
	beq     $s0, $at, 65$
	nop
	li      $at, 0x0002
	beq     $s0, $at, 72$
	nop
	b       77$
	nop
65$:
	li.u    $a1, 0x00880456
	li.l    $a1, 0x00880456
	lw      $a0, 0x0030($sp)
	jal     pl_set_state
	move    $a2, $0
	b       77$
	nop
72$:
	lw      $a0, 0x0030($sp)
	jal     player_80251708
	li      $a1, 0xC1800000
	b       77$
	nop
77$:
	li      $at, 0x45C00000
	mtc1    $at, $f10
	lwc1    $f16, 0x0028($sp)
	lhu     $t9, 0x002E($sp)
	lui     $at, %hi(math_cos)
	mul.s   $f18, $f10, $f16
	sra     $t0, $t9, 4
	sll     $t1, $t0, 2
	addu    $at, $at, $t1
	lwc1    $f4, %lo(math_cos)($at)
	lw      $t4, 0x0030($sp)
	mul.s   $f6, $f4, $f18
	lw      $t5, 0x0088($t4)
	trunc.w.s $f8, $f6
	mfc1    $t3, $f8
	nop
	sh      $t3, 0x001A($t5)
	li      $at, 0xC5800000
	mtc1    $at, $f10
	lwc1    $f16, 0x0028($sp)
	lhu     $t6, 0x002E($sp)
	lui     $at, %hi(math_sin)
	mul.s   $f4, $f10, $f16
	sra     $t7, $t6, 4
	sll     $t8, $t7, 2
	addu    $at, $at, $t8
	lwc1    $f18, %lo(math_sin)($at)
	lw      $t1, 0x0030($sp)
	mul.s   $f6, $f18, $f4
	lw      $t2, 0x0088($t1)
	trunc.w.s $f8, $f6
	mfc1    $t0, $f8
	nop
	sh      $t0, 0x001E($t2)
	b       115$
	move    $v0, $0
	b       115$
	nop
115$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

pl_jump_8026F840:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s1, 0x0018($sp)
	sw      $s0, 0x0014($sp)
	lw      $t6, 0x0028($sp)
	lhu     $t7, 0x0002($t6)
	andi    $t8, $t7, 0x2000
	beqz    $t8, 17$
	nop
	li.u    $a1, 0x0188088A
	li.l    $a1, 0x0188088A
	lw      $a0, 0x0028($sp)
	jal     pl_set_state
	move    $a2, $0
	b       113$
	nop
17$:
	lw      $t9, 0x0028($sp)
	lhu     $t0, 0x0002($t9)
	andi    $t1, $t0, 0x8000
	beqz    $t1, 29$
	nop
	li.u    $a1, 0x008008A9
	li.l    $a1, 0x008008A9
	lw      $a0, 0x0028($sp)
	jal     pl_set_state
	move    $a2, $0
	b       113$
	nop
29$:
	li.u    $a1, 0x04008081
	li.u    $a2, 0x24048081
	li.l    $a2, 0x24048081
	li.l    $a1, 0x04008081
	jal     player_8025163C
	lw      $a0, 0x0028($sp)
	jal     pl_jump_8026AA48
	lw      $a0, 0x0028($sp)
	lw      $a0, 0x0028($sp)
	jal     physics_80256B24
	move    $a1, $0
	move    $s0, $v0
	li      $at, 0x0001
	beq     $s0, $at, 49$
	nop
	li      $at, 0x0002
	beq     $s0, $at, 73$
	nop
	b       78$
	nop
49$:
	lw      $t2, 0x0028($sp)
	lhu     $s1, 0x0018($t2)
	lhu     $t4, 0x0018($t2)
	sltiu   $t3, $s1, 0x0001
	move    $s1, $t3
	addiu   $t5, $t4, 0x0001
	beqz    $s1, 62$
	sh      $t5, 0x0018($t2)
	li      $at, 0x42280000
	mtc1    $at, $f4
	lw      $t6, 0x0028($sp)
	b       67$
	swc1    $f4, 0x004C($t6)
62$:
	li.u    $a1, 0x0C000232
	li.l    $a1, 0x0C000232
	lw      $a0, 0x0028($sp)
	jal     pl_set_state
	move    $a2, $0
67$:
	li.u    $a1, 0x04088081
	li.l    $a1, 0x04088081
	jal     player_802514AC
	lw      $a0, 0x0028($sp)
	b       78$
	nop
73$:
	lw      $a0, 0x0028($sp)
	jal     physics_802552FC
	li      $a1, 0x0001
	b       78$
	nop
78$:
	lw      $t7, 0x0028($sp)
	lhu     $t8, 0x0018($t7)
	beqz    $t8, 89$
	nop
	lwc1    $f6, 0x004C($t7)
	mtc1    $0, $f8
	nop
	c.lt.s  $f8, $f6
	nop
	bc1f    102$
	nop
89$:
	lw      $a0, 0x0028($sp)
	jal     pl_set_anime
	li      $a1, 0x006F
	bnez    $v0, 100$
	nop
	lw      $t9, 0x0028($sp)
	li.u    $a0, 0x04378081
	li.l    $a0, 0x04378081
	lw      $a1, 0x0088($t9)
	jal     Na_SePlay
	addiu   $a1, $a1, 0x0054
100$:
	b       105$
	nop
102$:
	lw      $a0, 0x0028($sp)
	jal     pl_set_anime
	li      $a1, 0x0056
105$:
	lw      $t0, 0x0028($sp)
	lw      $t1, 0x0008($t0)
	ori     $t3, $t1, 0x0008
	sw      $t3, 0x0008($t0)
	b       113$
	move    $v0, $0
	b       113$
	nop
113$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0014($sp)
	lw      $s1, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0028

pl_jump_8026FA18:
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
	b       55$
	nop
18$:
	lw      $t9, 0x0018($sp)
	lhu     $t0, 0x0002($t9)
	andi    $t1, $t0, 0x0040
	beqz    $t1, 30$
	nop
	li.u    $a1, 0x00020339
	li.l    $a1, 0x00020339
	lw      $a0, 0x0018($sp)
	jal     player_80253178
	move    $a2, $0
	b       55$
	nop
30$:
	lw      $t2, 0x0018($sp)
	li      $at, 0x0038
	lw      $t3, 0x0068($t2)
	lh      $t4, 0x0000($t3)
	bne     $t4, $at, 48$
	nop
	lw      $t5, 0x000C($t2)
	li      $at, 0x01000000
	and     $t6, $t5, $at
	beqz    $t6, 48$
	nop
	li.u    $a1, 0x1008089C
	li.l    $a1, 0x1008089C
	lw      $a0, 0x0018($sp)
	jal     player_80253178
	move    $a2, $0
	b       55$
	nop
48$:
	mtc1    $0, $f10
	lw      $t7, 0x0018($sp)
	swc1    $f10, 0x00C0($t7)
	b       55$
	move    $v0, $0
	b       55$
	nop
55$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl pl_jump_exec
pl_jump_exec:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	jal     pl_jump_8026FA18
	lw      $a0, 0x0028($sp)
	beqz    $v0, 10$
	nop
	b       379$
	li      $v0, 0x0001
10$:
	jal     pl_jump_80269FC0
	lw      $a0, 0x0028($sp)
	lw      $t6, 0x0028($sp)
	li.u    $at, 0x018008AB
	li.l    $at, 0x018008AB
	lw      $s0, 0x000C($t6)
	sltu    $at, $s0, $at
	bnez    $at, 80$
	nop
	li.u    $at, 0x030008B0
	li.l    $at, 0x030008B0
	sltu    $at, $s0, $at
	bnez    $at, 42$
	nop
	li.u    $at, 0x1008089C
	li.l    $at, 0x1008089C
	beq     $s0, $at, 370$
	nop
	li.u    $at, 0x108008A4
	li.l    $at, 0x108008A4
	beq     $s0, $at, 190$
	nop
	li.u    $at, 0x10880899
	li.l    $at, 0x10880899
	beq     $s0, $at, 355$
	nop
	li.u    $at, 0x830008AB
	li.l    $at, 0x830008AB
	beq     $s0, $at, 245$
	nop
	b       L802700E0
	nop
42$:
	li.u    $at, 0x0188088B
	li.l    $at, 0x0188088B
	sltu    $at, $s0, $at
	bnez    $at, 70$
	nop
	li.u    $at, 0x0281089B
	li.l    $at, 0x0281089B
	sltu    $at, $s0, $at
	bnez    $at, 64$
	nop
	li.u    $at, 0xFCFFF780
	li.l    $at, 0xFCFFF780
	addu    $t7, $s0, $at
	sltiu   $at, $t7, 0x0030
	beqz    $at, L802700E0
	nop
	sll     $t7, $t7, 2
	lui     $at, %hi(pl_jump_80336C60)
	addu    $at, $at, $t7
	lw      $t7, %lo(pl_jump_80336C60)($at)
	jr      $t7
	nop
64$:
	li.u    $at, 0x0281089A
	li.l    $at, 0x0281089A
	beq     $s0, $at, 235$
	nop
	b       L802700E0
	nop
70$:
	li.u    $at, 0x018008AC
	li.l    $at, 0x018008AC
	beq     $s0, $at, 350$
	nop
	li.u    $at, 0x0188088A
	li.l    $at, 0x0188088A
	beq     $s0, $at, 240$
	nop
	b       L802700E0
	nop
80$:
	li.u    $at, 0x0081089C
	li.l    $at, 0x0081089C
	sltu    $at, $s0, $at
	bnez    $at, 136$
	nop
	li.u    $at, 0x010008AE
	li.l    $at, 0x010008AE
	sltu    $at, $s0, $at
	bnez    $at, 113$
	nop
	li.u    $at, 0x010208BF
	li.l    $at, 0x010208BF
	sltu    $at, $s0, $at
	bnez    $at, 101$
	nop
	li.u    $at, 0x018008AA
	li.l    $at, 0x018008AA
	beq     $s0, $at, 345$
	nop
	b       L802700E0
	nop
101$:
	li.u    $at, 0xFEFDF750
	li.l    $at, 0xFEFDF750
	addu    $t8, $s0, $at
	sltiu   $at, $t8, 0x000F
	beqz    $at, L802700E0
	nop
	sll     $t8, $t8, 2
	lui     $at, %hi(pl_jump_80336D20)
	addu    $at, $at, $t8
	lw      $t8, %lo(pl_jump_80336D20)($at)
	jr      $t8
	nop
113$:
	li.u    $at, 0x00880899
	li.l    $at, 0x00880899
	sltu    $at, $s0, $at
	bnez    $at, 130$
	nop
	li.u    $at, 0xFEFFF77E
	li.l    $at, 0xFEFFF77E
	addu    $t9, $s0, $at
	sltiu   $at, $t9, 0x002C
	beqz    $at, L802700E0
	nop
	sll     $t9, $t9, 2
	lui     $at, %hi(pl_jump_80336D5C)
	addu    $at, $at, $t9
	lw      $t9, %lo(pl_jump_80336D5C)($at)
	jr      $t9
	nop
130$:
	li.u    $at, 0x00880898
	li.l    $at, 0x00880898
	beq     $s0, $at, 285$
	nop
	b       L802700E0
	nop
136$:
	li      $at, 0x04A8
	beq     $s0, $at, 360$
	nop
	li      $at, 0x08A7
	beq     $s0, $at, 275$
	nop
	li      $at, 0x08AE
	beq     $s0, $at, 315$
	nop
	li.u    $at, 0x008008A9
	li.l    $at, 0x008008A9
	beq     $s0, $at, 325$
	nop
	li.u    $at, 0x0081089B
	li.l    $at, 0x0081089B
	beq     $s0, $at, 235$
	nop
	b       L802700E0
	nop
.globl L8026FD70
L8026FD70:
	jal     pl_jump_8026B6A0
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L802700E0
	nop
.globl L8026FD84
L8026FD84:
	jal     pl_jump_8026B740
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L802700E0
	nop
.globl L8026FD98
L8026FD98:
	jal     pl_jump_8026B9AC
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L802700E0
	nop
.globl L8026FDAC
L8026FDAC:
	jal     pl_jump_8026BAB8
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L802700E0
	nop
.globl L8026FDC0
L8026FDC0:
	jal     pl_jump_8026BBB4
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L802700E0
	nop
.globl L8026FDD4
L8026FDD4:
	jal     pl_jump_8026BCC0
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L802700E0
	nop
.globl L8026FDE8
L8026FDE8:
	jal     pl_jump_8026BDCC
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L802700E0
	nop
190$:
	jal     pl_jump_8026C034
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L802700E0
	nop
.globl L8026FE10
L8026FE10:
	jal     pl_jump_8026C5D0
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L802700E0
	nop
.globl L8026FE24
L8026FE24:
	jal     pl_jump_8026C738
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L802700E0
	nop
.globl L8026FE38
L8026FE38:
	jal     pl_jump_8026C880
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L802700E0
	nop
.globl L8026FE4C
L8026FE4C:
	jal     pl_jump_8026CD0C
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L802700E0
	nop
.globl L8026FE60
L8026FE60:
	jal     pl_jump_8026CE50
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L802700E0
	nop
.globl L8026FE74
L8026FE74:
	jal     pl_jump_8026B814
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L802700E0
	nop
.globl L8026FE88
L8026FE88:
	jal     pl_jump_8026B90C
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L802700E0
	nop
.globl L8026FE9C
L8026FE9C:
	jal     pl_jump_8026BE78
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L802700E0
	nop
235$:
	jal     pl_jump_8026BF40
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L802700E0
	nop
240$:
	jal     pl_jump_8026C1E0
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L802700E0
	nop
245$:
	jal     pl_jump_8026C4B8
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L802700E0
	nop
.globl L8026FEEC
L8026FEEC:
	jal     pl_jump_8026D3C8
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L802700E0
	nop
.globl L8026FF00
L8026FF00:
	jal     pl_jump_8026D43C
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L802700E0
	nop
.globl L8026FF14
L8026FF14:
	jal     pl_jump_8026D508
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L802700E0
	nop
.globl L8026FF28
L8026FF28:
	jal     pl_jump_8026D4B0
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L802700E0
	nop
.globl L8026FF3C
L8026FF3C:
	jal     pl_jump_8026D6FC
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L802700E0
	nop
275$:
	jal     pl_jump_8026D988
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L802700E0
	nop
.globl L8026FF64
L8026FF64:
	jal     pl_jump_8026DB54
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L802700E0
	nop
285$:
	jal     pl_jump_8026E968
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L802700E0
	nop
.globl L8026FF8C
L8026FF8C:
	jal     pl_jump_8026DE98
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L802700E0
	nop
.globl L8026FFA0
L8026FFA0:
	jal     pl_jump_8026E088
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L802700E0
	nop
.globl L8026FFB4
L8026FFB4:
	jal     pl_jump_8026E2B4
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L802700E0
	nop
.globl L8026FFC8
L8026FFC8:
	jal     pl_jump_8026D770
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L802700E0
	nop
.globl L8026FFDC
L8026FFDC:
	jal     pl_jump_8026DCF4
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L802700E0
	nop
315$:
	jal     pl_jump_8026CF28
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L802700E0
	nop
.globl L80270004
L80270004:
	jal     pl_jump_8026F840
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L802700E0
	nop
325$:
	jal     pl_jump_8026C9FC
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L802700E0
	nop
.globl L8027002C
L8027002C:
	jal     pl_jump_8026D608
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L802700E0
	nop
.globl L80270040
L80270040:
	jal     pl_jump_8026D560
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L802700E0
	nop
.globl L80270054
L80270054:
	jal     pl_jump_8026F2EC
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L802700E0
	nop
345$:
	jal     pl_jump_8026E59C
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L802700E0
	nop
350$:
	jal     pl_jump_8026E810
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L802700E0
	nop
355$:
	jal     pl_jump_8026EC00
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L802700E0
	nop
360$:
	jal     pl_jump_8026F158
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L802700E0
	nop
.globl L802700B8
L802700B8:
	jal     pl_jump_8026F614
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L802700E0
	nop
370$:
	jal     pl_jump_8026F660
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L802700E0
	nop
.globl L802700E0
L802700E0:
	b       379$
	lw      $v0, 0x0024($sp)
	b       379$
	nop
379$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop
