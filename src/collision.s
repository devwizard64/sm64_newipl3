.include "sm64/asm.inc"

.set noreorder
.set noat

.align 4

collision_8024BFF0:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lw      $t6, 0x0020($sp)
	li      $a0, 0x0013
	jal     virtual_to_segment
	lw      $a1, 0x020C($t6)
	sw      $v0, 0x001C($sp)
	lw      $t8, 0x001C($sp)
	la.u    $t7, o_13003DF8
	la.l    $t7, o_13003DF8
	bne     $t7, $t8, 17$
	nop
	b       46$
	li      $v0, 0x0001
	b       42$
	nop
17$:
	lw      $t0, 0x001C($sp)
	la.u    $t9, o_13003DD8
	la.l    $t9, o_13003DD8
	bne     $t9, $t0, 26$
	nop
	b       46$
	li      $v0, 0x0004
	b       42$
	nop
26$:
	lw      $t2, 0x001C($sp)
	la.u    $t1, o_13003DB8
	la.l    $t1, o_13003DB8
	bne     $t1, $t2, 35$
	nop
	b       46$
	li      $v0, 0x0008
	b       42$
	nop
35$:
	lw      $t4, 0x001C($sp)
	la.u    $t3, o_13003E1C
	la.l    $t3, o_13003E1C
	bne     $t3, $t4, 42$
	nop
	b       46$
	li      $v0, 0x0002
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

collision_8024C0B8:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sw      $a2, 0x0030($sp)
	lw      $t6, 0x0028($sp)
	lw      $t7, 0x002C($sp)
	lwc1    $f4, 0x003C($t6)
	lwc1    $f6, 0x00A0($t7)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x0024($sp)
	lw      $t8, 0x0028($sp)
	lw      $t9, 0x002C($sp)
	lwc1    $f10, 0x0044($t8)
	lwc1    $f16, 0x00A8($t9)
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x0020($sp)
	lwc1    $f12, 0x0020($sp)
	jal     ATAN2
	lwc1    $f14, 0x0024($sp)
	sh      $v0, 0x001E($sp)
	lw      $t1, 0x002C($sp)
	lh      $t0, 0x001E($sp)
	lw      $t2, 0x00C8($t1)
	subu    $t3, $t0, $t2
	sh      $t3, 0x001C($sp)
	lh      $t4, 0x0032($sp)
	lh      $t6, 0x001C($sp)
	subu    $t5, $0, $t4
	slt     $at, $t6, $t5
	bnez    $at, 37$
	nop
	slt     $at, $t4, $t6
	bnez    $at, 37$
	nop
	b       41$
	li      $v0, 0x0001
37$:
	b       41$
	move    $v0, $0
	b       41$
	nop
41$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl collision_8024C16C
collision_8024C16C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	lw      $t6, 0x0024($sp)
	lw      $t7, 0x0020($sp)
	lwc1    $f4, 0x00A0($t6)
	lwc1    $f6, 0x003C($t7)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x001C($sp)
	lw      $t8, 0x0024($sp)
	lw      $t9, 0x0020($sp)
	lwc1    $f10, 0x00A8($t8)
	lwc1    $f16, 0x0044($t9)
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x0018($sp)
	lwc1    $f12, 0x0018($sp)
	jal     ATAN2
	lwc1    $f14, 0x001C($sp)
	b       23$
	nop
	b       23$
	nop
23$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

collision_8024C1D8:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0030($sp)
	sw      $a1, 0x0034($sp)
	sw      $s0, 0x0018($sp)
	sw      $0, 0x002C($sp)
	lw      $t6, 0x0030($sp)
	lw      $t7, 0x000C($t6)
	sw      $t7, 0x0028($sp)
	lw      $t8, 0x0028($sp)
	li      $at, 0x00800000
	and     $t9, $t8, $at
	beqz    $t9, 164$
	nop
	lw      $t0, 0x0028($sp)
	li.u    $at, 0x00800380
	li.l    $at, 0x00800380
	beq     $t0, $at, 27$
	nop
	li.u    $at, 0x00800457
	li.l    $at, 0x00800457
	beq     $t0, $at, 27$
	nop
	li.u    $at, 0x018008AC
	li.l    $at, 0x018008AC
	bne     $t0, $at, 84$
	nop
27$:
	lw      $a0, 0x0030($sp)
	jal     collision_8024C16C
	lw      $a1, 0x0034($sp)
	lw      $t2, 0x0030($sp)
	sll     $s0, $v0, 16
	sra     $t1, $s0, 16
	lh      $t3, 0x002E($t2)
	move    $s0, $t1
	subu    $t4, $s0, $t3
	sh      $t4, 0x0026($sp)
	lw      $t5, 0x0030($sp)
	li      $at, 0x00100000
	lw      $t6, 0x0004($t5)
	and     $t7, $t6, $at
	beqz    $t7, 52$
	nop
	lh      $t8, 0x0026($sp)
	slti    $at, $t8, -0x2AAA
	bnez    $at, 52$
	nop
	slti    $at, $t8, 0x2AAB
	beqz    $at, 52$
	nop
	li      $t9, 0x0002
	sw      $t9, 0x002C($sp)
52$:
	lw      $t0, 0x0030($sp)
	li      $at, 0x00200000
	lw      $t1, 0x0004($t0)
	and     $t2, $t1, $at
	beqz    $t2, 67$
	nop
	lh      $t3, 0x0026($sp)
	slti    $at, $t3, -0x2AAA
	bnez    $at, 67$
	nop
	slti    $at, $t3, 0x2AAB
	beqz    $at, 67$
	nop
	li      $t4, 0x0004
	sw      $t4, 0x002C($sp)
67$:
	lw      $t5, 0x0030($sp)
	li      $at, 0x00400000
	lw      $t6, 0x0004($t5)
	and     $t7, $t6, $at
	beqz    $t7, 82$
	nop
	lh      $t8, 0x0026($sp)
	slti    $at, $t8, -0x4000
	bnez    $at, 82$
	nop
	slti    $at, $t8, 0x4001
	beqz    $at, 82$
	nop
	li      $t9, 0x0008
	sw      $t9, 0x002C($sp)
82$:
	b       164$
	nop
84$:
	lw      $t0, 0x0028($sp)
	li.u    $at, 0x008008A9
	li.l    $at, 0x008008A9
	beq     $t0, $at, 93$
	nop
	li.u    $at, 0x108008A4
	li.l    $at, 0x108008A4
	bne     $t0, $at, 104$
	nop
93$:
	lw      $t1, 0x0030($sp)
	mtc1    $0, $f6
	lwc1    $f4, 0x004C($t1)
	c.lt.s  $f4, $f6
	nop
	bc1f    102$
	nop
	li      $t2, 0x0001
	sw      $t2, 0x002C($sp)
102$:
	b       164$
	nop
104$:
	lw      $t3, 0x0028($sp)
	li.u    $at, 0x0080023C
	li.l    $at, 0x0080023C
	beq     $t3, $at, 113$
	nop
	li.u    $at, 0x18800238
	li.l    $at, 0x18800238
	bne     $t3, $at, 127$
	nop
113$:
	lw      $t4, 0x0030($sp)
	mtc1    $0, $f10
	lwc1    $f8, 0x004C($t4)
	c.lt.s  $f8, $f10
	nop
	bc1f    125$
	nop
	lhu     $t5, 0x0018($t4)
	bnez    $t5, 125$
	nop
	li      $t6, 0x0001
	sw      $t6, 0x002C($sp)
125$:
	b       164$
	nop
127$:
	lw      $t7, 0x0028($sp)
	li.u    $at, 0x018008AA
	li.l    $at, 0x018008AA
	beq     $t7, $at, 136$
	nop
	li.u    $at, 0x0080045A
	li.l    $at, 0x0080045A
	bne     $t7, $at, 139$
	nop
136$:
	li      $t8, 0x0010
	b       164$
	sw      $t8, 0x002C($sp)
139$:
	lw      $t9, 0x0028($sp)
	li      $at, 0x00010000
	and     $t0, $t9, $at
	beqz    $t0, 147$
	nop
	li      $t1, 0x0020
	b       164$
	sw      $t1, 0x002C($sp)
147$:
	lw      $t2, 0x0030($sp)
	li      $at, 0xC1D00000
	mtc1    $at, $f18
	lwc1    $f16, 0x0054($t2)
	c.le.s  $f16, $f18
	nop
	bc1t    162$
	nop
	li      $at, 0x41D00000
	mtc1    $at, $f4
	nop
	c.le.s  $f4, $f16
	nop
	bc1f    164$
	nop
162$:
	li      $t3, 0x0020
	sw      $t3, 0x002C($sp)
164$:
	lw      $t4, 0x002C($sp)
	bnez    $t4, 200$
	nop
	lw      $t5, 0x0028($sp)
	andi    $t6, $t5, 0x0800
	beqz    $t6, 200$
	nop
	lw      $t7, 0x0030($sp)
	mtc1    $0, $f8
	lwc1    $f6, 0x004C($t7)
	c.lt.s  $f6, $f8
	nop
	bc1f    190$
	nop
	lw      $t8, 0x0030($sp)
	lw      $t9, 0x0034($sp)
	lwc1    $f10, 0x0040($t8)
	lwc1    $f18, 0x00A4($t9)
	c.lt.s  $f18, $f10
	nop
	bc1f    188$
	nop
	li      $t0, 0x0040
	sw      $t0, 0x002C($sp)
188$:
	b       200$
	nop
190$:
	lw      $t1, 0x0030($sp)
	lw      $t2, 0x0034($sp)
	lwc1    $f4, 0x0040($t1)
	lwc1    $f16, 0x00A4($t2)
	c.lt.s  $f4, $f16
	nop
	bc1f    200$
	nop
	li      $t3, 0x0080
	sw      $t3, 0x002C($sp)
200$:
	b       204$
	lw      $v0, 0x002C($sp)
	b       204$
	nop
204$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

collision_8024C51C:
	addiu   $sp, $sp, -0x0008
	sw      $0, 0x0004($sp)
	move    $a2, $a1
	slti    $at, $a2, 0x0041
	bnez    $at, 11$
	nop
	li      $at, 0x0080
	beq     $a2, $at, 49$
	nop
	b       L8024C5F0
	nop
11$:
	slti    $at, $a2, 0x0021
	bnez    $at, 19$
	nop
	li      $at, 0x0040
	beq     $a2, $at, 45$
	nop
	b       L8024C5F0
	nop
19$:
	addiu   $t6, $a2, -0x0001
	sltiu   $at, $t6, 0x0020
	beqz    $at, L8024C5F0
	nop
	sll     $t6, $t6, 2
	lui     $at, %hi(collision_803361B0)
	addu    $at, $at, $t6
	lw      $t6, %lo(collision_803361B0)($at)
	jr      $t6
	nop
.globl L8024C590
L8024C590:
	li      $t7, 0x0004
	sw      $t7, 0x0004($sp)
	b       L8024C5F0
	nop
.globl L8024C5A0
L8024C5A0:
	li      $t8, 0x0001
	sw      $t8, 0x0004($sp)
	b       L8024C5F0
	nop
.globl L8024C5B0
L8024C5B0:
	li      $t9, 0x0002
	sw      $t9, 0x0004($sp)
	b       L8024C5F0
	nop
.globl L8024C5C0
L8024C5C0:
	li      $t0, 0x0005
	sw      $t0, 0x0004($sp)
	b       L8024C5F0
	nop
45$:
	li      $t1, 0x0003
	sw      $t1, 0x0004($sp)
	b       L8024C5F0
	nop
49$:
	li      $t2, 0x0006
	sw      $t2, 0x0004($sp)
	b       L8024C5F0
	nop
.globl L8024C5F0
L8024C5F0:
	lw      $t3, 0x0004($sp)
	li      $at, 0xC000
	addu    $t4, $t3, $at
	sw      $t4, 0x0134($a0)
	b       61$
	lw      $v0, 0x0004($sp)
	b       61$
	nop
61$:
	jr      $ra
	addiu   $sp, $sp, 0x0008

.globl collision_8024C618
collision_8024C618:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	lw      $t7, 0x0084($t6)
	beqz    $t7, 15$
	nop
	lw      $t9, 0x0018($sp)
	li      $t8, 0x00400000
	lw      $t0, 0x0084($t9)
	sw      $t8, 0x0134($t0)
	jal     bgm_shell_stop
	nop
	lw      $t1, 0x0018($sp)
	sw      $0, 0x0084($t1)
15$:
	b       17$
	nop
17$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl collision_8024C66C
collision_8024C66C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	lw      $t7, 0x007C($t6)
	bnez    $t7, 15$
	nop
	lw      $t8, 0x0018($sp)
	lw      $t9, 0x0080($t8)
	sw      $t9, 0x007C($t8)
	lw      $t0, 0x0018($sp)
	la.u    $a1, o_13003464
	la.l    $a1, o_13003464
	jal     objlib_8029E1B0
	lw      $a0, 0x007C($t0)
15$:
	b       17$
	nop
17$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl collision_8024C6C0
collision_8024C6C0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	lw      $t7, 0x007C($t6)
	beqz    $t7, 42$
	nop
	la.u    $a0, o_13000708
	jal     segment_to_virtual
	la.l    $a0, o_13000708
	lw      $t8, 0x0018($sp)
	lw      $t9, 0x007C($t8)
	lw      $t0, 0x020C($t9)
	bne     $v0, $t0, 17$
	nop
	jal     bgm_shell_stop
	nop
17$:
	lw      $t1, 0x0018($sp)
	la.u    $a1, o_1300346C
	la.l    $a1, o_1300346C
	jal     objlib_8029E1B0
	lw      $a0, 0x007C($t1)
	lw      $t2, 0x0018($sp)
	lw      $t3, 0x0098($t2)
	lw      $t4, 0x007C($t2)
	lwc1    $f4, 0x0018($t3)
	swc1    $f4, 0x00A0($t4)
	lw      $t5, 0x0018($sp)
	lwc1    $f6, 0x0040($t5)
	lw      $t6, 0x007C($t5)
	swc1    $f6, 0x00A4($t6)
	lw      $t7, 0x0018($sp)
	lw      $t8, 0x0098($t7)
	lw      $t9, 0x007C($t7)
	lwc1    $f8, 0x0020($t8)
	swc1    $f8, 0x00A8($t9)
	lw      $t0, 0x0018($sp)
	lh      $t1, 0x002E($t0)
	lw      $t3, 0x007C($t0)
	sw      $t1, 0x00C8($t3)
	lw      $t2, 0x0018($sp)
	sw      $0, 0x007C($t2)
42$:
	b       44$
	nop
44$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl collision_8024C780
collision_8024C780:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	lw      $t7, 0x007C($t6)
	beqz    $t7, 63$
	nop
	la.u    $a0, o_13000708
	jal     segment_to_virtual
	la.l    $a0, o_13000708
	lw      $t8, 0x0018($sp)
	lw      $t9, 0x007C($t8)
	lw      $t0, 0x020C($t9)
	bne     $v0, $t0, 17$
	nop
	jal     bgm_shell_stop
	nop
17$:
	lw      $t1, 0x0018($sp)
	la.u    $a1, o_13003474
	la.l    $a1, o_13003474
	jal     objlib_8029E1B0
	lw      $a0, 0x007C($t1)
	lw      $t2, 0x0018($sp)
	lui     $at, %hi(math_sin)
	lhu     $t3, 0x002E($t2)
	lw      $t6, 0x0098($t2)
	lw      $t7, 0x007C($t2)
	sra     $t4, $t3, 4
	sll     $t5, $t4, 2
	addu    $at, $at, $t5
	lwc1    $f4, %lo(math_sin)($at)
	li      $at, 0x42000000
	mtc1    $at, $f6
	lwc1    $f10, 0x0018($t6)
	mul.s   $f8, $f4, $f6
	add.s   $f16, $f8, $f10
	swc1    $f16, 0x00A0($t7)
	lw      $t8, 0x0018($sp)
	lw      $t9, 0x0098($t8)
	lw      $t0, 0x007C($t8)
	lwc1    $f18, 0x001C($t9)
	swc1    $f18, 0x00A4($t0)
	lw      $t1, 0x0018($sp)
	lui     $at, %hi(math_cos)
	lhu     $t3, 0x002E($t1)
	lw      $t6, 0x0098($t1)
	lw      $t2, 0x007C($t1)
	sra     $t4, $t3, 4
	sll     $t5, $t4, 2
	addu    $at, $at, $t5
	lwc1    $f4, %lo(math_cos)($at)
	li      $at, 0x42000000
	mtc1    $at, $f6
	lwc1    $f10, 0x0020($t6)
	mul.s   $f8, $f4, $f6
	add.s   $f16, $f8, $f10
	swc1    $f16, 0x00A8($t2)
	lw      $t7, 0x0018($sp)
	lh      $t9, 0x002E($t7)
	lw      $t8, 0x007C($t7)
	sw      $t9, 0x00C8($t8)
	lw      $t0, 0x0018($sp)
	sw      $0, 0x007C($t0)
63$:
	b       65$
	nop
65$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl collision_8024C894
collision_8024C894:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	jal     collision_8024C6C0
	lw      $a0, 0x0018($sp)
	jal     collision_8024C618
	lw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	li      $at, 0x04A8
	lw      $t7, 0x000C($t6)
	bne     $t7, $at, 20$
	nop
	lw      $t8, 0x0018($sp)
	lw      $t9, 0x0080($t8)
	sw      $0, 0x0134($t9)
	lw      $t1, 0x0018($sp)
	lui     $t0, %hi(gfx_frame)
	lw      $t0, %lo(gfx_frame)($t0)
	lw      $t2, 0x0080($t1)
	sw      $t0, 0x0110($t2)
20$:
	b       22$
	nop
22$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl collision_8024C8FC
collision_8024C8FC:
	lw      $v0, 0x0004($a0)
	andi    $t6, $v0, 0x001F
	move    $v0, $t6
	xori    $t7, $v0, 0x0011
	sltiu   $t7, $t7, 0x0001
	jr      $ra
	move    $v0, $t7
	jr      $ra
	nop
	jr      $ra
	nop

.globl collision_8024C928
collision_8024C928:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sdc1    $f20, 0x0010($sp)
	jal     collision_8024C8FC
	lw      $a0, 0x0028($sp)
	beqz    $v0, 73$
	nop
	lw      $t6, 0x0028($sp)
	lwc1    $f4, 0x003C($t6)
	lwc1    $f8, 0x0040($t6)
	lwc1    $f16, 0x0044($t6)
	trunc.w.s $f6, $f4
	trunc.w.s $f10, $f8
	mfc1    $a0, $f6
	trunc.w.s $f18, $f16
	mfc1    $a1, $f10
	mfc1    $a2, $f18
	jal     save_set_cap
	nop
	lw      $t0, 0x0028($sp)
	li      $at, -0x0012
	lw      $t1, 0x0004($t0)
	and     $t2, $t1, $at
	sw      $t2, 0x0004($t0)
	lw      $t3, 0x0028($sp)
	la.u    $a2, o_13003DF8
	la.l    $a2, o_13003DF8
	li      $a1, 0x0088
	jal     obj_make_here
	lw      $a0, 0x0088($t3)
	sw      $v0, 0x0024($sp)
	lw      $t4, 0x0028($sp)
	lw      $t5, 0x000C($t4)
	andi    $t7, $t5, 0x8000
	beqz    $t7, 42$
	nop
	li      $at, 0x42F00000
	mtc1    $at, $f20
	b       45$
	nop
42$:
	li      $at, 0x43340000
	mtc1    $at, $f20
	nop
45$:
	lw      $t8, 0x0024($sp)
	lwc1    $f4, 0x00A4($t8)
	add.s   $f6, $f4, $f20
	swc1    $f6, 0x00A4($t8)
	lwc1    $f8, 0x002C($sp)
	lw      $t6, 0x0024($sp)
	swc1    $f8, 0x00B8($t6)
	lw      $t9, 0x0028($sp)
	lw      $t4, 0x0024($sp)
	lh      $t1, 0x002E($t9)
	addiu   $t2, $t1, 0x0400
	sll     $t0, $t2, 16
	sra     $t3, $t0, 16
	sw      $t3, 0x00C8($t4)
	lw      $t5, 0x0028($sp)
	mtc1    $0, $f16
	lwc1    $f10, 0x0054($t5)
	c.lt.s  $f10, $f16
	nop
	bc1f    73$
	nop
	lw      $t7, 0x0024($sp)
	li      $at, 0x8000
	lw      $t8, 0x00C8($t7)
	addu    $t6, $t8, $at
	sll     $t9, $t6, 16
	sra     $t1, $t9, 16
	sw      $t1, 0x00C8($t7)
73$:
	b       75$
	nop
75$:
	lw      $ra, 0x001C($sp)
	ldc1    $f20, 0x0010($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl collision_8024CA68
collision_8024CA68:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	sw      $0, 0x0024($sp)
	lui     $a0, %hi(mario)
	jal     collision_8024C8FC
	lw      $a0, %lo(mario)($a0)
	beqz    $v0, 27$
	nop
	lw      $t6, 0x0028($sp)
	li      $at, 0x0001
	bne     $t6, $at, 16$
	nop
	b       17$
	li      $s0, 0x00020000
16$:
	li      $s0, 0x00040000
17$:
	jal     save_set_flag
	move    $a0, $s0
	lui     $t7, %hi(mario)
	lw      $t7, %lo(mario)($t7)
	li      $at, -0x0012
	lw      $t8, 0x0004($t7)
	and     $t9, $t8, $at
	sw      $t9, 0x0004($t7)
	li      $t0, 0x0001
	sw      $t0, 0x0024($sp)
27$:
	b       31$
	lw      $v0, 0x0024($sp)
	b       31$
	nop
31$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl collision_8024CAF8
collision_8024CAF8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $a0, %hi(mario)
	jal     collision_8024C6C0
	lw      $a0, %lo(mario)($a0)
	jal     save_clr_flag
	li      $a0, 0x00060000
	lui     $t6, %hi(mario)
	lw      $t6, %lo(mario)($t6)
	li      $at, -0x0011
	lw      $t7, 0x0004($t6)
	and     $t8, $t7, $at
	sw      $t8, 0x0004($t6)
	lui     $t9, %hi(mario)
	lw      $t9, %lo(mario)($t9)
	lw      $t0, 0x0004($t9)
	ori     $t1, $t0, 0x0021
	sw      $t1, 0x0004($t9)
	b       20$
	nop
20$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

collision_8024CB58:
	addiu   $sp, $sp, -0x0008
	lw      $t6, 0x000C($a0)
	sw      $t6, 0x0004($sp)
	lw      $t7, 0x0004($sp)
	li.u    $at, 0x00880456
	li.l    $at, 0x00880456
	beq     $t7, $at, 12$
	nop
	li.u    $at, 0x0188088A
	li.l    $at, 0x0188088A
	bne     $t7, $at, 20$
	nop
12$:
	lw      $t8, 0x0190($a1)
	andi    $t9, $t8, 0x0004
	bnez    $t9, 18$
	nop
	b       39$
	li      $v0, 0x0001
18$:
	b       35$
	nop
20$:
	lw      $t0, 0x0004($sp)
	li.u    $at, 0x00800380
	li.l    $at, 0x00800380
	beq     $t0, $at, 29$
	nop
	li.u    $at, 0x00800457
	li.l    $at, 0x00800457
	bne     $t0, $at, 35$
	nop
29$:
	lw      $t1, 0x001C($a0)
	sltiu   $at, $t1, 0x0002
	beqz    $at, 35$
	nop
	b       39$
	li      $v0, 0x0001
35$:
	b       39$
	move    $v0, $0
	b       39$
	nop
39$:
	jr      $ra
	addiu   $sp, $sp, 0x0008

.globl collision_8024CBFC
collision_8024CBFC:
	addiu   $sp, $sp, -0x0008
	sw      $0, 0x0004($sp)
	lw      $t6, 0x0088($a0)
	lh      $t7, 0x0076($t6)
	blez    $t7, 26$
	nop
6$:
	lw      $t9, 0x0004($sp)
	lw      $t8, 0x0088($a0)
	sll     $t0, $t9, 2
	addu    $t1, $t8, $t0
	lw      $t2, 0x0078($t1)
	sw      $t2, 0x0000($sp)
	lw      $t3, 0x0000($sp)
	lw      $t4, 0x0130($t3)
	bne     $t4, $a1, 18$
	nop
	b       30$
	lw      $v0, 0x0000($sp)
18$:
	lw      $t5, 0x0004($sp)
	addiu   $t6, $t5, 0x0001
	sw      $t6, 0x0004($sp)
	lw      $t7, 0x0088($a0)
	lh      $t9, 0x0076($t7)
	slt     $at, $t6, $t9
	bnez    $at, 6$
	nop
26$:
	b       30$
	move    $v0, $0
	b       30$
	nop
30$:
	jr      $ra
	addiu   $sp, $sp, 0x0008

.globl collision_8024CC7C
collision_8024CC7C:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0038($sp)
	sw      $s1, 0x0018($sp)
	sw      $s0, 0x0014($sp)
	sw      $0, 0x0034($sp)
	lw      $t6, 0x0038($sp)
	lhu     $t7, 0x0002($t6)
	andi    $t8, $t7, 0x0800
	beqz    $t8, 90$
	nop
	lw      $t9, 0x0038($sp)
	li      $a0, 0x0013
	lw      $t0, 0x0078($t9)
	jal     virtual_to_segment
	lw      $a1, 0x020C($t0)
	sw      $v0, 0x0030($sp)
	lw      $t2, 0x0030($sp)
	la.u    $t1, o_13001850
	la.l    $t1, o_13001850
	bne     $t1, $t2, 49$
	nop
	lw      $t3, 0x0038($sp)
	lw      $t5, 0x0078($t3)
	lh      $t4, 0x002E($t3)
	lw      $t6, 0x00C8($t5)
	subu    $t7, $t4, $t6
	sh      $t7, 0x002E($sp)
	lh      $t8, 0x002E($sp)
	slti    $at, $t8, -0x5555
	bnez    $at, 47$
	nop
	slti    $at, $t8, 0x5556
	beqz    $at, 47$
	nop
	lw      $t9, 0x0038($sp)
	lw      $t0, 0x0078($t9)
	lw      $t1, 0x00C8($t0)
	sh      $t1, 0x002E($t9)
	lw      $t2, 0x0038($sp)
	lw      $t3, 0x0078($t2)
	sw      $t3, 0x0080($t2)
	lw      $a0, 0x0038($sp)
	li      $a1, 0x0390
	jal     pl_set_state
	move    $a2, $0
	sw      $v0, 0x0034($sp)
47$:
	b       90$
	nop
49$:
	lw      $t5, 0x0038($sp)
	move    $a0, $t5
	jal     collision_8024C16C
	lw      $a1, 0x0078($t5)
	lw      $t6, 0x0038($sp)
	sll     $s0, $v0, 16
	sra     $t4, $s0, 16
	lh      $t7, 0x002E($t6)
	move    $s0, $t4
	subu    $t8, $s0, $t7
	sh      $t8, 0x002C($sp)
	lh      $t0, 0x002C($sp)
	slti    $at, $t0, -0x2AAA
	bnez    $at, 90$
	nop
	slti    $at, $t0, 0x2AAB
	beqz    $at, 90$
	nop
	lw      $t1, 0x0038($sp)
	lw      $t9, 0x0078($t1)
	sw      $t9, 0x0080($t1)
	lw      $t3, 0x0038($sp)
	lw      $t2, 0x000C($t3)
	andi    $t5, $t2, 0x0800
	bnez    $t5, 88$
	nop
	lw      $t4, 0x0038($sp)
	li      $at, 0x00080000
	lw      $t6, 0x000C($t4)
	and     $t7, $t6, $at
	beqz    $t7, 83$
	nop
	b       84$
	li      $s1, 0x0385
83$:
	li      $s1, 0x0383
84$:
	lw      $a0, 0x0038($sp)
	move    $a1, $s1
	jal     pl_set_state
	move    $a2, $0
88$:
	li      $t8, 0x0001
	sw      $t8, 0x0034($sp)
90$:
	b       94$
	lw      $v0, 0x0034($sp)
	b       94$
	nop
94$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0014($sp)
	lw      $s1, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0038

collision_8024CE08:
	addiu   $sp, $sp, -0x0070
	sw      $ra, 0x0024($sp)
	sw      $a0, 0x0070($sp)
	sw      $0, 0x0034($sp)
	lw      $t6, 0x0070($sp)
	lw      $t7, 0x0078($t6)
	sw      $t7, 0x0030($sp)
	lw      $t8, 0x0030($sp)
	li      $at, 0x40400000
	mtc1    $at, $f6
	lwc1    $f4, 0x01F8($t8)
	li      $at, 0x42540000
	mtc1    $at, $f10
	mul.s   $f8, $f4, $f6
	div.s   $f16, $f8, $f10
	swc1    $f16, 0x002C($sp)
	lw      $t9, 0x0030($sp)
	li      $at, 0x42540000
	mtc1    $at, $f18
	lwc1    $f4, 0x01F8($t9)
	div.s   $f6, $f18, $f4
	swc1    $f6, 0x0028($sp)
	lw      $t0, 0x0070($sp)
	li      $at, 0x42500000
	mtc1    $at, $f10
	lwc1    $f8, 0x002C($sp)
	lh      $t1, 0x002E($t0)
	lw      $a1, 0x003C($t0)
	lw      $a2, 0x0044($t0)
	lw      $a3, 0x0054($t0)
	addiu   $a0, $sp, 0x0058
	swc1    $f10, 0x0018($sp)
	swc1    $f8, 0x0014($sp)
	jal     physics_80255238
	sw      $t1, 0x0010($sp)
	lw      $t2, 0x0030($sp)
	lwc1    $f16, 0x0028($sp)
	li      $at, 0x40000000
	lw      $t3, 0x00C8($t2)
	lw      $a1, 0x00A0($t2)
	lw      $a2, 0x00A8($t2)
	lw      $a3, 0x00B8($t2)
	swc1    $f16, 0x0014($sp)
	sw      $t3, 0x0010($sp)
	mtc1    $at, $f4
	lwc1    $f18, 0x01F8($t2)
	addiu   $a0, $sp, 0x0040
	add.s   $f6, $f18, $f4
	jal     physics_80255238
	swc1    $f6, 0x0018($sp)
	lw      $t4, 0x0070($sp)
	mtc1    $0, $f10
	lwc1    $f8, 0x0054($t4)
	c.eq.s  $f8, $f10
	nop
	bc1t    62$
	nop
	addiu   $a0, $sp, 0x0058
	jal     physics_802550C0
	addiu   $a1, $sp, 0x0040
	b       65$
	nop
62$:
	addiu   $a0, $sp, 0x0040
	jal     physics_802550C0
	addiu   $a1, $sp, 0x0058
65$:
	lwc1    $f12, 0x006C($sp)
	jal     ATAN2
	lwc1    $f14, 0x0068($sp)
	sh      $v0, 0x003E($sp)
	lwc1    $f12, 0x0054($sp)
	jal     ATAN2
	lwc1    $f14, 0x0050($sp)
	sh      $v0, 0x003C($sp)
	lw      $t6, 0x0070($sp)
	lh      $t5, 0x003E($sp)
	lh      $t7, 0x002E($t6)
	subu    $t8, $t5, $t7
	sh      $t8, 0x003A($sp)
	lw      $t0, 0x0030($sp)
	lh      $t9, 0x003C($sp)
	lw      $t1, 0x00C8($t0)
	subu    $t3, $t9, $t1
	sh      $t3, 0x0038($sp)
	lh      $t2, 0x003E($sp)
	lw      $t4, 0x0070($sp)
	sh      $t2, 0x002E($t4)
	lwc1    $f16, 0x0068($sp)
	lwc1    $f4, 0x006C($sp)
	mul.s   $f18, $f16, $f16
	nop
	mul.s   $f6, $f4, $f4
	jal     sqrtf
	add.s   $f12, $f18, $f6
	lw      $t6, 0x0070($sp)
	swc1    $f0, 0x0054($t6)
	lwc1    $f8, 0x0060($sp)
	lw      $t5, 0x0070($sp)
	swc1    $f8, 0x003C($t5)
	lwc1    $f10, 0x0064($sp)
	lw      $t7, 0x0070($sp)
	swc1    $f10, 0x0044($t7)
	lh      $t8, 0x003C($sp)
	lw      $t0, 0x0030($sp)
	sw      $t8, 0x00C8($t0)
	lwc1    $f16, 0x0050($sp)
	lwc1    $f18, 0x0054($sp)
	mul.s   $f4, $f16, $f16
	nop
	mul.s   $f6, $f18, $f18
	jal     sqrtf
	add.s   $f12, $f4, $f6
	lw      $t9, 0x0030($sp)
	swc1    $f0, 0x00B8($t9)
	lwc1    $f8, 0x0048($sp)
	lw      $t1, 0x0030($sp)
	swc1    $f8, 0x00A0($t1)
	lwc1    $f10, 0x004C($sp)
	lw      $t3, 0x0030($sp)
	swc1    $f10, 0x00A8($t3)
	lh      $t2, 0x003A($sp)
	slti    $at, $t2, -0x4000
	bnez    $at, 126$
	nop
	slti    $at, $t2, 0x4001
	bnez    $at, 151$
	nop
126$:
	lw      $t4, 0x0070($sp)
	li      $at, 0x8000
	lh      $t6, 0x002E($t4)
	addu    $t5, $t6, $at
	sh      $t5, 0x002E($t4)
	lw      $t7, 0x0070($sp)
	li      $at, 0xBF800000
	mtc1    $at, $f18
	lwc1    $f16, 0x0054($t7)
	mul.s   $f4, $f16, $f18
	swc1    $f4, 0x0054($t7)
	lw      $t8, 0x0070($sp)
	lw      $t0, 0x000C($t8)
	andi    $t9, $t0, 0x0800
	beqz    $t9, 146$
	nop
	li.u    $t1, 0x010208B0
	li.l    $t1, 0x010208B0
	b       149$
	sw      $t1, 0x0034($sp)
146$:
	li.u    $t3, 0x00020464
	li.l    $t3, 0x00020464
	sw      $t3, 0x0034($sp)
149$:
	b       163$
	nop
151$:
	lw      $t2, 0x0070($sp)
	lw      $t6, 0x000C($t2)
	andi    $t5, $t6, 0x0800
	beqz    $t5, 160$
	nop
	li.u    $t4, 0x010208B1
	li.l    $t4, 0x010208B1
	b       163$
	sw      $t4, 0x0034($sp)
160$:
	li.u    $t7, 0x00020465
	li.l    $t7, 0x00020465
	sw      $t7, 0x0034($sp)
163$:
	b       167$
	lw      $v0, 0x0034($sp)
	b       167$
	nop
167$:
	lw      $ra, 0x0024($sp)
	addiu   $sp, $sp, 0x0070
	jr      $ra
	nop

collision_8024D0B4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	sw      $a2, 0x0020($sp)
	lw      $t6, 0x001C($sp)
	lw      $t7, 0x0018($sp)
	lwc1    $f4, 0x00A4($t6)
	lwc1    $f6, 0x01FC($t6)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x0040($t7)
	lwc1    $f10, 0x0020($sp)
	lw      $t8, 0x0018($sp)
	swc1    $f10, 0x004C($t8)
	lw      $t9, 0x0018($sp)
	li      $at, -0x0101
	lw      $t0, 0x0004($t9)
	and     $t1, $t0, $at
	sw      $t1, 0x0004($t9)
	lw      $t2, 0x0018($sp)
	li.u    $a0, 0x0459B081
	li.l    $a0, 0x0459B081
	lw      $a1, 0x0088($t2)
	jal     Na_SePlay
	addiu   $a1, $a1, 0x0054
	b       27$
	nop
27$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

collision_8024D130:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	mtc1    $0, $f4
	lw      $t6, 0x0018($sp)
	swc1    $f4, 0x004C($t6)
	jal     camera_8027F590
	li      $a0, 0x0008
	b       11$
	nop
11$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

collision_8024D16C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lw      $t6, 0x0020($sp)
	move    $a0, $t6
	jal     collision_8024C16C
	lw      $a1, 0x0078($t6)
	sh      $v0, 0x001A($sp)
	lw      $t8, 0x0020($sp)
	lh      $t7, 0x001A($sp)
	lh      $t9, 0x002E($t8)
	subu    $t0, $t7, $t9
	sh      $t0, 0x0018($sp)
	lw      $t1, 0x0020($sp)
	li      $at, 0x41800000
	mtc1    $at, $f6
	lwc1    $f4, 0x0054($t1)
	c.lt.s  $f4, $f6
	nop
	bc1f    25$
	nop
	li      $at, 0x41800000
	mtc1    $at, $f8
	lw      $t2, 0x0020($sp)
	swc1    $f8, 0x0054($t2)
25$:
	lh      $t3, 0x001A($sp)
	lw      $t4, 0x0020($sp)
	sh      $t3, 0x002E($t4)
	lh      $t5, 0x0018($sp)
	slti    $at, $t5, -0x4000
	bnez    $at, 57$
	nop
	slti    $at, $t5, 0x4001
	beqz    $at, 57$
	nop
	lw      $t6, 0x0020($sp)
	li      $at, 0xBF800000
	mtc1    $at, $f16
	lwc1    $f10, 0x0054($t6)
	mul.s   $f18, $f10, $f16
	swc1    $f18, 0x0054($t6)
	lw      $t8, 0x0020($sp)
	li.u    $at, 0x00300800
	li.l    $at, 0x00300800
	lw      $t7, 0x000C($t8)
	and     $t9, $t7, $at
	beqz    $t9, 52$
	nop
	li.u    $t0, 0x010208B0
	li.l    $t0, 0x010208B0
	b       55$
	sw      $t0, 0x001C($sp)
52$:
	li.u    $t1, 0x00020464
	li.l    $t1, 0x00020464
	sw      $t1, 0x001C($sp)
55$:
	b       76$
	nop
57$:
	lw      $t2, 0x0020($sp)
	li      $at, 0x8000
	lh      $t3, 0x002E($t2)
	addu    $t4, $t3, $at
	sh      $t4, 0x002E($t2)
	lw      $t5, 0x0020($sp)
	li.u    $at, 0x00300800
	li.l    $at, 0x00300800
	lw      $t6, 0x000C($t5)
	and     $t8, $t6, $at
	beqz    $t8, 73$
	nop
	li.u    $t7, 0x010208B1
	li.l    $t7, 0x010208B1
	b       76$
	sw      $t7, 0x001C($sp)
73$:
	li.u    $t9, 0x00020465
	li.l    $t9, 0x00020465
	sw      $t9, 0x001C($sp)
76$:
	b       80$
	lw      $v0, 0x001C($sp)
	b       80$
	nop
80$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

collision_8024D2BC:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sh      $0, 0x0022($sp)
	sh      $0, 0x0020($sp)
	lw      $t6, 0x0028($sp)
	move    $a0, $t6
	jal     collision_8024C16C
	lw      $a1, 0x0078($t6)
	sh      $v0, 0x001E($sp)
	lw      $t8, 0x0028($sp)
	lh      $t7, 0x001E($sp)
	lh      $t9, 0x002E($t8)
	subu    $t0, $t7, $t9
	sh      $t0, 0x001C($sp)
	lw      $t1, 0x0028($sp)
	lbu     $t3, 0x00B2($t1)
	lh      $t2, 0x00AE($t1)
	sll     $t4, $t3, 6
	subu    $t5, $t2, $t4
	sh      $t5, 0x001A($sp)
	lw      $t6, 0x0028($sp)
	lw      $t8, 0x000C($t6)
	andi    $t7, $t8, 0x6000
	beqz    $t7, 30$
	nop
	li      $t9, 0x0002
	b       39$
	sh      $t9, 0x0022($sp)
30$:
	lw      $t0, 0x0028($sp)
	li.u    $at, 0x00300800
	li.l    $at, 0x00300800
	lw      $t1, 0x000C($t0)
	and     $t3, $t1, $at
	beqz    $t3, 39$
	nop
	li      $t2, 0x0001
	sh      $t2, 0x0022($sp)
39$:
	lh      $t4, 0x001A($sp)
	slti    $at, $t4, 0x0100
	beqz    $at, 46$
	nop
	li      $t5, 0x0002
	b       63$
	sh      $t5, 0x0020($sp)
46$:
	lw      $t6, 0x0028($sp)
	lw      $t8, 0x0078($t6)
	lw      $t7, 0x0180($t8)
	slti    $at, $t7, 0x0004
	bnez    $at, 55$
	nop
	li      $t9, 0x0002
	b       63$
	sh      $t9, 0x0020($sp)
55$:
	lw      $t0, 0x0028($sp)
	lw      $t1, 0x0078($t0)
	lw      $t3, 0x0180($t1)
	slti    $at, $t3, 0x0002
	bnez    $at, 63$
	nop
	li      $t2, 0x0001
	sh      $t2, 0x0020($sp)
63$:
	lh      $t4, 0x001E($sp)
	lw      $t5, 0x0028($sp)
	sh      $t4, 0x002E($t5)
	lh      $t6, 0x0022($sp)
	li      $at, 0x0002
	bne     $t6, $at, 115$
	nop
	lw      $t8, 0x0028($sp)
	li      $at, 0x41E00000
	mtc1    $at, $f6
	lwc1    $f4, 0x0054($t8)
	c.lt.s  $f4, $f6
	nop
	bc1f    81$
	nop
	lw      $a0, 0x0028($sp)
	jal     player_80251708
	li      $a1, 0x41E00000
81$:
	lw      $t7, 0x0028($sp)
	lw      $t9, 0x0078($t7)
	lwc1    $f8, 0x0040($t7)
	lwc1    $f10, 0x00A4($t9)
	c.le.s  $f10, $f8
	nop
	bc1f    103$
	nop
	lw      $t0, 0x0028($sp)
	li      $at, 0x41A00000
	mtc1    $at, $f18
	lwc1    $f16, 0x004C($t0)
	c.lt.s  $f16, $f18
	nop
	bc1f    101$
	nop
	li      $at, 0x41A00000
	mtc1    $at, $f4
	lw      $t1, 0x0028($sp)
	swc1    $f4, 0x004C($t1)
101$:
	b       113$
	nop
103$:
	lw      $t3, 0x0028($sp)
	mtc1    $0, $f8
	lwc1    $f6, 0x004C($t3)
	c.lt.s  $f8, $f6
	nop
	bc1f    113$
	nop
	mtc1    $0, $f10
	lw      $t2, 0x0028($sp)
	swc1    $f10, 0x004C($t2)
113$:
	b       126$
	nop
115$:
	lw      $t4, 0x0028($sp)
	li      $at, 0x41800000
	mtc1    $at, $f18
	lwc1    $f16, 0x0054($t4)
	c.lt.s  $f16, $f18
	nop
	bc1f    126$
	nop
	lw      $a0, 0x0028($sp)
	jal     player_80251708
	li      $a1, 0x41800000
126$:
	lh      $t5, 0x001C($sp)
	slti    $at, $t5, -0x4000
	bnez    $at, 151$
	nop
	slti    $at, $t5, 0x4001
	beqz    $at, 151$
	nop
	lw      $t6, 0x0028($sp)
	li      $at, 0xBF800000
	mtc1    $at, $f6
	lwc1    $f4, 0x0054($t6)
	mul.s   $f8, $f4, $f6
	swc1    $f8, 0x0054($t6)
	lh      $t8, 0x0022($sp)
	lh      $t9, 0x0020($sp)
	lui     $t3, %hi(collision_8032DA6C)
	sll     $t7, $t8, 2
	subu    $t7, $t7, $t8
	sll     $t7, $t7, 2
	sll     $t0, $t9, 2
	addu    $t1, $t7, $t0
	addu    $t3, $t3, $t1
	lw      $t3, %lo(collision_8032DA6C)($t3)
	b       167$
	sw      $t3, 0x0024($sp)
151$:
	lw      $t2, 0x0028($sp)
	li      $at, 0x8000
	lh      $t4, 0x002E($t2)
	addu    $t5, $t4, $at
	sh      $t5, 0x002E($t2)
	lh      $t6, 0x0022($sp)
	lh      $t9, 0x0020($sp)
	lui     $t1, %hi(collision_8032DA48)
	sll     $t8, $t6, 2
	subu    $t8, $t8, $t6
	sll     $t8, $t8, 2
	sll     $t7, $t9, 2
	addu    $t0, $t8, $t7
	addu    $t1, $t1, $t0
	lw      $t1, %lo(collision_8032DA48)($t1)
	sw      $t1, 0x0024($sp)
167$:
	b       171$
	lw      $v0, 0x0024($sp)
	b       171$
	nop
171$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

collision_8024D578:
	addiu   $sp, $sp, -0x0040
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0040($sp)
	sw      $a1, 0x0044($sp)
	sw      $a2, 0x0048($sp)
	lw      $t7, 0x0040($sp)
	lw      $t6, 0x0044($sp)
	lwc1    $f10, 0x0048($sp)
	lw      $t8, 0x0088($t7)
	lwc1    $f4, 0x01F8($t6)
	lwc1    $f6, 0x01F8($t8)
	add.s   $f8, $f4, $f6
	add.s   $f16, $f8, $f10
	swc1    $f16, 0x003C($sp)
	lw      $t9, 0x0040($sp)
	lw      $t0, 0x0044($sp)
	lwc1    $f18, 0x003C($t9)
	lwc1    $f4, 0x00A0($t0)
	sub.s   $f6, $f18, $f4
	swc1    $f6, 0x0038($sp)
	lw      $t1, 0x0040($sp)
	lw      $t2, 0x0044($sp)
	lwc1    $f8, 0x0044($t1)
	lwc1    $f10, 0x00A8($t2)
	sub.s   $f16, $f8, $f10
	swc1    $f16, 0x0034($sp)
	lwc1    $f18, 0x0038($sp)
	lwc1    $f6, 0x0034($sp)
	mul.s   $f4, $f18, $f18
	nop
	mul.s   $f8, $f6, $f6
	jal     sqrtf
	add.s   $f12, $f4, $f8
	swc1    $f0, 0x0030($sp)
	lwc1    $f10, 0x0030($sp)
	lwc1    $f16, 0x003C($sp)
	c.lt.s  $f10, $f16
	nop
	bc1f    103$
	nop
	lwc1    $f18, 0x0030($sp)
	mtc1    $0, $f6
	nop
	c.eq.s  $f18, $f6
	nop
	bc1f    51$
	nop
	lw      $t3, 0x0040($sp)
	lh      $t4, 0x002E($t3)
	b       55$
	sh      $t4, 0x002A($sp)
51$:
	lwc1    $f12, 0x0034($sp)
	jal     ATAN2
	lwc1    $f14, 0x0038($sp)
	sh      $v0, 0x002A($sp)
55$:
	lhu     $t5, 0x002A($sp)
	lui     $at, %hi(math_sin)
	lwc1    $f8, 0x003C($sp)
	sra     $t6, $t5, 4
	sll     $t7, $t6, 2
	addu    $at, $at, $t7
	lwc1    $f4, %lo(math_sin)($at)
	lw      $t8, 0x0044($sp)
	mul.s   $f10, $f4, $f8
	lwc1    $f16, 0x00A0($t8)
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x0024($sp)
	lhu     $t9, 0x002A($sp)
	lui     $at, %hi(math_cos)
	lwc1    $f4, 0x003C($sp)
	sra     $t0, $t9, 4
	sll     $t1, $t0, 2
	addu    $at, $at, $t1
	lwc1    $f6, %lo(math_cos)($at)
	lw      $t2, 0x0044($sp)
	mul.s   $f8, $f6, $f4
	lwc1    $f10, 0x00A8($t2)
	add.s   $f16, $f8, $f10
	swc1    $f16, 0x0020($sp)
	li      $at, 0x42480000
	mtc1    $at, $f18
	lw      $a1, 0x0040($sp)
	addiu   $a0, $sp, 0x0024
	addiu   $a2, $sp, 0x0020
	li      $a3, 0x42700000
	addiu   $a1, $a1, 0x0040
	jal     bg_hit_wall
	swc1    $f18, 0x0010($sp)
	lw      $t3, 0x0040($sp)
	lwc1    $f12, 0x0024($sp)
	lw      $a2, 0x0020($sp)
	addiu   $a3, $sp, 0x002C
	jal     bg_check_ground
	lwc1    $f14, 0x0040($t3)
	lw      $t4, 0x002C($sp)
	beqz    $t4, 103$
	nop
	lwc1    $f6, 0x0024($sp)
	lw      $t5, 0x0040($sp)
	swc1    $f6, 0x003C($t5)
	lwc1    $f4, 0x0020($sp)
	lw      $t6, 0x0040($sp)
	swc1    $f4, 0x0044($t6)
103$:
	b       105$
	nop
105$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0040
	jr      $ra
	nop

collision_8024D72C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	lw      $t6, 0x001C($sp)
	andi    $t7, $t6, 0x000E
	beqz    $t7, 38$
	nop
	lw      $t8, 0x0018($sp)
	li.u    $at, 0x00800380
	li.l    $at, 0x00800380
	lw      $t9, 0x000C($t8)
	bne     $t9, $at, 18$
	nop
	lw      $t1, 0x0018($sp)
	li.u    $t0, 0x00800457
	li.l    $t0, 0x00800457
	sw      $t0, 0x000C($t1)
18$:
	lw      $t2, 0x0018($sp)
	lw      $t3, 0x000C($t2)
	andi    $t4, $t3, 0x0800
	beqz    $t4, 28$
	nop
	lw      $a0, 0x0018($sp)
	jal     player_80251708
	li      $a1, 0xC1800000
	b       31$
	nop
28$:
	lw      $a0, 0x0018($sp)
	jal     player_80251708
	li      $a1, 0xC2400000
31$:
	jal     camera_8027F590
	li      $a0, 0x0001
	lw      $t5, 0x0018($sp)
	li      $at, 0x00040000
	lw      $t6, 0x0008($t5)
	or      $t7, $t6, $at
	sw      $t7, 0x0008($t5)
38$:
	lw      $t8, 0x001C($sp)
	andi    $t9, $t8, 0x002E
	beqz    $t9, 48$
	nop
	lw      $t0, 0x0018($sp)
	li.u    $a0, 0x0444B081
	li.l    $a0, 0x0444B081
	lw      $a1, 0x0088($t0)
	jal     Na_SePlay
	addiu   $a1, $a1, 0x0054
48$:
	b       50$
	nop
50$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

collision_8024D804:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0030($sp)
	sw      $a1, 0x0034($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0034($sp)
	lw      $t7, 0x0030($sp)
	lwc1    $f4, 0x00A0($t6)
	lwc1    $f6, 0x003C($t7)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x002C($sp)
	lw      $t8, 0x0034($sp)
	lw      $t9, 0x0030($sp)
	lwc1    $f10, 0x00A8($t8)
	lwc1    $f16, 0x0044($t9)
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x0028($sp)
	lwc1    $f12, 0x0028($sp)
	jal     ATAN2
	lwc1    $f14, 0x002C($sp)
	lw      $t0, 0x0034($sp)
	lw      $t1, 0x00C8($t0)
	subu    $t2, $t1, $v0
	sh      $t2, 0x0026($sp)
	lh      $t3, 0x0026($sp)
	slti    $at, $t3, -0x4000
	bnez    $at, 33$
	nop
	slti    $at, $t3, 0x4001
	beqz    $at, 33$
	nop
	b       34$
	li      $s0, 0x0001
33$:
	li      $s0, 0x0002
34$:
	b       38$
	move    $v0, $s0
	b       38$
	nop
38$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

collision_8024D8B0:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lw      $t6, 0x0020($sp)
	lw      $t7, 0x0078($t6)
	lw      $t8, 0x0180($t7)
	sw      $t8, 0x0018($sp)
	lw      $t9, 0x0018($sp)
	slti    $at, $t9, 0x0004
	bnez    $at, 14$
	nop
	li      $t0, 0x0005
	b       23$
	sw      $t0, 0x001C($sp)
14$:
	lw      $t1, 0x0018($sp)
	slti    $at, $t1, 0x0002
	bnez    $at, 21$
	nop
	li      $t2, 0x0004
	b       23$
	sw      $t2, 0x001C($sp)
21$:
	li      $t3, 0x0003
	sw      $t3, 0x001C($sp)
23$:
	lw      $t4, 0x0020($sp)
	lw      $t5, 0x0004($t4)
	andi    $t6, $t5, 0x0010
	bnez    $t6, 36$
	nop
	lw      $t7, 0x0018($sp)
	addiu   $t8, $t7, 0x0001
	bgez    $t8, 34$
	sra     $t9, $t8, 1
	addiu   $at, $t8, 0x0001
	sra     $t9, $at, 1
34$:
	addu    $t0, $t7, $t9
	sw      $t0, 0x0018($sp)
36$:
	lw      $t1, 0x0020($sp)
	lw      $t2, 0x0004($t1)
	andi    $t3, $t2, 0x0004
	beqz    $t3, 42$
	nop
	sw      $0, 0x0018($sp)
42$:
	lw      $t4, 0x0020($sp)
	lw      $t6, 0x0018($sp)
	lbu     $t5, 0x00B2($t4)
	sll     $t8, $t6, 2
	addu    $t7, $t5, $t8
	sb      $t7, 0x00B2($t4)
	jal     camera_8027F590
	lw      $a0, 0x001C($sp)
	b       54$
	lw      $v0, 0x0018($sp)
	b       54$
	nop
54$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

collision_8024D998:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(collision_8033B272)
	lh      $t6, %lo(collision_8033B272)($t6)
	bnez    $t6, 60$
	nop
	lw      $t7, 0x0028($sp)
	lw      $t8, 0x0004($t7)
	andi    $t9, $t8, 0x0002
	bnez    $t9, 60$
	nop
	lw      $t0, 0x002C($sp)
	lw      $t1, 0x0190($t0)
	andi    $t2, $t1, 0x0002
	bnez    $t2, 60$
	nop
	lw      $t4, 0x002C($sp)
	li      $t3, 0xA000
	sw      $t3, 0x0134($t4)
	lw      $t5, 0x002C($sp)
	lw      $t6, 0x0028($sp)
	sw      $t5, 0x0078($t6)
	jal     collision_8024D8B0
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	lw      $t7, 0x002C($sp)
	lw      $t8, 0x0190($t7)
	andi    $t9, $t8, 0x0008
	beqz    $t9, 37$
	nop
	li      $at, 0x42200000
	mtc1    $at, $f4
	lw      $t0, 0x0028($sp)
	swc1    $f4, 0x0054($t0)
37$:
	lw      $t1, 0x002C($sp)
	lw      $t2, 0x0180($t1)
	blez    $t2, 47$
	nop
	lw      $t3, 0x0028($sp)
	li.u    $a0, 0x240AFF81
	li.l    $a0, 0x240AFF81
	lw      $a1, 0x0088($t3)
	jal     Na_SePlay
	addiu   $a1, $a1, 0x0054
47$:
	jal     player_802521A0
	lw      $a0, 0x0028($sp)
	lw      $t4, 0x002C($sp)
	lw      $a0, 0x0028($sp)
	jal     collision_8024D2BC
	lw      $a1, 0x0180($t4)
	move    $s0, $v0
	move    $a1, $s0
	lw      $a0, 0x0028($sp)
	jal     player_80253178
	lw      $a2, 0x0024($sp)
	b       64$
	nop
60$:
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

collision_8024DAAC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	li.u    $at, 0x01000889
	li.l    $at, 0x01000889
	lw      $t7, 0x000C($t6)
	beq     $t7, $at, 17$
	nop
	li.u    $at, 0x00880898
	li.l    $at, 0x00880898
	beq     $t7, $at, 17$
	nop
	li.u    $at, 0x10880899
	li.l    $at, 0x10880899
	bne     $t7, $at, 26$
	nop
17$:
	lw      $t8, 0x0018($sp)
	li      $a2, 0x0001
	lw      $t9, 0x0090($t8)
	lw      $t0, 0x0024($t9)
	move    $a0, $t0
	jal     camera_80286188
	lbu     $a1, 0x0001($t0)
	lw      $t1, 0x0018($sp)
	sh      $0, 0x002C($t1)
26$:
	b       28$
	nop
28$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl collision_8024DB2C
collision_8024DB2C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	sw      $a2, 0x0020($sp)
	lw      $t6, 0x0018($sp)
	lw      $t8, 0x0020($sp)
	lh      $t7, 0x00A8($t6)
	lw      $t9, 0x0180($t8)
	addu    $t0, $t7, $t9
	sh      $t0, 0x00A8($t6)
	lw      $t3, 0x0020($sp)
	lw      $t1, 0x0018($sp)
	lw      $t4, 0x0180($t3)
	lbu     $t2, 0x00B3($t1)
	sll     $t5, $t4, 2
	addu    $t8, $t2, $t5
	sb      $t8, 0x00B3($t1)
	lw      $t9, 0x0020($sp)
	li      $t7, 0x8000
	sw      $t7, 0x0134($t9)
	lui     $t0, %hi(course_index)
	lh      $t0, %lo(course_index)($t0)
	blez    $t0, 41$
	nop
	slti    $at, $t0, 0x0010
	beqz    $at, 41$
	nop
	lw      $t6, 0x0018($sp)
	lw      $t4, 0x0020($sp)
	lh      $t3, 0x00A8($t6)
	lw      $t2, 0x0180($t4)
	subu    $t5, $t3, $t2
	slti    $at, $t5, 0x0064
	beqz    $at, 41$
	nop
	slti    $at, $t3, 0x0064
	bnez    $at, 41$
	nop
	jal     object_a_802AB558
	li      $a0, 0x0006
41$:
	b       45$
	move    $v0, $0
	b       45$
	nop
45$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl collision_8024DBF0
collision_8024DBF0:
	sw      $a1, 0x0004($sp)
	lw      $t7, 0x0180($a2)
	lbu     $t6, 0x00B3($a0)
	sll     $t8, $t7, 2
	addu    $t9, $t6, $t8
	sb      $t9, 0x00B3($a0)
	li      $t0, 0x8000
	sw      $t0, 0x0134($a2)
	b       12$
	move    $v0, $0
	b       12$
	nop
12$:
	jr      $ra
	nop

.globl collision_8024DC28
collision_8024DC28:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sw      $a2, 0x0030($sp)
	li      $t6, 0x1302
	sw      $t6, 0x0020($sp)
	lw      $t7, 0x0030($sp)
	lw      $t8, 0x0190($t7)
	andi    $t9, $t8, 0x0400
	sltu    $t0, $0, $t9
	sw      $t0, 0x001C($sp)
	lw      $t1, 0x0030($sp)
	lw      $t2, 0x0190($t1)
	andi    $t3, $t2, 0x0800
	sltu    $t4, $0, $t3
	sw      $t4, 0x0018($sp)
	lw      $t5, 0x0028($sp)
	lh      $t6, 0x00AE($t5)
	slti    $at, $t6, 0x0100
	bnez    $at, 129$
	nop
	jal     collision_8024C894
	lw      $a0, 0x0028($sp)
	lw      $t7, 0x001C($sp)
	bnez    $t7, 39$
	nop
	lw      $t8, 0x0028($sp)
	sb      $0, 0x00B2($t8)
	lw      $t9, 0x0028($sp)
	sb      $0, 0x00B3($t9)
	lw      $t0, 0x0028($sp)
	lhu     $t1, 0x00B6($t0)
	slti    $at, $t1, 0x0002
	bnez    $at, 39$
	nop
	lw      $t3, 0x0028($sp)
	li      $t2, 0x0001
	sh      $t2, 0x00B6($t3)
39$:
	lw      $t4, 0x001C($sp)
	beqz    $t4, 44$
	nop
	li      $t5, 0x1307
	sw      $t5, 0x0020($sp)
44$:
	lw      $t6, 0x0028($sp)
	lw      $t7, 0x000C($t6)
	andi    $t8, $t7, 0x2000
	beqz    $t8, 51$
	nop
	li      $t9, 0x1303
	sw      $t9, 0x0020($sp)
51$:
	lw      $t0, 0x0028($sp)
	lw      $t1, 0x000C($t0)
	andi    $t2, $t1, 0x4000
	beqz    $t2, 58$
	nop
	li      $t3, 0x1303
	sw      $t3, 0x0020($sp)
58$:
	lw      $t4, 0x0028($sp)
	lw      $t5, 0x000C($t4)
	andi    $t6, $t5, 0x0800
	beqz    $t6, 65$
	nop
	li      $t7, 0x1904
	sw      $t7, 0x0020($sp)
65$:
	la.u    $a2, o_130038B0
	la.l    $a2, o_130038B0
	lw      $a0, 0x0030($sp)
	jal     obj_make_here
	move    $a1, $0
	lw      $t9, 0x0030($sp)
	li      $t8, 0x8000
	sw      $t8, 0x0134($t9)
	lw      $t0, 0x0030($sp)
	lw      $t1, 0x0028($sp)
	sw      $t0, 0x0078($t1)
	lw      $t2, 0x0030($sp)
	lw      $t3, 0x0028($sp)
	sw      $t2, 0x0080($t3)
	lw      $t4, 0x0030($sp)
	lw      $t5, 0x0188($t4)
	sra     $t6, $t5, 24
	andi    $t7, $t6, 0x001F
	sw      $t7, 0x0024($sp)
	lw      $t8, 0x0028($sp)
	lw      $a1, 0x0024($sp)
	jal     save_set
	lh      $a0, 0x00A8($t8)
	lui     $a0, %hi(file_index)
	lh      $a0, %lo(file_index)($a0)
	move    $a1, $0
	li      $a2, 0x0018
	jal     save_file_star_range
	addiu   $a0, $a0, -0x0001
	lw      $t9, 0x0028($sp)
	sh      $v0, 0x00AA($t9)
	lw      $t0, 0x001C($sp)
	bnez    $t0, 103$
	nop
	jal     Na_game_80321D38
	nop
	jal     bgm_fadeout
	li      $a0, 0x007E
103$:
	lw      $t1, 0x0028($sp)
	li.u    $a0, 0x701EFF81
	li.l    $a0, 0x701EFF81
	lw      $a1, 0x0088($t1)
	jal     Na_SePlay
	addiu   $a1, $a1, 0x0054
	jal     player_802521A0
	lw      $a0, 0x0028($sp)
	lw      $t2, 0x0018($sp)
	beqz    $t2, 120$
	nop
	lw      $a0, 0x0028($sp)
	li      $a1, 0x1909
	jal     pl_set_state
	move    $a2, $0
	b       133$
	nop
120$:
	lw      $t3, 0x0018($sp)
	lw      $t5, 0x001C($sp)
	lw      $a0, 0x0028($sp)
	sll     $t4, $t3, 1
	lw      $a1, 0x0020($sp)
	jal     pl_set_state
	addu    $a2, $t4, $t5
	b       133$
	nop
129$:
	b       133$
	move    $v0, $0
	b       133$
	nop
133$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl collision_8024DE4C
collision_8024DE4C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	sw      $a2, 0x0020($sp)
	lw      $t6, 0x0018($sp)
	li      $at, 0x1535
	lw      $t7, 0x000C($t6)
	beq     $t7, $at, 41$
	nop
	li      $at, 0x1934
	beq     $t7, $at, 41$
	nop
	jal     collision_8024C894
	lw      $a0, 0x0018($sp)
	lw      $t9, 0x0020($sp)
	li      $t8, 0x8000
	sw      $t8, 0x0134($t9)
	lw      $t0, 0x0020($sp)
	lw      $t1, 0x0018($sp)
	sw      $t0, 0x0078($t1)
	lw      $t2, 0x0020($sp)
	lw      $t3, 0x0018($sp)
	sw      $t2, 0x0080($t3)
	lw      $t4, 0x0018($sp)
	lw      $t5, 0x000C($t4)
	andi    $t6, $t5, 0x0800
	beqz    $t6, 35$
	nop
	lw      $a0, 0x0018($sp)
	li      $a1, 0x1535
	jal     pl_set_state
	move    $a2, $0
	b       45$
	nop
35$:
	lw      $a0, 0x0018($sp)
	li      $a1, 0x1934
	jal     pl_set_state
	move    $a2, $0
	b       45$
	nop
41$:
	b       45$
	move    $v0, $0
	b       45$
	nop
45$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl collision_8024DF10
collision_8024DF10:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sw      $a2, 0x0030($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0030($sp)
	lw      $t7, 0x0190($t6)
	andi    $t8, $t7, 0x0001
	beqz    $t8, 60$
	nop
	lw      $t9, 0x0028($sp)
	lw      $t0, 0x000C($t9)
	sw      $t0, 0x0024($sp)
	lw      $t1, 0x0024($sp)
	li      $at, 0x1337
	bne     $t1, $at, 22$
	nop
	li      $t2, 0x0001
	lui     $at, %hi(collision_8032DA94)
	b       58$
	sb      $t2, %lo(collision_8032DA94)($at)
22$:
	lui     $t3, %hi(collision_8032DA94)
	lbu     $t3, %lo(collision_8032DA94)($t3)
	bnez    $t3, 58$
	nop
	lw      $t4, 0x0024($sp)
	li.u    $at, 0x0C400201
	li.l    $at, 0x0C400201
	beq     $t4, $at, 43$
	nop
	li.u    $at, 0x0C400205
	li.l    $at, 0x0C400205
	beq     $t4, $at, 43$
	nop
	li.u    $at, 0x0C400209
	li.l    $at, 0x0C400209
	beq     $t4, $at, 43$
	nop
	li.u    $at, 0x0C008220
	li.l    $at, 0x0C008220
	bne     $t4, $at, 58$
	nop
43$:
	lw      $t5, 0x0030($sp)
	lw      $t6, 0x0028($sp)
	sw      $t5, 0x0078($t6)
	lw      $t7, 0x0030($sp)
	lw      $t8, 0x0028($sp)
	sw      $t7, 0x0080($t8)
	li      $t9, 0x0001
	lui     $at, %hi(collision_8032DA94)
	sb      $t9, %lo(collision_8032DA94)($at)
	lw      $a0, 0x0028($sp)
	li      $a1, 0x1336
	jal     pl_set_state
	move    $a2, $0
	b       104$
	nop
58$:
	b       100$
	nop
60$:
	lw      $t0, 0x0028($sp)
	li      $at, 0x1923
	lw      $t1, 0x000C($t0)
	beq     $t1, $at, 100$
	nop
	lw      $t3, 0x0030($sp)
	li      $t2, 0x8000
	sw      $t2, 0x0134($t3)
	lw      $t4, 0x0030($sp)
	lw      $t5, 0x0028($sp)
	sw      $t4, 0x0078($t5)
	lw      $t6, 0x0030($sp)
	lw      $t7, 0x0028($sp)
	sw      $t6, 0x0080($t7)
	la.u    $a0, map_pipe
	jal     segment_to_virtual
	la.l    $a0, map_pipe
	lw      $t8, 0x0030($sp)
	lw      $t9, 0x0218($t8)
	bne     $v0, $t9, 84$
	nop
	li.u    $s0, 0x7016A081
	b       86$
	li.l    $s0, 0x7016A081
84$:
	li.u    $s0, 0x71198081
	li.l    $s0, 0x71198081
86$:
	lw      $t0, 0x0028($sp)
	move    $a0, $s0
	lw      $a1, 0x0088($t0)
	jal     Na_SePlay
	addiu   $a1, $a1, 0x0054
	jal     collision_8024C618
	lw      $a0, 0x0028($sp)
	li.u    $a2, 0x00040002
	li.l    $a2, 0x00040002
	lw      $a0, 0x0028($sp)
	jal     pl_set_state
	li      $a1, 0x1300
	b       104$
	nop
100$:
	b       104$
	move    $v0, $0
	b       104$
	nop
104$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl collision_8024E0C4
collision_8024E0C4:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0038($sp)
	sw      $a1, 0x003C($sp)
	sw      $a2, 0x0040($sp)
	sw      $s0, 0x0018($sp)
	sw      $0, 0x0034($sp)
	jal     save_get_flag
	nop
	sw      $v0, 0x0030($sp)
	lw      $t6, 0x0040($sp)
	lw      $t7, 0x0188($t6)
	sra     $t8, $t7, 24
	sh      $t8, 0x002E($sp)
	lw      $t9, 0x0038($sp)
	li.u    $at, 0x04000440
	li.l    $at, 0x04000440
	lw      $t0, 0x000C($t9)
	beq     $t0, $at, 24$
	nop
	li.u    $at, 0x0400044A
	li.l    $at, 0x0400044A
	bne     $t0, $at, 133$
	nop
24$:
	lh      $t1, 0x002E($sp)
	li      $at, 0x0001
	bne     $t1, $at, 59$
	nop
	lw      $t2, 0x0030($sp)
	andi    $t3, $t2, 0x0080
	bnez    $t3, 59$
	nop
	lw      $t4, 0x0030($sp)
	andi    $t5, $t4, 0x0020
	bnez    $t5, 57$
	nop
	lui     $t6, %hi(collision_8032DA90)
	lbu     $t6, %lo(collision_8032DA90)($t6)
	bnez    $t6, 52$
	nop
	lw      $t7, 0x0030($sp)
	andi    $t8, $t7, 0x0010
	beqz    $t8, 46$
	nop
	b       47$
	li      $s0, 0x0017
46$:
	li      $s0, 0x0016
47$:
	li.u    $a1, 0x20001305
	li.l    $a1, 0x20001305
	lw      $a0, 0x0038($sp)
	jal     pl_set_state
	move    $a2, $s0
52$:
	li      $t9, 0x0001
	lui     $at, %hi(collision_8032DA90)
	sb      $t9, %lo(collision_8032DA90)($at)
	b       137$
	move    $v0, $0
57$:
	li      $t0, 0x132E
	sw      $t0, 0x0034($sp)
59$:
	lh      $t1, 0x002E($sp)
	li      $at, 0x0002
	bne     $t1, $at, 94$
	nop
	lw      $t2, 0x0030($sp)
	andi    $t3, $t2, 0x0040
	bnez    $t3, 94$
	nop
	lw      $t4, 0x0030($sp)
	andi    $t5, $t4, 0x0010
	bnez    $t5, 92$
	nop
	lui     $t6, %hi(collision_8032DA90)
	lbu     $t6, %lo(collision_8032DA90)($t6)
	bnez    $t6, 87$
	nop
	lw      $t7, 0x0030($sp)
	andi    $t8, $t7, 0x0020
	beqz    $t8, 81$
	nop
	b       82$
	li      $s0, 0x0017
81$:
	li      $s0, 0x0016
82$:
	li.u    $a1, 0x20001305
	li.l    $a1, 0x20001305
	lw      $a0, 0x0038($sp)
	jal     pl_set_state
	move    $a2, $s0
87$:
	li      $t9, 0x0001
	lui     $at, %hi(collision_8032DA90)
	sb      $t9, %lo(collision_8032DA90)($at)
	b       137$
	move    $v0, $0
92$:
	li      $t0, 0x132E
	sw      $t0, 0x0034($sp)
94$:
	lw      $t1, 0x0038($sp)
	li.u    $at, 0x04000440
	li.l    $at, 0x04000440
	lw      $t2, 0x000C($t1)
	beq     $t2, $at, 104$
	nop
	li.u    $at, 0x0400044A
	li.l    $at, 0x0400044A
	bne     $t2, $at, 133$
	nop
104$:
	lw      $a0, 0x0038($sp)
	jal     collision_8024D804
	lw      $a1, 0x0040($sp)
	addiu   $t3, $v0, 0x0004
	sw      $t3, 0x0028($sp)
	lw      $t4, 0x0034($sp)
	bnez    $t4, 121$
	nop
	lw      $t5, 0x0028($sp)
	andi    $t6, $t5, 0x0001
	beqz    $t6, 119$
	nop
	li      $t7, 0x1320
	b       121$
	sw      $t7, 0x0034($sp)
119$:
	li      $t8, 0x1321
	sw      $t8, 0x0034($sp)
121$:
	lw      $t9, 0x0040($sp)
	lw      $t0, 0x0038($sp)
	sw      $t9, 0x0078($t0)
	lw      $t1, 0x0040($sp)
	lw      $t2, 0x0038($sp)
	sw      $t1, 0x0080($t2)
	lw      $a0, 0x0038($sp)
	lw      $a1, 0x0034($sp)
	jal     pl_set_state
	lw      $a2, 0x0028($sp)
	b       137$
	nop
133$:
	b       137$
	move    $v0, $0
	b       137$
	nop
137$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

.globl collision_8024E2FC
collision_8024E2FC:
	addiu   $sp, $sp, -0x0010
	sw      $0, 0x000C($sp)
	lw      $t6, 0x0188($a0)
	sra     $t7, $t6, 24
	sh      $t7, 0x000A($sp)
	lwc1    $f4, 0x00A0($a0)
	mtc1    $0, $f6
	move    $t8, $0
	c.lt.s  $f4, $f6
	nop
	bc1f    13$
	nop
	li      $t8, 0x0001
13$:
	sh      $t8, 0x0008($sp)
	li      $at, 0x43FA0000
	mtc1    $at, $f10
	lwc1    $f8, 0x00A4($a0)
	move    $t9, $0
	c.lt.s  $f10, $f8
	nop
	bc1f    23$
	nop
	li      $t9, 0x0001
23$:
	sh      $t9, 0x0006($sp)
	lh      $t0, 0x000A($sp)
	addiu   $t1, $t0, -0x0001
	sltiu   $at, $t1, 0x0032
	beqz    $at, L8024E408
	nop
	sll     $t1, $t1, 2
	lui     $at, %hi(collision_80336230)
	addu    $at, $at, $t1
	lw      $t1, %lo(collision_80336230)($at)
	jr      $t1
	nop
.globl L8024E388
L8024E388:
	lh      $t2, 0x0006($sp)
	beqz    $t2, 41$
	nop
	li      $t3, 0x0400
	b       43$
	sw      $t3, 0x000C($sp)
41$:
	li      $t4, 0x0800
	sw      $t4, 0x000C($sp)
43$:
	b       L8024E408
	nop
.globl L8024E3B0
L8024E3B0:
	lh      $t5, 0x0008($sp)
	beqz    $t5, 51$
	nop
	li      $t6, 0x1000
	b       53$
	sw      $t6, 0x000C($sp)
51$:
	li      $t7, 0x2000
	sw      $t7, 0x000C($sp)
53$:
	b       L8024E408
	nop
.globl L8024E3D8
L8024E3D8:
	li      $t8, 0x4000
	sw      $t8, 0x000C($sp)
	b       L8024E408
	nop
.globl L8024E3E8
L8024E3E8:
	li      $t9, 0x8000
	sw      $t9, 0x000C($sp)
	b       L8024E408
	nop
.globl L8024E3F8
L8024E3F8:
	li      $t0, 0x00100000
	sw      $t0, 0x000C($sp)
	b       L8024E408
	nop
.globl L8024E408
L8024E408:
	b       71$
	lw      $v0, 0x000C($sp)
	b       71$
	nop
71$:
	jr      $ra
	addiu   $sp, $sp, 0x0010

.globl collision_8024E420
collision_8024E420:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0038($sp)
	sw      $a1, 0x003C($sp)
	sw      $a2, 0x0040($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0040($sp)
	lw      $t7, 0x0188($t6)
	sra     $t8, $t7, 24
	sh      $t8, 0x0036($sp)
	lui     $a0, %hi(file_index)
	lh      $a0, %lo(file_index)($a0)
	move    $a1, $0
	li      $a2, 0x0018
	jal     save_file_star_range
	addiu   $a0, $a0, -0x0001
	sh      $v0, 0x0034($sp)
	lw      $t9, 0x0038($sp)
	li.u    $at, 0x04000440
	li.l    $at, 0x04000440
	lw      $t0, 0x000C($t9)
	beq     $t0, $at, 27$
	nop
	li.u    $at, 0x0400044A
	li.l    $at, 0x0400044A
	bne     $t0, $at, 139$
	nop
27$:
	lh      $t1, 0x0034($sp)
	lh      $t2, 0x0036($sp)
	slt     $at, $t1, $t2
	bnez    $at, 80$
	nop
	lw      $a0, 0x0038($sp)
	jal     collision_8024D804
	lw      $a1, 0x0040($sp)
	sw      $v0, 0x0030($sp)
	lw      $t3, 0x0030($sp)
	andi    $t4, $t3, 0x0001
	beqz    $t4, 43$
	nop
	li      $t5, 0x1320
	b       45$
	sw      $t5, 0x002C($sp)
43$:
	li      $t6, 0x1321
	sw      $t6, 0x002C($sp)
45$:
	jal     collision_8024E2FC
	lw      $a0, 0x0040($sp)
	sw      $v0, 0x0028($sp)
	lw      $t7, 0x0040($sp)
	lw      $t8, 0x0038($sp)
	sw      $t7, 0x0078($t8)
	lw      $t9, 0x0040($sp)
	lw      $t0, 0x0038($sp)
	sw      $t9, 0x0080($t0)
	lw      $t1, 0x0040($sp)
	lw      $t2, 0x0190($t1)
	andi    $t3, $t2, 0x0020
	beqz    $t3, 61$
	nop
	li      $t4, 0x1331
	sw      $t4, 0x002C($sp)
61$:
	lw      $t5, 0x0028($sp)
	beqz    $t5, 72$
	nop
	jal     save_get_flag
	nop
	lw      $t6, 0x0028($sp)
	and     $t7, $v0, $t6
	bnez    $t7, 72$
	nop
	li      $t8, 0x132F
	sw      $t8, 0x002C($sp)
72$:
	lw      $a0, 0x0038($sp)
	lw      $a1, 0x002C($sp)
	jal     pl_set_state
	lw      $a2, 0x0030($sp)
	b       174$
	nop
	b       137$
	nop
80$:
	lui     $t9, %hi(collision_8032DA90)
	lbu     $t9, %lo(collision_8032DA90)($t9)
	bnez    $t9, 137$
	nop
	li      $t0, 0x00160000
	sw      $t0, 0x0024($sp)
	lh      $t1, 0x0036($sp)
	addiu   $t2, $t1, -0x0001
	sltiu   $at, $t2, 0x0046
	beqz    $at, L8024E604
	nop
	sll     $t2, $t2, 2
	lui     $at, %hi(collision_803362F8)
	addu    $at, $at, $t2
	lw      $t2, %lo(collision_803362F8)($at)
	jr      $t2
	nop
.globl L8024E5A4
L8024E5A4:
	li      $t3, 0x00180000
	sw      $t3, 0x0024($sp)
	b       L8024E604
	nop
.globl L8024E5B4
L8024E5B4:
	li      $t4, 0x00190000
	sw      $t4, 0x0024($sp)
	b       L8024E604
	nop
.globl L8024E5C4
L8024E5C4:
	li      $t5, 0x001A0000
	sw      $t5, 0x0024($sp)
	b       L8024E604
	nop
.globl L8024E5D4
L8024E5D4:
	li      $t6, 0x001B0000
	sw      $t6, 0x0024($sp)
	b       L8024E604
	nop
.globl L8024E5E4
L8024E5E4:
	li      $t7, 0x001C0000
	sw      $t7, 0x0024($sp)
	b       L8024E604
	nop
.globl L8024E5F4
L8024E5F4:
	li      $t8, 0x001D0000
	sw      $t8, 0x0024($sp)
	b       L8024E604
	nop
.globl L8024E604
L8024E604:
	lh      $t9, 0x0036($sp)
	lh      $t0, 0x0034($sp)
	lw      $t2, 0x0024($sp)
	subu    $t1, $t9, $t0
	addu    $t3, $t2, $t1
	sw      $t3, 0x0024($sp)
	li      $t4, 0x0001
	lui     $at, %hi(collision_8032DA90)
	sb      $t4, %lo(collision_8032DA90)($at)
	li.u    $a1, 0x20001305
	li.l    $a1, 0x20001305
	lw      $a0, 0x0038($sp)
	jal     pl_set_state
	lw      $a2, 0x0024($sp)
	b       174$
	nop
137$:
	b       170$
	nop
139$:
	lw      $t5, 0x0038($sp)
	li.u    $at, 0x0C400201
	li.l    $at, 0x0C400201
	lw      $t6, 0x000C($t5)
	bne     $t6, $at, 170$
	nop
	lui     $t7, %hi(collision_8032DA90)
	lbu     $t7, %lo(collision_8032DA90)($t7)
	li      $at, 0x0001
	bne     $t7, $at, 170$
	nop
	lh      $t8, 0x0036($sp)
	li      $at, 0x0046
	bne     $t8, $at, 170$
	nop
	lw      $t9, 0x0040($sp)
	lw      $t0, 0x0038($sp)
	sw      $t9, 0x0078($t0)
	lw      $t2, 0x0040($sp)
	lw      $t1, 0x0038($sp)
	sw      $t2, 0x0080($t1)
	lw      $a0, 0x0038($sp)
	jal     collision_8024D804
	lw      $a1, 0x0040($sp)
	move    $s0, $v0
	move    $a2, $s0
	lw      $a0, 0x0038($sp)
	jal     pl_set_state
	li      $a1, 0x1331
	b       174$
	nop
170$:
	b       174$
	move    $v0, $0
	b       174$
	nop
174$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

.globl collision_8024E6EC
collision_8024E6EC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	sw      $a2, 0x0020($sp)
	lw      $t6, 0x0018($sp)
	li      $at, 0x1371
	lw      $t7, 0x000C($t6)
	beq     $t7, $at, 27$
	nop
	jal     collision_8024C894
	lw      $a0, 0x0018($sp)
	lw      $t9, 0x0020($sp)
	li      $t8, 0x8000
	sw      $t8, 0x0134($t9)
	lw      $t0, 0x0020($sp)
	lw      $t1, 0x0018($sp)
	sw      $t0, 0x0078($t1)
	lw      $t2, 0x0020($sp)
	lw      $t3, 0x0018($sp)
	sw      $t2, 0x0080($t3)
	lw      $a0, 0x0018($sp)
	li      $a1, 0x1371
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

.globl collision_8024E778
collision_8024E778:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	sw      $a2, 0x0020($sp)
	lw      $t6, 0x0020($sp)
	lw      $t7, 0x0018($sp)
	sw      $t6, 0x0078($t7)
	lw      $t8, 0x0020($sp)
	lw      $t9, 0x0018($sp)
	sw      $t8, 0x0080($t9)
	lw      $a0, 0x0018($sp)
	lw      $a1, 0x0020($sp)
	jal     collision_8024D578
	li      $a2, 0x40A00000
	b       19$
	move    $v0, $0
	b       19$
	nop
19$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl collision_8024E7D4
collision_8024E7D4:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	sw      $a2, 0x0028($sp)
	lw      $t6, 0x0020($sp)
	lw      $t7, 0x0088($t6)
	sw      $t7, 0x001C($sp)
	lw      $t8, 0x0020($sp)
	li.u    $at, 0x10020372
	li.l    $at, 0x10020372
	lw      $t9, 0x000C($t8)
	beq     $t9, $at, 63$
	nop
	li.u    $at, 0x00020339
	li.l    $at, 0x00020339
	beq     $t9, $at, 63$
	nop
	jal     collision_8024C894
	lw      $a0, 0x0020($sp)
	lw      $a0, 0x0020($sp)
	jal     player_80251708
	li      $a1, 0x0000
	jal     player_802521A0
	lw      $a0, 0x0020($sp)
	lw      $t1, 0x0028($sp)
	li      $t0, 0x8000
	sw      $t0, 0x0134($t1)
	lw      $t2, 0x0028($sp)
	lw      $t3, 0x0020($sp)
	sw      $t2, 0x0078($t3)
	lw      $t4, 0x0028($sp)
	lw      $t5, 0x0020($sp)
	sw      $t4, 0x0080($t5)
	lw      $t7, 0x001C($sp)
	li      $t6, 0x0400
	sw      $t6, 0x010C($t7)
	lw      $t8, 0x0020($sp)
	lw      $t9, 0x0028($sp)
	lw      $t0, 0x001C($sp)
	lwc1    $f4, 0x0040($t8)
	lwc1    $f6, 0x00A4($t9)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x0110($t0)
	lw      $t1, 0x0020($sp)
	li.u    $a0, 0x2410C081
	li.l    $a0, 0x2410C081
	lw      $a1, 0x0088($t1)
	jal     Na_SePlay
	addiu   $a1, $a1, 0x0054
	lw      $t2, 0x0020($sp)
	li.u    $at, 0x108008A4
	li.l    $at, 0x108008A4
	lw      $a2, 0x000C($t2)
	li.u    $a1, 0x10020372
	li.l    $a1, 0x10020372
	xor     $t3, $a2, $at
	sltiu   $t3, $t3, 0x0001
	move    $a2, $t3
	jal     pl_set_state
	move    $a0, $t2
	b       67$
	nop
63$:
	b       67$
	move    $v0, $0
	b       67$
	nop
67$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl collision_8024E8F0
collision_8024E8F0:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	sw      $a2, 0x0028($sp)
	lw      $t6, 0x0020($sp)
	lw      $t7, 0x0088($t6)
	sw      $t7, 0x001C($sp)
	lw      $t8, 0x0020($sp)
	li.u    $at, 0x300222E3
	li.l    $at, 0x300222E3
	lw      $t9, 0x000C($t8)
	beq     $t9, $at, 48$
	nop
	jal     collision_8024C894
	lw      $a0, 0x0020($sp)
	lw      $t1, 0x0028($sp)
	li      $t0, 0x8000
	sw      $t0, 0x0134($t1)
	lw      $t2, 0x0028($sp)
	lw      $t3, 0x0020($sp)
	sw      $t2, 0x0078($t3)
	lw      $t4, 0x0028($sp)
	lw      $t5, 0x0020($sp)
	sw      $t4, 0x0080($t5)
	mtc1    $0, $f4
	lw      $t6, 0x0020($sp)
	swc1    $f4, 0x0054($t6)
	lw      $t7, 0x0020($sp)
	lw      $t8, 0x0028($sp)
	lw      $t9, 0x001C($sp)
	lwc1    $f6, 0x0040($t7)
	lwc1    $f8, 0x00A4($t8)
	sub.s   $f10, $f6, $f8
	swc1    $f10, 0x0110($t9)
	lw      $t0, 0x0020($sp)
	li.u    $a0, 0x2410C081
	li.l    $a0, 0x2410C081
	lw      $a1, 0x0088($t0)
	jal     Na_SePlay
	addiu   $a1, $a1, 0x0054
	li.u    $a1, 0x300222E3
	li.l    $a1, 0x300222E3
	lw      $a0, 0x0020($sp)
	jal     pl_set_state
	move    $a2, $0
	b       52$
	nop
48$:
	b       52$
	move    $v0, $0
	b       52$
	nop
52$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl collision_8024E9D0
collision_8024E9D0:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	sw      $a2, 0x0028($sp)
	lw      $t6, 0x0020($sp)
	lw      $t7, 0x0088($t6)
	sw      $t7, 0x001C($sp)
	lw      $t8, 0x0020($sp)
	li.u    $at, 0x010208B8
	li.l    $at, 0x010208B8
	lw      $t9, 0x000C($t8)
	beq     $t9, $at, 58$
	nop
	jal     collision_8024C894
	lw      $a0, 0x0020($sp)
	lw      $t1, 0x0028($sp)
	li      $t0, 0x8000
	sw      $t0, 0x0134($t1)
	lw      $t2, 0x0028($sp)
	lw      $t3, 0x0020($sp)
	sw      $t2, 0x0078($t3)
	lw      $t4, 0x0028($sp)
	lw      $t5, 0x0020($sp)
	sw      $t4, 0x0080($t5)
	lw      $t6, 0x0028($sp)
	lw      $t9, 0x0020($sp)
	li      $at, 0x8000
	lw      $t7, 0x00C8($t6)
	addu    $t8, $t7, $at
	sh      $t8, 0x002E($t9)
	lui     $at, %hi(collision_80336410)
	lwc1    $f4, %lo(collision_80336410)($at)
	lw      $t0, 0x0020($sp)
	swc1    $f4, 0x00C4($t0)
	li      $at, 0xC1C00000
	mtc1    $at, $f6
	lw      $t1, 0x0020($sp)
	swc1    $f6, 0x0054($t1)
	li      $at, 0x41400000
	mtc1    $at, $f8
	lw      $t2, 0x0020($sp)
	swc1    $f8, 0x004C($t2)
	lw      $t3, 0x0020($sp)
	li.u    $a0, 0x2410C081
	li.l    $a0, 0x2410C081
	lw      $a1, 0x0088($t3)
	jal     Na_SePlay
	addiu   $a1, $a1, 0x0054
	jal     player_802521A0
	lw      $a0, 0x0020($sp)
	li.u    $a1, 0x010208B8
	li.l    $a1, 0x010208B8
	lw      $a0, 0x0020($sp)
	jal     pl_set_state
	move    $a2, $0
	b       62$
	nop
58$:
	b       62$
	move    $v0, $0
	b       62$
	nop
62$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl collision_8024EAD8
collision_8024EAD8:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	sw      $a2, 0x0028($sp)
	li.u    $t6, 0x010208B4
	li.l    $t6, 0x010208B4
	sw      $t6, 0x001C($sp)
	lui     $t7, %hi(collision_8033B272)
	lh      $t7, %lo(collision_8033B272)($t7)
	bnez    $t7, 87$
	nop
	lw      $t8, 0x0020($sp)
	lw      $t9, 0x0004($t8)
	andi    $t0, $t9, 0x0004
	bnez    $t0, 87$
	nop
	andi    $t1, $t9, 0x0002
	bnez    $t1, 87$
	nop
	lw      $t2, 0x0028($sp)
	lw      $t3, 0x0190($t2)
	andi    $t4, $t3, 0x0002
	bnez    $t4, 87$
	nop
	lw      $t6, 0x0028($sp)
	li      $t5, 0x8000
	sw      $t5, 0x0134($t6)
	lw      $t7, 0x0028($sp)
	lw      $t8, 0x0020($sp)
	sw      $t7, 0x0078($t8)
	lw      $t0, 0x0020($sp)
	lw      $t9, 0x000C($t0)
	andi    $t1, $t9, 0x6000
	bnez    $t1, 47$
	nop
	lh      $t2, 0x0076($t0)
	lwc1    $f8, 0x0040($t0)
	li      $at, 0x42480000
	mtc1    $t2, $f4
	mtc1    $at, $f16
	cvt.s.w $f6, $f4
	sub.s   $f10, $f6, $f8
	c.lt.s  $f16, $f10
	nop
	bc1f    55$
	nop
47$:
	lw      $t3, 0x0020($sp)
	li.u    $a0, 0x30038081
	li.l    $a0, 0x30038081
	lw      $a1, 0x0088($t3)
	jal     Na_SePlay
	addiu   $a1, $a1, 0x0054
	b       87$
	nop
55$:
	lw      $t4, 0x0020($sp)
	lw      $t5, 0x0088($t4)
	sw      $0, 0x0110($t5)
	jal     player_802521A0
	lw      $a0, 0x0020($sp)
	lw      $t6, 0x0020($sp)
	li.u    $a0, 0x2414A081
	li.l    $a0, 0x2414A081
	lw      $a1, 0x0088($t6)
	jal     Na_SePlay
	addiu   $a1, $a1, 0x0054
	lw      $t7, 0x0020($sp)
	lw      $t8, 0x000C($t7)
	andi    $t9, $t8, 0x0800
	beqz    $t9, 81$
	nop
	lwc1    $f18, 0x004C($t7)
	mtc1    $0, $f4
	nop
	c.le.s  $f18, $f4
	nop
	bc1f    81$
	nop
	li.u    $t1, 0x010208B5
	li.l    $t1, 0x010208B5
	sw      $t1, 0x001C($sp)
81$:
	lw      $a0, 0x0020($sp)
	lw      $a1, 0x001C($sp)
	jal     player_80253178
	li      $a2, 0x0001
	b       91$
	nop
87$:
	b       91$
	move    $v0, $0
	b       91$
	nop
91$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl collision_8024EC54
collision_8024EC54:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sw      $a2, 0x0030($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(collision_8033B272)
	lh      $t6, %lo(collision_8033B272)($t6)
	bnez    $t6, 59$
	nop
	lw      $t7, 0x0028($sp)
	lw      $t8, 0x0004($t7)
	andi    $t9, $t8, 0x0002
	bnez    $t9, 59$
	nop
	lw      $t0, 0x0028($sp)
	lw      $t1, 0x0004($t0)
	andi    $t2, $t1, 0x0004
	beqz    $t2, 31$
	nop
	lw      $t4, 0x0030($sp)
	li      $t3, 0xC000
	sw      $t3, 0x0134($t4)
	lw      $t5, 0x0028($sp)
	li.u    $a0, 0x0458A081
	li.l    $a0, 0x0458A081
	lw      $a1, 0x0088($t5)
	jal     Na_SePlay
	addiu   $a1, $a1, 0x0054
	b       59$
	nop
31$:
	lw      $t7, 0x0030($sp)
	li      $t6, 0xA000
	sw      $t6, 0x0134($t7)
	lw      $t8, 0x0030($sp)
	lw      $t9, 0x0028($sp)
	sw      $t8, 0x0078($t9)
	jal     collision_8024D8B0
	lw      $a0, 0x0028($sp)
	lw      $t0, 0x0028($sp)
	li.u    $a0, 0x240AFF81
	li.l    $a0, 0x240AFF81
	lw      $a1, 0x0088($t0)
	jal     Na_SePlay
	addiu   $a1, $a1, 0x0054
	jal     player_802521A0
	lw      $a0, 0x0028($sp)
	lw      $t1, 0x0030($sp)
	lw      $a0, 0x0028($sp)
	jal     collision_8024D2BC
	lw      $a1, 0x0180($t1)
	lw      $t2, 0x0030($sp)
	move    $s0, $v0
	move    $a1, $s0
	lw      $a0, 0x0028($sp)
	jal     player_80253178
	lw      $a2, 0x0180($t2)
	b       71$
	nop
59$:
	lw      $t3, 0x0030($sp)
	lw      $t4, 0x0190($t3)
	andi    $t5, $t4, 0x0002
	bnez    $t5, 67$
	nop
	li      $t6, 0x0001
	lui     $at, %hi(collision_8033B270)
	sb      $t6, %lo(collision_8033B270)($at)
67$:
	b       71$
	move    $v0, $0
	b       71$
	nop
71$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl collision_8024ED84
collision_8024ED84:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	sw      $a2, 0x0020($sp)
	lw      $t6, 0x0020($sp)
	lw      $t7, 0x0190($t6)
	andi    $t8, $t7, 0x2000
	beqz    $t8, 25$
	nop
	lw      $t0, 0x0020($sp)
	li      $t9, 0x8000
	sw      $t9, 0x0134($t0)
	lw      $t1, 0x0020($sp)
	lw      $t2, 0x0018($sp)
	sw      $t1, 0x0078($t2)
	li.u    $a1, 0x00021317
	li.l    $a1, 0x00021317
	lw      $a0, 0x0018($sp)
	jal     pl_set_state
	move    $a2, $0
	b       44$
	nop
	b       32$
	nop
25$:
	lw      $a0, 0x0018($sp)
	jal     collision_8024D998
	lw      $a1, 0x0020($sp)
	beqz    $v0, 32$
	nop
	b       44$
	li      $v0, 0x0001
32$:
	lw      $t3, 0x0020($sp)
	lw      $t4, 0x0190($t3)
	andi    $t5, $t4, 0x0002
	bnez    $t5, 40$
	nop
	li      $t6, 0x0001
	lui     $at, %hi(collision_8033B270)
	sb      $t6, %lo(collision_8033B270)($at)
40$:
	b       44$
	li      $v0, 0x0001
	b       44$
	nop
44$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl collision_8024EE44
collision_8024EE44:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0030($sp)
	sw      $a1, 0x0034($sp)
	sw      $a2, 0x0038($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0030($sp)
	lw      $t7, 0x0004($t6)
	andi    $t8, $t7, 0x0004
	beqz    $t8, 14$
	nop
	li      $t9, 0x0020
	b       18$
	sw      $t9, 0x0028($sp)
14$:
	lw      $a0, 0x0030($sp)
	jal     collision_8024C1D8
	lw      $a1, 0x0038($sp)
	sw      $v0, 0x0028($sp)
18$:
	lw      $t0, 0x0038($sp)
	lw      $t1, 0x0030($sp)
	sw      $t0, 0x0078($t1)
	lw      $t2, 0x0028($sp)
	andi    $t3, $t2, 0x007F
	beqz    $t3, 53$
	nop
	lw      $a0, 0x0030($sp)
	lw      $a1, 0x0038($sp)
	jal     collision_8024D578
	li      $a2, 0x40A00000
	li      $at, 0xC1800000
	mtc1    $at, $f4
	lw      $t4, 0x0030($sp)
	swc1    $f4, 0x0054($t4)
	lw      $t5, 0x0030($sp)
	lw      $t7, 0x0038($sp)
	lh      $t6, 0x002E($t5)
	sw      $t6, 0x00C8($t7)
	lw      $t8, 0x0038($sp)
	li      $at, 0x45540000
	mtc1    $at, $f6
	lwc1    $f8, 0x01F8($t8)
	div.s   $f10, $f6, $f8
	swc1    $f10, 0x00B8($t8)
	lw      $a0, 0x0038($sp)
	jal     collision_8024C51C
	lw      $a1, 0x0028($sp)
	lw      $a0, 0x0030($sp)
	jal     collision_8024D72C
	lw      $a1, 0x0028($sp)
	b       104$
	li      $v0, 0x0001
	b       100$
	nop
53$:
	lui     $t9, %hi(collision_8033B272)
	lh      $t9, %lo(collision_8033B272)($t9)
	bnez    $t9, 100$
	nop
	lw      $t0, 0x0030($sp)
	lw      $t1, 0x0004($t0)
	andi    $t2, $t1, 0x0002
	bnez    $t2, 100$
	nop
	lw      $t3, 0x0038($sp)
	lw      $t4, 0x0190($t3)
	andi    $t5, $t4, 0x0002
	bnez    $t5, 100$
	nop
	lw      $t7, 0x0038($sp)
	li      $t6, 0x8000
	sw      $t6, 0x0134($t7)
	lw      $t9, 0x0030($sp)
	li      $t8, 0x0002
	sh      $t8, 0x0026($t9)
	jal     player_802521A0
	lw      $a0, 0x0030($sp)
	lw      $t0, 0x0030($sp)
	li.u    $a0, 0x24098081
	li.l    $a0, 0x24098081
	lw      $a1, 0x0088($t0)
	jal     Na_SePlay
	addiu   $a1, $a1, 0x0054
	lw      $t1, 0x0030($sp)
	li.u    $a0, 0x50178081
	li.l    $a0, 0x50178081
	lw      $a1, 0x0088($t1)
	jal     Na_SePlay
	addiu   $a1, $a1, 0x0054
	lw      $a0, 0x0030($sp)
	lw      $a1, 0x0038($sp)
	jal     collision_8024D578
	li      $a2, 0x40A00000
	jal     collision_8024CE08
	lw      $a0, 0x0030($sp)
	move    $s0, $v0
	move    $a1, $s0
	lw      $a0, 0x0030($sp)
	jal     player_80253178
	move    $a2, $0
	b       104$
	li      $v0, 0x0001
100$:
	b       104$
	move    $v0, $0
	b       104$
	nop
104$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

.globl collision_8024EFF8
collision_8024EFF8:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	sw      $a2, 0x0028($sp)
	lui     $t6, %hi(collision_8033B272)
	lh      $t6, %lo(collision_8033B272)($t6)
	bnez    $t6, 63$
	nop
	lw      $t7, 0x0020($sp)
	lw      $t8, 0x0004($t7)
	andi    $t9, $t8, 0x0002
	bnez    $t9, 63$
	nop
	lw      $t0, 0x0028($sp)
	lw      $t1, 0x0190($t0)
	andi    $t2, $t1, 0x0002
	bnez    $t2, 63$
	nop
	lw      $t3, 0x0020($sp)
	li.u    $at, 0x00300800
	li.l    $at, 0x00300800
	lw      $t4, 0x000C($t3)
	and     $t5, $t4, $at
	sltiu   $t6, $t5, 0x0001
	sw      $t6, 0x001C($sp)
	lw      $t8, 0x0028($sp)
	li      $t7, 0xA000
	sw      $t7, 0x0134($t8)
	lw      $t9, 0x0028($sp)
	lw      $t0, 0x0020($sp)
	sw      $t9, 0x0078($t0)
	jal     collision_8024D8B0
	lw      $a0, 0x0020($sp)
	lw      $t1, 0x0020($sp)
	li.u    $a0, 0x240AFF81
	li.l    $a0, 0x240AFF81
	lw      $a1, 0x0088($t1)
	jal     Na_SePlay
	addiu   $a1, $a1, 0x0054
	lw      $t2, 0x0020($sp)
	lw      $t3, 0x000C($t2)
	andi    $t4, $t3, 0x6000
	beqz    $t4, 54$
	nop
	li.u    $a1, 0x300222C8
	li.l    $a1, 0x300222C8
	lw      $a0, 0x0020($sp)
	jal     player_80253178
	move    $a2, $0
	b       75$
	nop
	b       63$
	nop
54$:
	jal     player_802521A0
	lw      $a0, 0x0020($sp)
	li.u    $a1, 0x00020338
	li.l    $a1, 0x00020338
	lw      $a0, 0x0020($sp)
	jal     player_80253178
	lw      $a2, 0x001C($sp)
	b       75$
	nop
63$:
	lw      $t5, 0x0028($sp)
	lw      $t6, 0x0190($t5)
	andi    $t7, $t6, 0x0002
	bnez    $t7, 71$
	nop
	li      $t8, 0x0001
	lui     $at, %hi(collision_8033B270)
	sb      $t8, %lo(collision_8033B270)($at)
71$:
	b       75$
	move    $v0, $0
	b       75$
	nop
75$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

collision_8024F134:
	sw      $a0, 0x0000($sp)
	sw      $a1, 0x0004($sp)
	lw      $t6, 0x0190($a2)
	andi    $t7, $t6, 0x0002
	bnez    $t7, 9$
	nop
	li      $t8, 0x0001
	lui     $at, %hi(collision_8033B270)
	sb      $t8, %lo(collision_8033B270)($at)
9$:
	b       13$
	move    $v0, $0
	b       13$
	nop
13$:
	jr      $ra
	nop

.globl collision_8024F170
collision_8024F170:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	sw      $a2, 0x0020($sp)
	lw      $a0, 0x0018($sp)
	jal     collision_8024D998
	lw      $a1, 0x0020($sp)
	beqz    $v0, 12$
	nop
	b       24$
	li      $v0, 0x0001
12$:
	lw      $t6, 0x0020($sp)
	lw      $t7, 0x0190($t6)
	andi    $t8, $t7, 0x0002
	bnez    $t8, 20$
	nop
	li      $t9, 0x0001
	lui     $at, %hi(collision_8033B270)
	sb      $t9, %lo(collision_8033B270)($at)
20$:
	b       24$
	move    $v0, $0
	b       24$
	nop
24$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl collision_8024F1E0
collision_8024F1E0:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	sw      $a2, 0x0028($sp)
	lw      $t6, 0x0020($sp)
	lw      $t7, 0x0004($t6)
	andi    $t8, $t7, 0x0004
	beqz    $t8, 13$
	nop
	li      $t9, 0x0020
	b       17$
	sw      $t9, 0x0018($sp)
13$:
	lw      $a0, 0x0020($sp)
	jal     collision_8024C1D8
	lw      $a1, 0x0028($sp)
	sw      $v0, 0x0018($sp)
17$:
	lw      $t0, 0x0018($sp)
	andi    $t1, $t0, 0x00FF
	beqz    $t1, 70$
	nop
	lw      $a0, 0x0028($sp)
	jal     collision_8024C51C
	lw      $a1, 0x0018($sp)
	lw      $a0, 0x0020($sp)
	jal     collision_8024D72C
	lw      $a1, 0x0018($sp)
	lw      $t2, 0x0018($sp)
	andi    $t3, $t2, 0x0080
	beqz    $t3, 34$
	nop
	lw      $a0, 0x0020($sp)
	jal     collision_8024D130
	lw      $a1, 0x0028($sp)
34$:
	lw      $t4, 0x0018($sp)
	andi    $t5, $t4, 0x0040
	beqz    $t5, 68$
	nop
	lw      $t6, 0x0028($sp)
	lw      $t7, 0x0190($t6)
	andi    $t8, $t7, 0x0080
	beqz    $t8, 64$
	nop
	lw      $a0, 0x0020($sp)
	lw      $a1, 0x0028($sp)
	jal     collision_8024D0B4
	li      $a2, 0x42A00000
	jal     collision_8024DAAC
	lw      $a0, 0x0020($sp)
	lw      $t9, 0x0020($sp)
	li.u    $a0, 0x24348081
	li.l    $a0, 0x24348081
	lw      $a1, 0x0088($t9)
	jal     Na_SePlay
	addiu   $a1, $a1, 0x0054
	li.u    $a1, 0x108008A4
	li.l    $a1, 0x108008A4
	lw      $a0, 0x0020($sp)
	jal     player_80253178
	move    $a2, $0
	b       89$
	nop
	b       68$
	nop
64$:
	lw      $a0, 0x0020($sp)
	lw      $a1, 0x0028($sp)
	jal     collision_8024D0B4
	li      $a2, 0x41F00000
68$:
	b       77$
	nop
70$:
	lw      $a0, 0x0020($sp)
	jal     collision_8024D998
	lw      $a1, 0x0028($sp)
	beqz    $v0, 77$
	nop
	b       89$
	li      $v0, 0x0001
77$:
	lw      $t0, 0x0028($sp)
	lw      $t1, 0x0190($t0)
	andi    $t2, $t1, 0x0002
	bnez    $t2, 85$
	nop
	li      $t3, 0x0001
	lui     $at, %hi(collision_8033B270)
	sb      $t3, %lo(collision_8033B270)($at)
85$:
	b       89$
	move    $v0, $0
	b       89$
	nop
89$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl collision_8024F354
collision_8024F354:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	sw      $a2, 0x0028($sp)
	lw      $t6, 0x0020($sp)
	lw      $t7, 0x0004($t6)
	andi    $t8, $t7, 0x0004
	beqz    $t8, 13$
	nop
	li      $t9, 0x0020
	b       17$
	sw      $t9, 0x001C($sp)
13$:
	lw      $a0, 0x0020($sp)
	jal     collision_8024C1D8
	lw      $a1, 0x0028($sp)
	sw      $v0, 0x001C($sp)
17$:
	lw      $t0, 0x001C($sp)
	andi    $t1, $t0, 0x007F
	beqz    $t1, 63$
	nop
	lw      $a0, 0x0028($sp)
	jal     collision_8024C51C
	lw      $a1, 0x001C($sp)
	lw      $a0, 0x0020($sp)
	jal     collision_8024D72C
	lw      $a1, 0x001C($sp)
	lw      $t2, 0x001C($sp)
	andi    $t3, $t2, 0x0040
	beqz    $t3, 61$
	nop
	lw      $t4, 0x0028($sp)
	lw      $t5, 0x0190($t4)
	andi    $t6, $t5, 0x0080
	beqz    $t6, 57$
	nop
	lw      $a0, 0x0020($sp)
	lw      $a1, 0x0028($sp)
	jal     collision_8024D0B4
	li      $a2, 0x42A00000
	jal     collision_8024DAAC
	lw      $a0, 0x0020($sp)
	lw      $t7, 0x0020($sp)
	li.u    $a0, 0x24348081
	li.l    $a0, 0x24348081
	lw      $a1, 0x0088($t7)
	jal     Na_SePlay
	addiu   $a1, $a1, 0x0054
	li.u    $a1, 0x108008A4
	li.l    $a1, 0x108008A4
	lw      $a0, 0x0020($sp)
	jal     player_80253178
	move    $a2, $0
	b       82$
	nop
	b       61$
	nop
57$:
	lw      $a0, 0x0020($sp)
	lw      $a1, 0x0028($sp)
	jal     collision_8024D0B4
	li      $a2, 0x41F00000
61$:
	b       70$
	nop
63$:
	lw      $a0, 0x0020($sp)
	jal     collision_8024D998
	lw      $a1, 0x0028($sp)
	beqz    $v0, 70$
	nop
	b       82$
	li      $v0, 0x0001
70$:
	lw      $t8, 0x0028($sp)
	lw      $t9, 0x0190($t8)
	andi    $t0, $t9, 0x0002
	bnez    $t0, 78$
	nop
	li      $t1, 0x0001
	lui     $at, %hi(collision_8033B270)
	sb      $t1, %lo(collision_8033B270)($at)
78$:
	b       82$
	move    $v0, $0
	b       82$
	nop
82$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl collision_8024F4AC
collision_8024F4AC:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	sw      $a2, 0x0028($sp)
	lw      $a0, 0x0020($sp)
	jal     collision_8024C1D8
	lw      $a1, 0x0028($sp)
	sw      $v0, 0x001C($sp)
	lw      $t6, 0x001C($sp)
	andi    $t7, $t6, 0x0002
	beqz    $t7, 21$
	nop
	lw      $t9, 0x0028($sp)
	li      $t8, 0xC001
	sw      $t8, 0x0134($t9)
	lw      $a0, 0x0020($sp)
	jal     collision_8024D72C
	lw      $a1, 0x001C($sp)
	b       28$
	nop
21$:
	lw      $a0, 0x0020($sp)
	jal     collision_8024D998
	lw      $a1, 0x0028($sp)
	beqz    $v0, 28$
	nop
	b       40$
	li      $v0, 0x0001
28$:
	lw      $t0, 0x0028($sp)
	lw      $t1, 0x0190($t0)
	andi    $t2, $t1, 0x0002
	bnez    $t2, 36$
	nop
	li      $t3, 0x0001
	lui     $at, %hi(collision_8033B270)
	sb      $t3, %lo(collision_8033B270)($at)
36$:
	b       40$
	move    $v0, $0
	b       40$
	nop
40$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl collision_8024F55C
collision_8024F55C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	sw      $a2, 0x0020($sp)
	lw      $a0, 0x0018($sp)
	jal     collision_8024D998
	lw      $a1, 0x0020($sp)
	beqz    $v0, 12$
	nop
	b       24$
	li      $v0, 0x0001
12$:
	lw      $t6, 0x0020($sp)
	lw      $t7, 0x0190($t6)
	andi    $t8, $t7, 0x0002
	bnez    $t8, 20$
	nop
	li      $t9, 0x0001
	lui     $at, %hi(collision_8033B270)
	sb      $t9, %lo(collision_8033B270)($at)
20$:
	b       24$
	move    $v0, $0
	b       24$
	nop
24$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl collision_8024F5CC
collision_8024F5CC:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sw      $a2, 0x0030($sp)
	sw      $s0, 0x0018($sp)
	lw      $a0, 0x0028($sp)
	jal     collision_8024C1D8
	lw      $a1, 0x0030($sp)
	sw      $v0, 0x0024($sp)
	lw      $t6, 0x0024($sp)
	andi    $t7, $t6, 0x008F
	beqz    $t7, 45$
	nop
	lw      $a0, 0x0030($sp)
	jal     collision_8024C51C
	lw      $a1, 0x0024($sp)
	lw      $a0, 0x0028($sp)
	jal     collision_8024D72C
	lw      $a1, 0x0024($sp)
	lw      $t8, 0x0030($sp)
	lw      $t9, 0x0028($sp)
	sw      $t8, 0x0078($t9)
	lw      $s0, 0x0024($sp)
	li      $at, 0x0040
	beq     $s0, $at, 32$
	nop
	li      $at, 0x0080
	beq     $s0, $at, 38$
	nop
	b       43$
	nop
32$:
	lw      $a0, 0x0028($sp)
	lw      $a1, 0x0030($sp)
	jal     collision_8024D0B4
	li      $a2, 0x41F00000
	b       43$
	nop
38$:
	lw      $a0, 0x0028($sp)
	jal     collision_8024D130
	lw      $a1, 0x0030($sp)
	b       43$
	nop
43$:
	b       49$
	li      $v0, 0x0001
45$:
	b       49$
	move    $v0, $0
	b       49$
	nop
49$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl collision_8024F6A4
collision_8024F6A4:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	sw      $a2, 0x0028($sp)
	lw      $t6, 0x0020($sp)
	li      $at, 0x00010000
	lw      $t7, 0x000C($t6)
	and     $t8, $t7, $at
	bnez    $t8, 57$
	nop
	lw      $a0, 0x0020($sp)
	jal     collision_8024C1D8
	lw      $a1, 0x0028($sp)
	sw      $v0, 0x001C($sp)
	lw      $t9, 0x001C($sp)
	li      $at, 0x0040
	beq     $t9, $at, 28$
	nop
	lw      $t0, 0x0020($sp)
	li.u    $at, 0x04000440
	li.l    $at, 0x04000440
	lw      $t1, 0x000C($t0)
	beq     $t1, $at, 28$
	nop
	li      $at, 0x0442
	bne     $t1, $at, 53$
	nop
28$:
	lw      $t2, 0x0028($sp)
	lw      $t3, 0x0020($sp)
	sw      $t2, 0x0078($t3)
	lw      $t4, 0x0028($sp)
	lw      $t5, 0x0020($sp)
	sw      $t4, 0x0080($t5)
	lw      $t6, 0x0028($sp)
	lw      $t7, 0x0020($sp)
	sw      $t6, 0x0084($t7)
	lw      $a0, 0x0028($sp)
	jal     collision_8024C51C
	lw      $a1, 0x001C($sp)
	jal     player_802521A0
	lw      $a0, 0x0020($sp)
	jal     bgm_shell_play
	nop
	jal     collision_8024C6C0
	lw      $a0, 0x0020($sp)
	li.u    $a1, 0x20810446
	li.l    $a1, 0x20810446
	lw      $a0, 0x0020($sp)
	jal     pl_set_state
	move    $a2, $0
	b       61$
	nop
53$:
	lw      $a0, 0x0020($sp)
	lw      $a1, 0x0028($sp)
	jal     collision_8024D578
	li      $a2, 0x40000000
57$:
	b       61$
	move    $v0, $0
	b       61$
	nop
61$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

collision_8024F7A8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	sw      $a2, 0x0020($sp)
	lw      $t6, 0x0018($sp)
	li.u    $at, 0x00820800
	li.l    $at, 0x00820800
	lw      $t7, 0x000C($t6)
	and     $t8, $t7, $at
	beqz    $t8, 16$
	nop
	lui     $t9, %hi(collision_8033B272)
	lh      $t9, %lo(collision_8033B272)($t9)
	bnez    $t9, 57$
	nop
16$:
	lw      $t0, 0x0020($sp)
	lw      $t1, 0x0190($t0)
	andi    $t2, $t1, 0x0004
	beqz    $t2, 57$
	nop
	lw      $a0, 0x0018($sp)
	lw      $a1, 0x0020($sp)
	jal     collision_8024C0B8
	li      $a2, 0x2AAA
	beqz    $v0, 57$
	nop
	jal     collision_8024C894
	lw      $a0, 0x0018($sp)
	lw      $t4, 0x0020($sp)
	li      $t3, 0x8800
	sw      $t3, 0x0134($t4)
	lw      $t5, 0x0020($sp)
	lw      $t7, 0x0018($sp)
	lw      $t6, 0x00C8($t5)
	sh      $t6, 0x002E($t7)
	lw      $t8, 0x0020($sp)
	lw      $t9, 0x0018($sp)
	sw      $t8, 0x0078($t9)
	lw      $t0, 0x0020($sp)
	lw      $t1, 0x0018($sp)
	sw      $t0, 0x0080($t1)
	jal     player_802521A0
	lw      $a0, 0x0018($sp)
	lw      $t2, 0x0018($sp)
	li.u    $a0, 0x240B8081
	li.l    $a0, 0x240B8081
	lw      $a1, 0x0088($t2)
	jal     Na_SePlay
	addiu   $a1, $a1, 0x0054
	li.u    $a1, 0x00020370
	li.l    $a1, 0x00020370
	lw      $a0, 0x0018($sp)
	jal     pl_set_state
	move    $a2, $0
	b       65$
	nop
57$:
	lw      $a0, 0x0018($sp)
	lw      $a1, 0x0020($sp)
	jal     collision_8024D578
	li      $a2, 0xC0A00000
	b       65$
	move    $v0, $0
	b       65$
	nop
65$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl collision_8024F8BC
collision_8024F8BC:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sw      $a2, 0x0030($sp)
	lw      $t6, 0x0028($sp)
	lw      $t7, 0x000C($t6)
	andi    $t8, $t7, 0x01FF
	sw      $t8, 0x0024($sp)
	lw      $t9, 0x0024($sp)
	slti    $at, $t9, 0x0080
	bnez    $at, 97$
	nop
	slti    $at, $t9, 0x00A0
	beqz    $at, 97$
	nop
	lw      $t0, 0x0028($sp)
	li      $at, 0x00100000
	lw      $t1, 0x0010($t0)
	and     $t2, $t1, $at
	beqz    $t2, 26$
	nop
	lw      $t3, 0x0080($t0)
	lw      $t4, 0x0030($sp)
	beq     $t3, $t4, 97$
	nop
26$:
	lw      $t5, 0x0028($sp)
	li      $at, 0x41200000
	mtc1    $at, $f6
	lwc1    $f4, 0x0054($t5)
	move    $t6, $0
	c.le.s  $f4, $f6
	nop
	bc1f    36$
	nop
	li      $t6, 0x0001
36$:
	sw      $t6, 0x0020($sp)
	lw      $t7, 0x0028($sp)
	lw      $t8, 0x0088($t7)
	sw      $t8, 0x001C($sp)
	jal     collision_8024C894
	lw      $a0, 0x0028($sp)
	lw      $t9, 0x0030($sp)
	lw      $t1, 0x0028($sp)
	sw      $t9, 0x0078($t1)
	lw      $t2, 0x0030($sp)
	lw      $t0, 0x0028($sp)
	sw      $t2, 0x0080($t0)
	mtc1    $0, $f8
	lw      $t3, 0x0028($sp)
	swc1    $f8, 0x004C($t3)
	mtc1    $0, $f10
	lw      $t4, 0x0028($sp)
	swc1    $f10, 0x0054($t4)
	lw      $t5, 0x001C($sp)
	sw      $0, 0x0108($t5)
	lw      $t6, 0x001C($sp)
	sw      $0, 0x010C($t6)
	lw      $t7, 0x0028($sp)
	lw      $t8, 0x0030($sp)
	lw      $t9, 0x001C($sp)
	lwc1    $f16, 0x0040($t7)
	lwc1    $f18, 0x00A4($t8)
	sub.s   $f4, $f16, $f18
	swc1    $f4, 0x0110($t9)
	lw      $t1, 0x0020($sp)
	beqz    $t1, 75$
	nop
	li.u    $a1, 0x00100341
	li.l    $a1, 0x00100341
	lw      $a0, 0x0028($sp)
	jal     pl_set_state
	move    $a2, $0
	b       101$
	nop
75$:
	lw      $t2, 0x0028($sp)
	li      $at, 0x43800000
	mtc1    $at, $f8
	lwc1    $f6, 0x0054($t2)
	li      $at, 0x45800000
	mtc1    $at, $f16
	mul.s   $f10, $f6, $f8
	lw      $t4, 0x001C($sp)
	add.s   $f18, $f10, $f16
	trunc.w.s $f4, $f18
	mfc1    $t3, $f4
	nop
	sw      $t3, 0x010C($t4)
	jal     collision_8024DAAC
	lw      $a0, 0x0028($sp)
	li.u    $a1, 0x00100342
	li.l    $a1, 0x00100342
	lw      $a0, 0x0028($sp)
	jal     pl_set_state
	move    $a2, $0
	b       101$
	nop
97$:
	b       101$
	move    $v0, $0
	b       101$
	nop
101$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl collision_8024FA60
collision_8024FA60:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	sw      $a2, 0x0028($sp)
	lw      $t6, 0x0020($sp)
	lw      $t7, 0x000C($t6)
	andi    $t8, $t7, 0x01FF
	sw      $t8, 0x001C($sp)
	lw      $t9, 0x001C($sp)
	slti    $at, $t9, 0x0080
	bnez    $at, 44$
	nop
	slti    $at, $t9, 0x0098
	beqz    $at, 44$
	nop
	lw      $t1, 0x0020($sp)
	lui     $t0, %hi(gfx_frame)
	lw      $t0, %lo(gfx_frame)($t0)
	lw      $t2, 0x0080($t1)
	lw      $t3, 0x0110($t2)
	subu    $t4, $t0, $t3
	sltiu   $at, $t4, 0x001F
	bnez    $at, 44$
	nop
	jal     collision_8024C894
	lw      $a0, 0x0020($sp)
	lw      $t6, 0x0028($sp)
	li      $t5, 0x0001
	sw      $t5, 0x0134($t6)
	lw      $t7, 0x0028($sp)
	lw      $t8, 0x0020($sp)
	sw      $t7, 0x0078($t8)
	lw      $t9, 0x0028($sp)
	lw      $t1, 0x0020($sp)
	sw      $t9, 0x0080($t1)
	jal     player_802521A0
	lw      $a0, 0x0020($sp)
	lw      $a0, 0x0020($sp)
	li      $a1, 0x04A8
	jal     pl_set_state
	move    $a2, $0
	b       48$
	nop
44$:
	b       48$
	move    $v0, $0
	b       48$
	nop
48$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl collision_8024FB30
collision_8024FB30:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0030($sp)
	sw      $a1, 0x0034($sp)
	sw      $a2, 0x0038($sp)
	sw      $s0, 0x0018($sp)
	jal     collision_8024BFF0
	lw      $a0, 0x0038($sp)
	sw      $v0, 0x002C($sp)
	sh      $0, 0x002A($sp)
	sh      $0, 0x0028($sp)
	lw      $t6, 0x0030($sp)
	li.u    $at, 0x010208B8
	li.l    $at, 0x010208B8
	lw      $t7, 0x000C($t6)
	beq     $t7, $at, 118$
	nop
	lw      $t8, 0x002C($sp)
	beqz    $t8, 118$
	nop
	lw      $t9, 0x0038($sp)
	lw      $t0, 0x0030($sp)
	sw      $t9, 0x0078($t0)
	lw      $t2, 0x0038($sp)
	li      $t1, 0x8000
	sw      $t1, 0x0134($t2)
	lw      $t3, 0x0030($sp)
	li      $at, -0x0031
	lw      $t4, 0x0004($t3)
	and     $t5, $t4, $at
	sw      $t5, 0x0004($t3)
	lw      $t6, 0x0030($sp)
	lw      $t8, 0x002C($sp)
	lw      $t7, 0x0004($t6)
	or      $t9, $t7, $t8
	sw      $t9, 0x0004($t6)
	lw      $s0, 0x002C($sp)
	li      $at, 0x0002
	beq     $s0, $at, 48$
	nop
	li      $at, 0x0004
	beq     $s0, $at, 54$
	nop
	li      $at, 0x0008
	beq     $s0, $at, 60$
	nop
	b       66$
	nop
48$:
	li      $t0, 0x0258
	sh      $t0, 0x0028($sp)
	li      $t1, 0x040E
	sh      $t1, 0x002A($sp)
	b       66$
	nop
54$:
	li      $t2, 0x0258
	sh      $t2, 0x0028($sp)
	li      $t4, 0x040F
	sh      $t4, 0x002A($sp)
	b       66$
	nop
60$:
	li      $t5, 0x0708
	sh      $t5, 0x0028($sp)
	li      $t3, 0x040E
	sh      $t3, 0x002A($sp)
	b       66$
	nop
66$:
	lw      $t8, 0x0030($sp)
	lhu     $t7, 0x0028($sp)
	lhu     $t9, 0x00B6($t8)
	slt     $at, $t9, $t7
	beqz    $at, 75$
	nop
	lhu     $t6, 0x0028($sp)
	lw      $t0, 0x0030($sp)
	sh      $t6, 0x00B6($t0)
75$:
	lw      $t1, 0x0030($sp)
	li      $at, 0x00400000
	lw      $t2, 0x000C($t1)
	and     $t4, $t2, $at
	bnez    $t4, 85$
	nop
	li.u    $at, 0x04000440
	li.l    $at, 0x04000440
	bne     $t2, $at, 95$
	nop
85$:
	lw      $t5, 0x0030($sp)
	lw      $t3, 0x0004($t5)
	ori     $t8, $t3, 0x0020
	sw      $t8, 0x0004($t5)
	lw      $a0, 0x0030($sp)
	li      $a1, 0x133D
	jal     pl_set_state
	move    $a2, $0
	b       99$
	nop
95$:
	lw      $t7, 0x0030($sp)
	lw      $t9, 0x0004($t7)
	ori     $t6, $t9, 0x0010
	sw      $t6, 0x0004($t7)
99$:
	lw      $t0, 0x0030($sp)
	li.u    $a0, 0x701EFF81
	li.l    $a0, 0x701EFF81
	lw      $a1, 0x0088($t0)
	jal     Na_SePlay
	addiu   $a1, $a1, 0x0054
	lw      $t1, 0x0030($sp)
	li.u    $a0, 0x240C8081
	li.l    $a0, 0x240C8081
	lw      $a1, 0x0088($t1)
	jal     Na_SePlay
	addiu   $a1, $a1, 0x0054
	lhu     $t4, 0x002A($sp)
	beqz    $t4, 116$
	nop
	jal     bgm_special_play
	lhu     $a0, 0x002A($sp)
116$:
	b       122$
	li      $v0, 0x0001
118$:
	b       122$
	move    $v0, $0
	b       122$
	nop
122$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

.globl collision_8024FD2C
collision_8024FD2C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	sw      $a2, 0x0028($sp)
	lw      $t6, 0x0028($sp)
	li      $a0, 0x0013
	jal     virtual_to_segment
	lw      $a1, 0x020C($t6)
	sw      $v0, 0x001C($sp)
	lw      $t7, 0x0028($sp)
	lw      $t8, 0x0190($t7)
	andi    $t9, $t8, 0x0100
	beqz    $t9, 31$
	nop
	lw      $a0, 0x0020($sp)
	jal     collision_8024C1D8
	lw      $a1, 0x0028($sp)
	sw      $v0, 0x0018($sp)
	lw      $t0, 0x0018($sp)
	andi    $t1, $t0, 0x000C
	beqz    $t1, 31$
	nop
	lw      $a0, 0x0028($sp)
	jal     collision_8024C51C
	lw      $a1, 0x0018($sp)
	lw      $a0, 0x0020($sp)
	jal     collision_8024D72C
	lw      $a1, 0x0018($sp)
	b       76$
	move    $v0, $0
31$:
	lw      $t2, 0x0028($sp)
	lw      $t3, 0x0190($t2)
	andi    $t4, $t3, 0x0004
	beqz    $t4, 44$
	nop
	lw      $a0, 0x0020($sp)
	lw      $a1, 0x0024($sp)
	jal     collision_8024F7A8
	lw      $a2, 0x0028($sp)
	beqz    $v0, 44$
	nop
	b       76$
	li      $v0, 0x0001
44$:
	lw      $a0, 0x0020($sp)
	jal     collision_8024CB58
	lw      $a1, 0x0028($sp)
	beqz    $v0, 63$
	nop
	lw      $t5, 0x0028($sp)
	lw      $t6, 0x0190($t5)
	andi    $t7, $t6, 0x0200
	bnez    $t7, 63$
	nop
	lw      $t8, 0x0028($sp)
	lw      $t9, 0x0020($sp)
	sw      $t8, 0x0078($t9)
	lw      $t0, 0x0020($sp)
	lhu     $t1, 0x0002($t0)
	ori     $t2, $t1, 0x0800
	sh      $t2, 0x0002($t0)
	b       76$
	li      $v0, 0x0001
63$:
	lw      $t4, 0x001C($sp)
	la.u    $t3, o_13001850
	la.l    $t3, o_13001850
	beq     $t3, $t4, 72$
	nop
	lw      $a0, 0x0020($sp)
	lw      $a1, 0x0028($sp)
	jal     collision_8024D578
	li      $a2, 0xC0A00000
72$:
	b       76$
	move    $v0, $0
	b       76$
	nop
76$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

collision_8024FE6C:
	addiu   $sp, $sp, -0x0008
	lw      $t6, 0x000C($a0)
	li      $at, 0x00400000
	and     $t7, $t6, $at
	beqz    $t7, 8$
	nop
	b       36$
	li      $v0, 0x0001
8$:
	lw      $t8, 0x000C($a0)
	li.u    $at, 0x04000440
	li.l    $at, 0x04000440
	bne     $t8, $at, 32$
	nop
	beqz    $a1, 17$
	nop
	b       36$
	li      $v0, 0x0001
17$:
	lw      $t9, 0x0088($a0)
	lh      $t0, 0x0038($t9)
	sh      $t0, 0x0006($sp)
	lh      $t1, 0x0006($sp)
	li      $at, 0x0080
	beq     $t1, $at, 30$
	nop
	li      $at, 0x007F
	beq     $t1, $at, 30$
	nop
	li      $at, 0x006C
	bne     $t1, $at, 32$
	nop
30$:
	b       36$
	li      $v0, 0x0001
32$:
	b       36$
	move    $v0, $0
	b       36$
	nop
36$:
	jr      $ra
	addiu   $sp, $sp, 0x0008

collision_8024FF04:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	lw      $t6, 0x0028($sp)
	lhu     $t7, 0x0002($t6)
	andi    $t8, $t7, 0x2002
	beqz    $t8, 93$
	nop
	move    $a0, $t6
	jal     collision_8024FE6C
	move    $a1, $0
	beqz    $v0, 93$
	nop
	lw      $a0, 0x0028($sp)
	lw      $a1, 0x002C($sp)
	jal     collision_8024C0B8
	li      $a2, 0x4000
	beqz    $v0, 93$
	nop
	lw      $t9, 0x002C($sp)
	lw      $t4, 0x0028($sp)
	li      $at, 0x8000
	lw      $t0, 0x00C8($t9)
	lh      $t5, 0x002E($t4)
	addu    $t1, $t0, $at
	sll     $t2, $t1, 16
	sra     $t3, $t2, 16
	subu    $t7, $t3, $t5
	sh      $t7, 0x0026($sp)
	lh      $t8, 0x0026($sp)
	slti    $at, $t8, -0x4000
	bnez    $at, 93$
	nop
	slti    $at, $t8, 0x4001
	beqz    $at, 93$
	nop
	lw      $t6, 0x002C($sp)
	lui     $at, %hi(math_sin)
	lhu     $t9, 0x00CA($t6)
	lwc1    $f10, 0x00A0($t6)
	sra     $t0, $t9, 4
	sll     $t1, $t0, 2
	addu    $at, $at, $t1
	lwc1    $f4, %lo(math_sin)($at)
	li      $at, 0x42D20000
	mtc1    $at, $f6
	nop
	mul.s   $f8, $f4, $f6
	add.s   $f16, $f8, $f10
	swc1    $f16, 0x0020($sp)
	lw      $t2, 0x002C($sp)
	lui     $at, %hi(math_cos)
	lhu     $t4, 0x00CA($t2)
	lwc1    $f8, 0x00A8($t2)
	sra     $t3, $t4, 4
	sll     $t5, $t3, 2
	addu    $at, $at, $t5
	lwc1    $f18, %lo(math_cos)($at)
	li      $at, 0x42D20000
	mtc1    $at, $f4
	nop
	mul.s   $f6, $f18, $f4
	add.s   $f10, $f6, $f8
	swc1    $f10, 0x001C($sp)
	lw      $t8, 0x0028($sp)
	lh      $t7, 0x0026($sp)
	lw      $t9, 0x0088($t8)
	sw      $t7, 0x0108($t9)
	lw      $t0, 0x0028($sp)
	lwc1    $f16, 0x0020($sp)
	lwc1    $f18, 0x003C($t0)
	lw      $t1, 0x0088($t0)
	sub.s   $f4, $f16, $f18
	swc1    $f4, 0x010C($t1)
	lw      $t6, 0x0028($sp)
	lwc1    $f6, 0x001C($sp)
	lwc1    $f8, 0x0044($t6)
	lw      $t4, 0x0088($t6)
	sub.s   $f10, $f6, $f8
	swc1    $f10, 0x0110($t4)
	lw      $t3, 0x002C($sp)
	lw      $t5, 0x0028($sp)
	sw      $t3, 0x0078($t5)
	lw      $t2, 0x002C($sp)
	lw      $t8, 0x0028($sp)
	sw      $t2, 0x0080($t8)
	lw      $a0, 0x0028($sp)
	li      $a1, 0x1308
	jal     pl_set_state
	move    $a2, $0
	b       97$
	nop
93$:
	b       97$
	move    $v0, $0
	b       97$
	nop
97$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

collision_80250098:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	lhu     $t7, 0x0002($t6)
	andi    $t8, $t7, 0x2002
	beqz    $t8, 51$
	nop
	move    $a0, $t6
	jal     collision_8024FE6C
	li      $a1, 0x0001
	beqz    $v0, 51$
	nop
	lw      $a0, 0x0028($sp)
	jal     collision_8024C16C
	lw      $a1, 0x002C($sp)
	lw      $t0, 0x0028($sp)
	sll     $s0, $v0, 16
	sra     $t9, $s0, 16
	lh      $t1, 0x002E($t0)
	move    $s0, $t9
	subu    $t2, $s0, $t1
	sh      $t2, 0x0026($sp)
	lh      $t3, 0x0026($sp)
	slti    $at, $t3, -0x4000
	bnez    $at, 51$
	nop
	slti    $at, $t3, 0x4001
	beqz    $at, 51$
	nop
	lw      $t5, 0x002C($sp)
	li      $t4, 0x8000
	sw      $t4, 0x0134($t5)
	lw      $t7, 0x002C($sp)
	lw      $t8, 0x0028($sp)
	sw      $t7, 0x0078($t8)
	lw      $t6, 0x002C($sp)
	lw      $t9, 0x0028($sp)
	sw      $t6, 0x0080($t9)
	lw      $a0, 0x0028($sp)
	lw      $a1, 0x002C($sp)
	jal     collision_8024D578
	li      $a2, 0xC1200000
	lw      $a0, 0x0028($sp)
	li      $a1, 0x130A
	jal     pl_set_state
	move    $a2, $0
	b       59$
	nop
51$:
	lw      $a0, 0x0028($sp)
	lw      $a1, 0x002C($sp)
	jal     collision_8024D578
	li      $a2, 0xC1200000
	b       59$
	move    $v0, $0
	b       59$
	nop
59$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl collision_80250198
collision_80250198:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	sw      $a2, 0x0028($sp)
	sw      $0, 0x001C($sp)
	lw      $t6, 0x0028($sp)
	lw      $t7, 0x0190($t6)
	andi    $t8, $t7, 0x1000
	beqz    $t8, 16$
	nop
	lw      $a0, 0x0020($sp)
	jal     collision_8024FF04
	lw      $a1, 0x0028($sp)
	b       30$
	sw      $v0, 0x001C($sp)
16$:
	lw      $t9, 0x0028($sp)
	lw      $t0, 0x0190($t9)
	andi    $t1, $t0, 0x4000
	beqz    $t1, 26$
	nop
	lw      $a0, 0x0020($sp)
	jal     collision_80250098
	lw      $a1, 0x0028($sp)
	b       30$
	sw      $v0, 0x001C($sp)
26$:
	lw      $a0, 0x0020($sp)
	lw      $a1, 0x0028($sp)
	jal     collision_8024D578
	li      $a2, 0x40000000
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

collision_80250230:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	lw      $t6, 0x0028($sp)
	li      $at, 0x00700000
	lw      $t7, 0x0004($t6)
	and     $t8, $t7, $at
	beqz    $t8, 106$
	nop
	lw      $t9, 0x0028($sp)
	lui     $at, %hi(math_sin)
	addiu   $t3, $sp, 0x001C
	lhu     $t0, 0x002E($t9)
	lwc1    $f10, 0x003C($t9)
	sra     $t1, $t0, 4
	sll     $t2, $t1, 2
	addu    $at, $at, $t2
	lwc1    $f4, %lo(math_sin)($at)
	li      $at, 0x42480000
	mtc1    $at, $f6
	nop
	mul.s   $f8, $f4, $f6
	add.s   $f16, $f8, $f10
	swc1    $f16, 0x0000($t3)
	lw      $t4, 0x0028($sp)
	lui     $at, %hi(math_cos)
	addiu   $t8, $sp, 0x001C
	lhu     $t5, 0x002E($t4)
	lwc1    $f8, 0x0044($t4)
	sra     $t6, $t5, 4
	sll     $t7, $t6, 2
	addu    $at, $at, $t7
	lwc1    $f18, %lo(math_cos)($at)
	li      $at, 0x42480000
	mtc1    $at, $f4
	nop
	mul.s   $f6, $f18, $f4
	add.s   $f10, $f6, $f8
	swc1    $f10, 0x0008($t8)
	lw      $t0, 0x0028($sp)
	addiu   $t1, $sp, 0x001C
	lwc1    $f16, 0x0040($t0)
	swc1    $f16, 0x0004($t1)
	addiu   $a0, $sp, 0x001C
	li      $a1, 0x42A00000
	jal     player_80251A48
	li      $a2, 0x40A00000
	beqz    $v0, 106$
	nop
	lw      $t2, 0x0028($sp)
	li.u    $at, 0x00800457
	li.l    $at, 0x00800457
	lw      $t9, 0x000C($t2)
	bne     $t9, $at, 62$
	nop
	lwc1    $f18, 0x0054($t2)
	mtc1    $0, $f4
	nop
	c.le.s  $f4, $f18
	nop
	bc1f    87$
	nop
62$:
	lw      $t3, 0x0028($sp)
	li.u    $at, 0x00800380
	li.l    $at, 0x00800380
	lw      $t5, 0x000C($t3)
	bne     $t5, $at, 72$
	nop
	lw      $t7, 0x0028($sp)
	li.u    $t6, 0x00800457
	li.l    $t6, 0x00800457
	sw      $t6, 0x000C($t7)
72$:
	lw      $a0, 0x0028($sp)
	jal     player_80251708
	li      $a1, 0xC2400000
	lw      $t4, 0x0028($sp)
	li.u    $a0, 0x0444B081
	li.l    $a0, 0x0444B081
	lw      $a1, 0x0088($t4)
	jal     Na_SePlay
	addiu   $a1, $a1, 0x0054
	lw      $t8, 0x0028($sp)
	li      $at, 0x00040000
	lw      $t0, 0x0008($t8)
	or      $t1, $t0, $at
	b       106$
	sw      $t1, 0x0008($t8)
87$:
	lw      $t9, 0x0028($sp)
	lw      $t2, 0x000C($t9)
	andi    $t3, $t2, 0x0800
	beqz    $t3, 106$
	nop
	lw      $a0, 0x0028($sp)
	jal     player_80251708
	li      $a1, 0xC1800000
	lw      $t5, 0x0028($sp)
	li.u    $a0, 0x0444B081
	li.l    $a0, 0x0444B081
	lw      $a1, 0x0088($t5)
	jal     Na_SePlay
	addiu   $a1, $a1, 0x0054
	lw      $t6, 0x0028($sp)
	li      $at, 0x00040000
	lw      $t7, 0x0008($t6)
	or      $t4, $t7, $at
	sw      $t4, 0x0008($t6)
106$:
	b       108$
	nop
108$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl collision_802503F0
collision_802503F0:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0030($sp)
	sw      $s0, 0x0018($sp)
	lui     $at, %hi(collision_8033B270)
	sb      $0, %lo(collision_8033B270)($at)
	lw      $t6, 0x0030($sp)
	li      $at, 0x00020000
	lw      $s0, 0x000C($t6)
	and     $t7, $s0, $at
	move    $s0, $t7
	sltu    $t8, $0, $s0
	move    $s0, $t8
	bnez    $s0, 18$
	nop
	lh      $s0, 0x0026($t6)
	sltu    $t9, $0, $s0
	move    $s0, $t9
18$:
	lui     $at, %hi(collision_8033B272)
	sh      $s0, %lo(collision_8033B272)($at)
	lw      $t0, 0x0030($sp)
	lw      $t1, 0x000C($t0)
	andi    $t2, $t1, 0x1000
	bnez    $t2, 75$
	nop
	lw      $t3, 0x00A4($t0)
	beqz    $t3, 75$
	nop
	sw      $0, 0x002C($sp)
29$:
	lw      $t4, 0x002C($sp)
	lui     $t7, %hi(collision_table+0x00)
	sll     $t5, $t4, 3
	addu    $t7, $t7, $t5
	lw      $t7, %lo(collision_table+0x00)($t7)
	sw      $t7, 0x0028($sp)
	lw      $t8, 0x0030($sp)
	lw      $t9, 0x0028($sp)
	lw      $t6, 0x00A4($t8)
	and     $t1, $t6, $t9
	beqz    $t1, 70$
	nop
	lw      $a0, 0x0030($sp)
	jal     collision_8024CBFC
	lw      $a1, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	lw      $t2, 0x0030($sp)
	lw      $t3, 0x0028($sp)
	lw      $t0, 0x00A4($t2)
	nor     $t4, $t3, $0
	and     $t5, $t0, $t4
	sw      $t5, 0x00A4($t2)
	lw      $t7, 0x0024($sp)
	lw      $t8, 0x0134($t7)
	andi    $t6, $t8, 0x8000
	bnez    $t6, 70$
	nop
	lw      $t9, 0x002C($sp)
	lw      $a0, 0x0030($sp)
	lw      $a1, 0x0028($sp)
	sll     $t1, $t9, 3
	lui     $t9, %hi(collision_table+0x04)
	addu    $t9, $t9, $t1
	lw      $t9, %lo(collision_table+0x04)($t9)
	lw      $a2, 0x0024($sp)
	jalr    $t9
	nop
	beqz    $v0, 70$
	nop
	b       75$
	nop
70$:
	lw      $t3, 0x002C($sp)
	addiu   $t0, $t3, 0x0001
	slti    $at, $t0, 0x001F
	bnez    $at, 29$
	sw      $t0, 0x002C($sp)
75$:
	lw      $t4, 0x0030($sp)
	lh      $t5, 0x0026($t4)
	blez    $t5, 87$
	nop
	lui     $t2, %hi(collision_8033B270)
	lbu     $t2, %lo(collision_8033B270)($t2)
	bnez    $t2, 87$
	nop
	lw      $t7, 0x0030($sp)
	lh      $t8, 0x0026($t7)
	addiu   $t6, $t8, -0x0001
	sh      $t6, 0x0026($t7)
87$:
	jal     collision_80250230
	lw      $a0, 0x0030($sp)
	lw      $t1, 0x0030($sp)
	li.u    $at, 0xFF8FFFFF
	li.l    $at, 0xFF8FFFFF
	lw      $t9, 0x0004($t1)
	and     $t3, $t9, $at
	sw      $t3, 0x0004($t1)
	lw      $t0, 0x0030($sp)
	lw      $t4, 0x0088($t0)
	lw      $t5, 0x0070($t4)
	andi    $t2, $t5, 0x0804
	bnez    $t2, 103$
	nop
	lui     $at, %hi(collision_8032DA90)
	sb      $0, %lo(collision_8032DA90)($at)
103$:
	lw      $t8, 0x0030($sp)
	lw      $t6, 0x0088($t8)
	lw      $t7, 0x0070($t6)
	andi    $t9, $t7, 0x2000
	bnez    $t9, 111$
	nop
	lui     $at, %hi(collision_8032DA94)
	sb      $0, %lo(collision_8032DA94)($at)
111$:
	b       113$
	nop
113$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

collision_802505C8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	li      $at, 0x45000000
	mtc1    $at, $f8
	lwc1    $f6, 0x0070($t6)
	lwc1    $f4, 0x0040($t6)
	add.s   $f10, $f6, $f8
	c.lt.s  $f4, $f10
	nop
	bc1f    31$
	nop
	lw      $a0, 0x0018($sp)
	jal     pl_fade
	li      $a1, 0x0013
	li      $at, 0x0014
	bne     $v0, $at, 31$
	nop
	lw      $t7, 0x0018($sp)
	li      $at, 0x00040000
	lw      $t8, 0x0004($t7)
	and     $t9, $t8, $at
	bnez    $t9, 31$
	nop
	lw      $t0, 0x0018($sp)
	li.u    $a0, 0x2410C081
	li.l    $a0, 0x2410C081
	lw      $a1, 0x0088($t0)
	jal     Na_SePlay
	addiu   $a1, $a1, 0x0054
31$:
	b       33$
	nop
33$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

collision_8025065C:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	li      $at, 0x00010000
	lw      $t7, 0x000C($t6)
	and     $t8, $t7, $at
	bnez    $t8, 43$
	nop
	li      $at, 0x41200000
	mtc1    $at, $f8
	lwc1    $f6, 0x0070($t6)
	lwc1    $f4, 0x0040($t6)
	add.s   $f10, $f6, $f8
	c.lt.s  $f4, $f10
	nop
	bc1f    43$
	nop
	lw      $t9, 0x0028($sp)
	lw      $t0, 0x0004($t9)
	andi    $t1, $t0, 0x0004
	bnez    $t1, 36$
	nop
	lw      $t2, 0x0028($sp)
	lw      $t3, 0x0004($t2)
	andi    $t4, $t3, 0x0010
	beqz    $t4, 31$
	nop
	b       32$
	li      $s0, 0x000C
31$:
	li      $s0, 0x0012
32$:
	lw      $t5, 0x0028($sp)
	lbu     $t7, 0x00B2($t5)
	addu    $t8, $t7, $s0
	sb      $t8, 0x00B2($t5)
36$:
	jal     player_802521A0
	lw      $a0, 0x0028($sp)
	li.u    $a1, 0x010208B7
	li.l    $a1, 0x010208B7
	lw      $a0, 0x0028($sp)
	jal     player_80253178
	move    $a2, $0
43$:
	b       45$
	nop
45$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

collision_80250724:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lui     $t6, %hi(hud+0x0A)
	lh      $t6, %lo(hud+0x0A)($t6)
	andi    $t7, $t6, 0x0040
	bnez    $t7, 15$
	nop
	jal     time_ctrl
	move    $a0, $0
	jal     time_ctrl
	li      $a0, 0x0001
	li      $t8, 0x0001
	lui     $at, %hi(collision_8032DA98)
	sb      $t8, %lo(collision_8032DA98)($at)
15$:
	b       17$
	nop
17$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

collision_80250778:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lui     $t6, %hi(collision_8032DA98)
	lbu     $t6, %lo(collision_8032DA98)($t6)
	beqz    $t6, 27$
	nop
	jal     time_ctrl
	li      $a0, 0x0002
	sh      $v0, 0x001E($sp)
	lhu     $t7, 0x001E($sp)
	slti    $at, $t7, 0x0276
	beqz    $at, 25$
	nop
	lw      $t9, 0x0020($sp)
	li      $t8, 0x01000000
	lw      $t0, 0x0088($t9)
	sw      $t8, 0x0188($t0)
	lui     $at, %hi(collision_80336414)
	lwc1    $f12, %lo(collision_80336414)($at)
	lui     $at, %hi(collision_80336418)
	li.u    $a2, 0x4592E000
	li.l    $a2, 0x4592E000
	jal     object_b_802F2B88
	lwc1    $f14, %lo(collision_80336418)($at)
25$:
	lui     $at, %hi(collision_8032DA98)
	sb      $0, %lo(collision_8032DA98)($at)
27$:
	b       29$
	nop
29$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl collision_802507FC
collision_802507FC:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	li      $at, 0x0100
	lw      $t7, 0x000C($t6)
	andi    $t8, $t7, 0x01C0
	bne     $t8, $at, 12$
	nop
	b       75$
	nop
12$:
	lw      $t9, 0x0028($sp)
	lw      $t0, 0x0068($t9)
	beqz    $t0, 73$
	nop
	lw      $t1, 0x0028($sp)
	lw      $t2, 0x0068($t1)
	lh      $t3, 0x0000($t2)
	sw      $t3, 0x0024($sp)
	lw      $s0, 0x0024($sp)
	li      $at, 0x000A
	beq     $s0, $at, 38$
	nop
	li      $at, 0x0032
	beq     $s0, $at, 42$
	nop
	li      $at, 0x0033
	beq     $s0, $at, 47$
	nop
	li      $at, 0x0034
	beq     $s0, $at, 51$
	nop
	li      $at, 0x0038
	beq     $s0, $at, 38$
	nop
	b       55$
	nop
38$:
	jal     collision_802505C8
	lw      $a0, 0x0028($sp)
	b       55$
	nop
42$:
	lw      $a0, 0x0028($sp)
	jal     pl_fade
	li      $a1, 0x0013
	b       55$
	nop
47$:
	jal     collision_80250724
	lw      $a0, 0x0028($sp)
	b       55$
	nop
51$:
	jal     collision_80250778
	lw      $a0, 0x0028($sp)
	b       55$
	nop
55$:
	lw      $t4, 0x0028($sp)
	lw      $t5, 0x000C($t4)
	andi    $t6, $t5, 0x0800
	bnez    $t6, 73$
	nop
	andi    $t7, $t5, 0x2000
	bnez    $t7, 73$
	nop
	lw      $t8, 0x0024($sp)
	li      $at, 0x0001
	bne     $t8, $at, 73$
	nop
	b       69$
	nop
69$:
	jal     collision_8025065C
	lw      $a0, 0x0028($sp)
	b       73$
	nop
73$:
	b       75$
	nop
75$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop
