.include "sm64/asm.inc"

.set noreorder
.set noat

.align 4

Na_memory_80316E80:
	la.u    $v1, _Na_work_bss+0x730
	la.u    $v0, _Na_work_bss+0x770
	la.l    $v0, _Na_work_bss+0x770
	la.l    $v1, _Na_work_bss+0x730
4$:
	addiu   $v1, $v1, 0x0001
	sltu    $at, $v1, $v0
	bnez    $at, 4$
	sb      $0, -0x0001($v1)
	la.u    $v1, _Na_work_bss+0x770
	la.u    $v0, _Na_work_bss+0x870
	la.l    $v0, _Na_work_bss+0x870
	la.l    $v1, _Na_work_bss+0x770
12$:
	addiu   $v1, $v1, 0x0001
	bne     $v1, $v0, 12$
	sb      $0, -0x0001($v1)
	jr      $ra
	nop

Na_memory_80316EC4:
	addiu   $sp, $sp, -0x0038
	lui     $v0, %hi(_Na_work_bss+0x5DD0)
	lw      $v0, %lo(_Na_work_bss+0x5DD0)($v0)
	sw      $s6, 0x0030($sp)
	sw      $s3, 0x0024($sp)
	move    $s6, $a0
	sw      $ra, 0x0034($sp)
	sw      $s5, 0x002C($sp)
	sw      $s4, 0x0028($sp)
	sw      $s2, 0x0020($sp)
	sw      $s1, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	blez    $v0, 50$
	move    $s3, $0
	la.u    $s5, _Na_work_bss+0x4F08
	la.u    $s4, _Na_work_bss+0x1870
	la.l    $s4, _Na_work_bss+0x1870
	la.l    $s5, _Na_work_bss+0x4F08
	move    $s2, $0
19$:
	lw      $t6, 0x0000($s4)
	addu    $s0, $s2, $t6
	lbu     $t7, 0x0007($s0)
	bnel    $s6, $t7, 47$
	addiu   $s3, $s3, 0x0001
	lbu     $t8, 0x0004($s0)
	slti    $at, $t8, 0x0002
	bnez    $at, 36$
	nop
	lw      $v0, 0x002C($s0)
	lbu     $t9, 0x0000($v0)
	andi    $t0, $t9, 0xFF7F
	sb      $t0, 0x0000($v0)
	lw      $v0, 0x002C($s0)
	lbu     $t2, 0x0000($v0)
	ori     $t3, $t2, 0x0040
	sb      $t3, 0x0000($v0)
36$:
	jal     Na_driver_80316E00
	move    $a0, $s0
	addiu   $s1, $s0, 0x00A4
	jal     Na_voice_8031A610
	move    $a0, $s1
	move    $a0, $s5
	jal     Na_sequence_8031BF14
	move    $a1, $s1
	lui     $v0, %hi(_Na_work_bss+0x5DD0)
	lw      $v0, %lo(_Na_work_bss+0x5DD0)($v0)
	addiu   $s3, $s3, 0x0001
47$:
	slt     $at, $s3, $v0
	bnez    $at, 19$
	addiu   $s2, $s2, 0x00C0
50$:
	lw      $ra, 0x0034($sp)
	lw      $s0, 0x0018($sp)
	lw      $s1, 0x001C($sp)
	lw      $s2, 0x0020($sp)
	lw      $s3, 0x0024($sp)
	lw      $s4, 0x0028($sp)
	lw      $s5, 0x002C($sp)
	lw      $s6, 0x0030($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0038

Na_memory_80316FB4:
	addiu   $sp, $sp, -0x0030
	sw      $s3, 0x0024($sp)
	sw      $s2, 0x0020($sp)
	sw      $s0, 0x0018($sp)
	sw      $s4, 0x0028($sp)
	sw      $s1, 0x001C($sp)
	la.u    $s0, _Na_work_bss+0x1878
	la.u    $s2, _Na_work_bss+0x1878
	la.u    $s3, _Na_work_bss+0x1C38
	move    $s4, $a0
	sw      $ra, 0x002C($sp)
	la.l    $s3, _Na_work_bss+0x1C38
	la.l    $s2, _Na_work_bss+0x1878
	la.l    $s0, _Na_work_bss+0x1878
	move    $s1, $0
15$:
	lw      $t6, 0x0000($s0)
	srl     $t7, $t6, 31
	beqzl   $t7, 25$
	addiu   $s0, $s0, 0x0140
	lbu     $t8, 0x0005($s0)
	bnel    $s4, $t8, 25$
	addiu   $s0, $s0, 0x0140
	jal     Na_sequence_8031BE44
	addu    $a0, $s2, $s1
	addiu   $s0, $s0, 0x0140
25$:
	bne     $s0, $s3, 15$
	addiu   $s1, $s1, 0x0140
	lw      $ra, 0x002C($sp)
	lw      $s0, 0x0018($sp)
	lw      $s1, 0x001C($sp)
	lw      $s2, 0x0020($sp)
	lw      $s3, 0x0024($sp)
	lw      $s4, 0x0028($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0030

.globl Na_memory_80317040
Na_memory_80317040:
	lw      $v0, 0x0004($a0)
	lw      $t7, 0x0008($a0)
	lw      $t8, 0x0000($a0)
	addiu   $v1, $a1, 0x000F
	li      $at, -0x0010
	and     $t6, $v1, $at
	addu    $t0, $v0, $t6
	addu    $t9, $t7, $t8
	sltu    $at, $t9, $t0
	bnez    $at, 24$
	move    $a1, $v0
	addu    $t1, $v0, $t6
	subu    $a2, $t1, $v0
	addiu   $a2, $a2, -0x0001
	sw      $t1, 0x0004($a0)
	bltz    $a2, 26$
	move    $a3, $0
	addiu   $v1, $a2, 0x0001
18$:
	addiu   $a3, $a3, 0x0001
	addiu   $v0, $v0, 0x0001
	bne     $v1, $a3, 18$
	sb      $0, -0x0001($v0)
	b       27$
	move    $v0, $a1
24$:
	jr      $ra
	move    $v0, $0
26$:
	move    $v0, $a1
27$:
	jr      $ra
	nop

Na_memory_803170B4:
	addiu   $v0, $a1, 0x000F
	li      $at, -0x0010
	and     $t6, $v0, $at
	sw      $t6, 0x0000($a0)
	sw      $t6, 0x0004($a0)
	sw      $a2, 0x0008($a0)
	jr      $ra
	sw      $0, 0x000C($a0)

Na_memory_803170D4:
	lw      $t6, 0x0004($a0)
	sw      $0, 0x0010($a0)
	sw      $0, 0x0000($a0)
	jr      $ra
	sw      $t6, 0x0008($a0)

Na_memory_803170E8:
	lw      $v0, 0x0004($a0)
	lw      $t6, 0x000C($a0)
	li      $v1, -0x0001
	sw      $0, 0x0010($a0)
	addu    $t7, $t6, $v0
	sw      $0, 0x0000($a0)
	sw      $t7, 0x0020($a0)
	sw      $v1, 0x001C($a0)
	sw      $v1, 0x0028($a0)
	sw      $v0, 0x0008($a0)
	jr      $ra
	sw      $v0, 0x0014($a0)

Na_memory_80317118:
	lw      $t6, 0x0000($a0)
	sw      $0, 0x000C($a0)
	jr      $ra
	sw      $t6, 0x0004($a0)

.globl Na_memory_80317128
Na_memory_80317128:
	addiu   $sp, $sp, -0x0018
	move    $a2, $a0
	sw      $ra, 0x0014($sp)
	la.u    $a0, _Na_work_bss+0x118
	la.u    $a1, Na_Heap
	la.l    $a1, Na_Heap
	la.l    $a0, _Na_work_bss+0x118
	jal     Na_memory_803170B4
	sw      $a2, 0x0018($sp)
	lw      $a3, 0x0018($sp)
	lui     $t7, %hi(Na_HeapSize)
	lw      $t7, %lo(Na_HeapSize)($t7)
	la.u    $t6, Na_Heap
	la.l    $t6, Na_Heap
	la.u    $a0, _Na_work_bss+0x108
	la.l    $a0, _Na_work_bss+0x108
	addu    $a1, $a3, $t6
	jal     Na_memory_803170B4
	subu    $a2, $t7, $a3
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

Na_memory_80317184:
	addiu   $sp, $sp, -0x0018
	sw      $a0, 0x0018($sp)
	la.u    $a0, _Na_work_bss+0x108
	la.l    $a0, _Na_work_bss+0x108
	lw      $t6, 0x0000($a0)
	lw      $t7, 0x0018($sp)
	sw      $ra, 0x0014($sp)
	sw      $t6, 0x0004($a0)
	jal     Na_memory_80317040
	lw      $a1, 0x0000($t7)
	lw      $t8, 0x0018($sp)
	la.u    $a0, _Na_work_bss+0x128
	la.l    $a0, _Na_work_bss+0x128
	move    $a1, $v0
	jal     Na_memory_803170B4
	lw      $a2, 0x0000($t8)
	lw      $t9, 0x0018($sp)
	la.u    $a0, _Na_work_bss+0x108
	la.l    $a0, _Na_work_bss+0x108
	jal     Na_memory_80317040
	lw      $a1, 0x000C($t9)
	lw      $t0, 0x0018($sp)
	la.u    $a0, _Na_work_bss+0x158
	la.l    $a0, _Na_work_bss+0x158
	move    $a1, $v0
	jal     Na_memory_803170B4
	lw      $a2, 0x000C($t0)
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

Na_memory_80317200:
	addiu   $sp, $sp, -0x0018
	sw      $a0, 0x0018($sp)
	la.u    $a0, _Na_work_bss+0x158
	la.l    $a0, _Na_work_bss+0x158
	lw      $t6, 0x0000($a0)
	lw      $t7, 0x0018($sp)
	sw      $ra, 0x0014($sp)
	sw      $t6, 0x0004($a0)
	jal     Na_memory_80317040
	lw      $a1, 0x0000($t7)
	lw      $t8, 0x0018($sp)
	la.u    $a0, _Na_work_bss+0x168
	la.l    $a0, _Na_work_bss+0x168
	move    $a1, $v0
	jal     Na_memory_803170B4
	lw      $a2, 0x0000($t8)
	lw      $t9, 0x0018($sp)
	la.u    $a0, _Na_work_bss+0x158
	la.l    $a0, _Na_work_bss+0x158
	jal     Na_memory_80317040
	lw      $a1, 0x0004($t9)
	lw      $t0, 0x0018($sp)
	la.u    $a0, _Na_work_bss+0x178
	la.l    $a0, _Na_work_bss+0x178
	move    $a1, $v0
	jal     Na_memory_803170B4
	lw      $a2, 0x0004($t0)
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

Na_memory_8031727C:
	addiu   $sp, $sp, -0x0020
	sw      $s0, 0x0018($sp)
	move    $s0, $a0
	la.u    $a0, _Na_work_bss+0x168
	la.l    $a0, _Na_work_bss+0x168
	lw      $t6, 0x0000($a0)
	sw      $ra, 0x001C($sp)
	sw      $t6, 0x0004($a0)
	jal     Na_memory_80317040
	lw      $a1, 0x0000($s0)
	la.u    $a0, _Na_work_bss+0x18C
	la.l    $a0, _Na_work_bss+0x18C
	move    $a1, $v0
	jal     Na_memory_803170B4
	lw      $a2, 0x0000($s0)
	la.u    $a0, _Na_work_bss+0x168
	la.l    $a0, _Na_work_bss+0x168
	jal     Na_memory_80317040
	lw      $a1, 0x0004($s0)
	la.u    $a0, _Na_work_bss+0x35C
	la.l    $a0, _Na_work_bss+0x35C
	move    $a1, $v0
	jal     Na_memory_803170B4
	lw      $a2, 0x0004($s0)
	la.u    $a0, _Na_work_bss+0x168
	la.l    $a0, _Na_work_bss+0x168
	jal     Na_memory_80317040
	lw      $a1, 0x0008($s0)
	la.u    $a0, _Na_work_bss+0x52C
	la.l    $a0, _Na_work_bss+0x52C
	move    $a1, $v0
	jal     Na_memory_803170B4
	lw      $a2, 0x0008($s0)
	la.u    $a0, _Na_work_bss+0x188
	jal     Na_memory_803170D4
	la.l    $a0, _Na_work_bss+0x188
	la.u    $a0, _Na_work_bss+0x358
	jal     Na_memory_803170D4
	la.l    $a0, _Na_work_bss+0x358
	la.u    $a0, _Na_work_bss+0x528
	jal     Na_memory_803170D4
	la.l    $a0, _Na_work_bss+0x528
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

Na_memory_80317338:
	addiu   $sp, $sp, -0x0020
	sw      $s0, 0x0018($sp)
	move    $s0, $a0
	la.u    $a0, _Na_work_bss+0x178
	la.l    $a0, _Na_work_bss+0x178
	lw      $t6, 0x0000($a0)
	sw      $ra, 0x001C($sp)
	sw      $t6, 0x0004($a0)
	jal     Na_memory_80317040
	lw      $a1, 0x0000($s0)
	la.u    $a0, _Na_work_bss+0x320
	la.l    $a0, _Na_work_bss+0x320
	move    $a1, $v0
	jal     Na_memory_803170B4
	lw      $a2, 0x0000($s0)
	la.u    $a0, _Na_work_bss+0x178
	la.l    $a0, _Na_work_bss+0x178
	jal     Na_memory_80317040
	lw      $a1, 0x0004($s0)
	la.u    $a0, _Na_work_bss+0x4F0
	la.l    $a0, _Na_work_bss+0x4F0
	move    $a1, $v0
	jal     Na_memory_803170B4
	lw      $a2, 0x0004($s0)
	la.u    $a0, _Na_work_bss+0x178
	la.l    $a0, _Na_work_bss+0x178
	jal     Na_memory_80317040
	lw      $a1, 0x0008($s0)
	la.u    $a0, _Na_work_bss+0x6C0
	la.l    $a0, _Na_work_bss+0x6C0
	move    $a1, $v0
	jal     Na_memory_803170B4
	lw      $a2, 0x0008($s0)
	la.u    $a0, _Na_work_bss+0x31C
	jal     Na_memory_803170E8
	la.l    $a0, _Na_work_bss+0x31C
	la.u    $a0, _Na_work_bss+0x4EC
	jal     Na_memory_803170E8
	la.l    $a0, _Na_work_bss+0x4EC
	la.u    $a0, _Na_work_bss+0x6BC
	jal     Na_memory_803170E8
	la.l    $a0, _Na_work_bss+0x6BC
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

Na_memory_803173F4:
	jr      $ra
	nop

.globl Na_memory_803173FC
Na_memory_803173FC:
	addiu   $sp, $sp, -0x0078
	sw      $s0, 0x0020($sp)
	move    $s0, $a0
	sw      $ra, 0x0024($sp)
	sw      $a1, 0x007C($sp)
	bnez    $a3, 210$
	sw      $a2, 0x0080($sp)
	la.u    $t6, _Na_work_bss+0x188
	la.l    $t6, _Na_work_bss+0x188
	bne     $a0, $t6, 16$
	addiu   $v1, $s0, 0x0194
	la.u    $t2, _Na_work_bss+0x770
	la.l    $t2, _Na_work_bss+0x770
	sw      $t2, 0x005C($sp)
	b       24$
	sb      $0, 0x005B($sp)
16$:
	la.u    $t7, _Na_work_bss+0x358
	la.l    $t7, _Na_work_bss+0x358
	bne     $s0, $t7, 24$
	la.u    $t2, _Na_work_bss+0x730
	la.l    $t2, _Na_work_bss+0x730
	li      $t4, 0x0001
	sb      $t4, 0x005B($sp)
	sw      $t2, 0x005C($sp)
24$:
	lw      $v0, 0x001C($v1)
	li      $t3, -0x0001
	lw      $t2, 0x005C($sp)
	bne     $t3, $v0, 31$
	lbu     $t4, 0x005B($sp)
	b       33$
	move    $a3, $0
31$:
	addu    $t8, $v0, $t2
	lbu     $a3, 0x0000($t8)
33$:
	lw      $v0, 0x0028($v1)
	li      $t1, 0x0003
	xor     $t0, $t1, $a3
	bne     $t3, $v0, 40$
	sltiu   $t0, $t0, 0x0001
	b       42$
	move    $a1, $0
40$:
	addu    $t9, $v0, $t2
	lbu     $a1, 0x0000($t9)
42$:
	sltu    $a0, $0, $t0
	beqz    $a0, 49$
	move    $a2, $a3
	xor     $a0, $t1, $a1
	sltiu   $a0, $a0, 0x0001
	sltu    $t5, $0, $a0
	move    $a0, $t5
49$:
	sltiu   $t6, $a2, 0x0001
	beqz    $t6, 55$
	sltiu   $t7, $a1, 0x0001
	sw      $0, 0x0000($v1)
	b       86$
	li      $t0, 0x0001
55$:
	beqz    $t7, 61$
	move    $v0, $a1
	li      $t8, 0x0001
	sw      $t8, 0x0000($v1)
	b       86$
	li      $t0, 0x0001
61$:
	beqz    $a0, 65$
	nop
	b       86$
	li      $t0, 0x0001
65$:
	beqz    $t0, 70$
	nop
	sw      $0, 0x0000($v1)
	b       86$
	li      $t0, 0x0001
70$:
	bne     $t1, $v0, 76$
	li      $t0, 0x0001
	li      $t5, 0x0001
	sw      $t5, 0x0000($v1)
	b       86$
	li      $t0, 0x0001
76$:
	beq     $t0, $a2, 80$
	nop
	b       86$
	sw      $0, 0x0000($v1)
80$:
	beq     $t0, $v0, 84$
	li      $t8, 0x0001
	b       86$
	sw      $t8, 0x0000($v1)
84$:
	b       263$
	move    $v0, $0
86$:
	lw      $t9, 0x0000($v1)
	li      $a1, 0x000C
	multu   $t9, $a1
	mflo    $t5
	addu    $t6, $v1, $t5
	lw      $v0, 0x001C($t6)
	beq     $t3, $v0, 109$
	addu    $t7, $t2, $v0
	bne     $t0, $t4, 109$
	sb      $0, 0x0000($t7)
	lw      $t8, 0x0000($v1)
	multu   $t8, $a1
	mflo    $t9
	addu    $t5, $v1, $t9
	lw      $a0, 0x001C($t5)
	sb      $t4, 0x005B($sp)
	sw      $t2, 0x005C($sp)
	jal     Na_memory_80316EC4
	sw      $v1, 0x0030($sp)
	lw      $v1, 0x0030($sp)
	li      $t0, 0x0001
	lw      $t2, 0x005C($sp)
	lbu     $t4, 0x005B($sp)
109$:
	lw      $a0, 0x0000($v1)
	li      $at, 0x0001
	addiu   $a1, $s0, 0x0198
	beqzl   $a0, 119$
	lw      $t6, 0x0000($a1)
	beq     $a0, $at, 165$
	addiu   $a1, $s0, 0x0198
	b       263$
	move    $v0, $0
	lw      $t6, 0x0000($a1)
119$:
	sw      $t6, 0x0014($v1)
	lw      $t7, 0x0088($sp)
	sw      $t7, 0x001C($v1)
	lw      $t8, 0x0080($sp)
	sw      $t8, 0x0018($v1)
	lw      $t5, 0x0080($sp)
	lw      $t9, 0x0000($a1)
	addu    $v0, $t9, $t5
	sw      $v0, 0x0004($a1)
	lw      $t6, 0x0020($v1)
	sltu    $at, $t6, $v0
	beqzl   $at, 160$
	lw      $a0, 0x0014($v1)
	lw      $t7, 0x0028($v1)
	addu    $t8, $t2, $t7
	beqz    $t4, 140$
	sb      $0, 0x0000($t8)
	beql    $t4, $t0, 148$
	lw      $a0, 0x0028($v1)
	b       154$
	li      $t9, -0x0001
140$:
	lw      $a0, 0x0028($v1)
	sw      $a1, 0x002C($sp)
	jal     Na_memory_80316FB4
	sw      $v1, 0x0030($sp)
	lw      $v1, 0x0030($sp)
	b       153$
	lw      $a1, 0x002C($sp)
	lw      $a0, 0x0028($v1)
148$:
	sw      $a1, 0x002C($sp)
	jal     Na_memory_80316EC4
	sw      $v1, 0x0030($sp)
	lw      $v1, 0x0030($sp)
	lw      $a1, 0x002C($sp)
153$:
	li      $t9, -0x0001
154$:
	sw      $t9, 0x0028($v1)
	lw      $t6, 0x0000($a1)
	lw      $t5, 0x0008($a1)
	addu    $t7, $t5, $t6
	sw      $t7, 0x0020($v1)
	lw      $a0, 0x0014($v1)
160$:
	lw      $t8, 0x0000($v1)
	move    $v0, $a0
	xori    $t9, $t8, 0x0001
	b       263$
	sw      $t9, 0x0000($v1)
165$:
	lw      $t5, 0x0008($a1)
	lw      $t6, 0x0000($a1)
	lw      $t8, 0x0080($sp)
	addu    $t7, $t5, $t6
	subu    $t9, $t7, $t8
	addiu   $v0, $t9, -0x0010
	sw      $v0, 0x0020($v1)
	lw      $t6, 0x0088($sp)
	sw      $t6, 0x0028($v1)
	lw      $t7, 0x0080($sp)
	sw      $t7, 0x0024($v1)
	lw      $t8, 0x0004($a1)
	sltu    $at, $v0, $t8
	beqz    $at, 206$
	nop
	lw      $t9, 0x001C($v1)
	addu    $t5, $t2, $t9
	beqz    $t4, 188$
	sb      $0, 0x0000($t5)
	beql    $t4, $t0, 196$
	lw      $a0, 0x001C($v1)
	b       202$
	li      $t6, -0x0001
188$:
	lw      $a0, 0x001C($v1)
	sw      $a1, 0x002C($sp)
	jal     Na_memory_80316FB4
	sw      $v1, 0x0030($sp)
	lw      $v1, 0x0030($sp)
	b       201$
	lw      $a1, 0x002C($sp)
	lw      $a0, 0x001C($v1)
196$:
	sw      $a1, 0x002C($sp)
	jal     Na_memory_80316EC4
	sw      $v1, 0x0030($sp)
	lw      $v1, 0x0030($sp)
	lw      $a1, 0x002C($sp)
201$:
	li      $t6, -0x0001
202$:
	sw      $t6, 0x001C($v1)
	lw      $t7, 0x0000($a1)
	sw      $t7, 0x0004($a1)
	lw      $v0, 0x0020($v1)
206$:
	b       160$
	move    $a0, $v0
	b       263$
	move    $v0, $0
210$:
	lw      $t8, 0x007C($sp)
	lw      $t9, 0x0080($sp)
	addiu   $a0, $s0, 0x0004
	sw      $a3, 0x0084($sp)
	multu   $t8, $t9
	mflo    $a1
	jal     Na_memory_80317040
	nop
	lw      $t5, 0x0000($s0)
	li      $a1, 0x000C
	lw      $a3, 0x0084($sp)
	multu   $t5, $a1
	li      $t0, 0x0001
	mflo    $t6
	addu    $t7, $s0, $t6
	sw      $v0, 0x0014($t7)
	lw      $t8, 0x0000($s0)
	lw      $t7, 0x0088($sp)
	multu   $t8, $a1
	mflo    $t9
	addu    $v1, $s0, $t9
	lw      $t5, 0x0014($v1)
	bnezl   $t5, 249$
	sw      $t7, 0x001C($v1)
	beq     $a3, $t0, 246$
	li      $at, 0x0002
	bne     $a3, $at, 248$
	move    $a0, $s0
	lw      $t6, 0x0088($sp)
	lw      $a1, 0x007C($sp)
	lw      $a2, 0x0080($sp)
	move    $a3, $0
	jal     Na_memory_803173FC
	sw      $t6, 0x0010($sp)
	b       264$
	lw      $ra, 0x0024($sp)
246$:
	b       263$
	move    $v0, $0
248$:
	sw      $t7, 0x001C($v1)
249$:
	lw      $t9, 0x0000($s0)
	lw      $t8, 0x0080($sp)
	multu   $t9, $a1
	mflo    $t5
	addu    $t6, $s0, $t5
	sw      $t8, 0x0018($t6)
	lw      $t7, 0x0000($s0)
	addiu   $t9, $t7, 0x0001
	sll     $t8, $t9, 2
	subu    $t8, $t8, $t9
	sll     $t8, $t8, 2
	addu    $t6, $s0, $t8
	sw      $t9, 0x0000($s0)
	lw      $v0, 0x0008($t6)
263$:
	lw      $ra, 0x0024($sp)
264$:
	lw      $s0, 0x0020($sp)
	addiu   $sp, $sp, 0x0078
	jr      $ra
	nop

.globl Na_memory_8031782C
Na_memory_8031782C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	bnez    $a1, 20$
	move    $a3, $a0
	addiu   $v1, $a0, 0x0194
	lw      $t6, 0x001C($v1)
	li      $t7, 0x0001
	bnel    $a2, $t6, 13$
	lw      $t8, 0x0028($v1)
	sw      $t7, 0x0000($v1)
	b       44$
	lw      $v0, 0x0014($v1)
	lw      $t8, 0x0028($v1)
13$:
	bne     $a2, $t8, 18$
	nop
	sw      $0, 0x0000($v1)
	b       44$
	lw      $v0, 0x0020($v1)
18$:
	b       44$
	move    $v0, $0
20$:
	lw      $t9, 0x0000($a3)
	move    $a0, $a3
	move    $v0, $0
	beqz    $t9, 36$
	move    $v1, $a3
	lw      $t0, 0x001C($v1)
26$:
	bnel    $a2, $t0, 31$
	lw      $t1, 0x0000($a0)
	b       44$
	lw      $v0, 0x0014($v1)
	lw      $t1, 0x0000($a0)
31$:
	addiu   $v0, $v0, 0x0001
	addiu   $v1, $v1, 0x000C
	sltu    $at, $v0, $t1
	bnezl   $at, 26$
	lw      $t0, 0x001C($v1)
36$:
	li      $at, 0x0002
	bne     $a1, $at, 44$
	move    $v0, $0
	move    $a0, $a3
	jal     Na_memory_8031782C
	move    $a1, $0
	b       45$
	lw      $ra, 0x0014($sp)
44$:
	lw      $ra, 0x0014($sp)
45$:
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

Na_memory_803178EC:
	la.u    $v1, _Na_work_bss+0x10
	la.l    $v1, _Na_work_bss+0x10
	lhu     $v0, 0x0004($v1)
	bgez    $v0, 7$
	sra     $t6, $v0, 2
	addiu   $at, $v0, 0x0003
	sra     $t6, $at, 2
7$:
	subu    $t7, $v0, $t6
	jr      $ra
	sh      $t7, 0x0004($v1)

Na_memory_80317914:
	la.u    $v0, _Na_work_bss+0x5DE0
	la.l    $v0, _Na_work_bss+0x5DE0
	sw      $0, 0x0000($v0)
	lw      $t6, 0x0000($v0)
	slt     $at, $t6, $a0
	beqz    $at, 11$
	nop
	lw      $t7, 0x0000($v0)
8$:
	slt     $at, $t7, $a0
	bnezl   $at, 8$
	lw      $t7, 0x0000($v0)
11$:
	jr      $ra
	nop

.globl Na_memory_80317948
Na_memory_80317948:
	addiu   $sp, $sp, -0x0038
	la.u    $t6, Na_data_80335004
	sw      $ra, 0x0024($sp)
	sw      $s3, 0x0020($sp)
	sw      $s2, 0x001C($sp)
	sw      $s1, 0x0018($sp)
	sw      $s0, 0x0014($sp)
	sw      $a0, 0x0038($sp)
	la.l    $t6, Na_data_80335004
	lw      $t7, 0x0000($t6)
	beqzl   $t7, 133$
	lw      $t8, 0x0038($sp)
	jal     Na_memory_803178EC
	nop
	lui     $v1, %hi(_Na_work_bss+0x5DD0)
	lw      $v1, %lo(_Na_work_bss+0x5DD0)($v1)
	move    $s0, $0
	move    $a0, $0
	blez    $v1, 58$
	move    $s1, $0
	la.u    $a2, _Na_work_bss+0x5DDE
	la.u    $a1, _Na_work_bss+0x1870
	la.l    $a1, _Na_work_bss+0x1870
	la.l    $a2, _Na_work_bss+0x5DDE
24$:
	lw      $t8, 0x0000($a1)
	addiu   $s0, $s0, 0x0001
	addu    $v0, $t8, $a0
	lw      $t9, 0x0000($v0)
	srl     $t4, $t9, 31
	beqzl   $t4, 56$
	slt     $at, $s0, $v1
	lbu     $t5, 0x0055($v0)
	beqzl   $t5, 56$
	slt     $at, $s0, $v1
	lb      $t6, 0x0000($a2)
	li      $t7, 0x8000
	lui     $v1, %hi(_Na_work_bss+0x5DD0)
	div     $0, $t7, $t6
	mflo    $t8
	sh      $t8, 0x0062($v0)
	lw      $t9, 0x0000($a1)
	bnez    $t6, 44$
	nop
	break   7
44$:
	li      $at, -0x0001
	bne     $t6, $at, 50$
	li      $at, 0x80000000
	bne     $t7, $at, 50$
	nop
	break   6
50$:
	addu    $v0, $t9, $a0
	lbu     $t4, 0x0054($v0)
	ori     $t5, $t4, 0x0010
	sb      $t5, 0x0054($v0)
	lw      $v1, %lo(_Na_work_bss+0x5DD0)($v1)
	slt     $at, $s0, $v1
56$:
	bnez    $at, 24$
	addiu   $a0, $a0, 0x00C0
58$:
	jal     Na_memory_80317914
	li      $a0, 0x0001
	addiu   $s1, $s1, 0x0001
	slti    $at, $s1, 0x00F1
	beqz    $at, 82$
	lui     $v1, %hi(_Na_work_bss+0x5DD0)
	lw      $v1, %lo(_Na_work_bss+0x5DD0)($v1)
	move    $s0, $0
	lui     $v0, %hi(_Na_work_bss+0x1870)
	blez    $v1, 78$
	nop
	lw      $v0, %lo(_Na_work_bss+0x1870)($v0)
70$:
	lw      $t7, 0x0000($v0)
	srl     $t6, $t7, 31
	bnez    $t6, 78$
	nop
	addiu   $s0, $s0, 0x0001
	slt     $at, $s0, $v1
	bnez    $at, 70$
	addiu   $v0, $v0, 0x00C0
78$:
	beq     $s0, $v1, 82$
	nop
	b       58$
	nop
82$:
	jal     Na_memory_803178EC
	nop
	jal     Na_memory_80317914
	li      $a0, 0x0003
	li.u    $t8, 0x19710515
	la.u    $t9, Na_data_80335004
	la.l    $t9, Na_data_80335004
	li.l    $t8, 0x19710515
	sw      $t8, 0x0000($t9)
	jal     Na_memory_80317914
	li      $a0, 0x0003
	la.u    $s3, _Na_work_bss+0x5DE4
	la.l    $s3, _Na_work_bss+0x5DE4
	lw      $s1, 0x0000($s3)
	la.u    $s2, _Na_work_bss+0x4F48
	la.l    $s2, _Na_work_bss+0x4F48
	blez    $s1, 117$
	nop
	lw      $t4, 0x0000($s3)
101$:
	move    $s0, $0
	blez    $t4, 115$
	move    $a0, $s2
104$:
	move    $a1, $0
	jal     osRecvMesg
	move    $a2, $0
	bnezl   $v0, 111$
	lw      $t5, 0x0000($s3)
	addiu   $s1, $s1, -0x0001
	lw      $t5, 0x0000($s3)
111$:
	addiu   $s0, $s0, 0x0001
	slt     $at, $s0, $t5
	bnezl   $at, 104$
	move    $a0, $s2
115$:
	bgtzl   $s1, 101$
	lw      $t4, 0x0000($s3)
117$:
	la.u    $v1, _Na_work_bss+0x5EA0
	la.u    $a2, _Na_work_bss+0x5EAC
	sw      $0, 0x0000($s3)
	la.l    $a2, _Na_work_bss+0x5EAC
	la.l    $v1, _Na_work_bss+0x5EA0
	li      $a0, 0x0A00
	move    $v0, $0
124$:
	lw      $t7, 0x0000($v1)
	addu    $t6, $t7, $v0
	addiu   $v0, $v0, 0x0002
	bne     $v0, $a0, 124$
	sh      $0, 0x0000($t6)
	addiu   $v1, $v1, 0x0004
	bnel    $v1, $a2, 124$
	move    $v0, $0
	lw      $t8, 0x0038($sp)
133$:
	lui     $at, %hi(_Na_work_bss+0x5B98)
	sw      $0, %lo(_Na_work_bss+0x5B98)($at)
	lhu     $t9, 0x0006($t8)
	sw      $t9, 0x002C($sp)
	jal     osAiSetFrequency
	lw      $a0, 0x0000($t8)
	li      $at, 0x003C
	div     $0, $v0, $at
	lw      $t0, 0x0038($sp)
	la.u    $v1, _Na_work_bss+0x5DC4
	la.l    $v1, _Na_work_bss+0x5DC4
	sw      $v0, 0x0000($v1)
	lbu     $t4, 0x0004($t0)
	mflo    $t7
	la.u    $t2, _Na_work_bss+0x5DD4
	la.u    $t3, _Na_work_bss+0x5DD0
	addiu   $t6, $t7, 0x000F
	li      $at, -0x0010
	la.l    $t3, _Na_work_bss+0x5DD0
	la.l    $t2, _Na_work_bss+0x5DD4
	and     $t9, $t6, $at
	sw      $t9, 0x0000($t2)
	sw      $t4, 0x0000($t3)
	lbu     $t8, 0x0005($t0)
	la.u    $t1, _Na_work_bss+0x102
	la.l    $t1, _Na_work_bss+0x102
	sb      $t8, 0x0000($t1)
	lb      $t4, 0x0000($t1)
	addiu   $t5, $t4, -0x0001
	sltiu   $at, $t5, 0x0010
	beqz    $at, L80317C3C
	sll     $t5, $t5, 2
	lui     $at, %hi(Na_memory_80338DC0)
	addu    $at, $at, $t5
	lw      $t5, %lo(Na_memory_80338DC0)($at)
	jr      $t5
	nop
.globl L80317BF0
L80317BF0:
	lui     $at, %hi(_Na_work_bss+0x103)
	b       191$
	sb      $0, %lo(_Na_work_bss+0x103)($at)
.globl L80317BFC
L80317BFC:
	li      $t7, 0x0001
	lui     $at, %hi(_Na_work_bss+0x103)
	b       191$
	sb      $t7, %lo(_Na_work_bss+0x103)($at)
.globl L80317C0C
L80317C0C:
	li      $t6, 0x0002
	lui     $at, %hi(_Na_work_bss+0x103)
	b       191$
	sb      $t6, %lo(_Na_work_bss+0x103)($at)
.globl L80317C1C
L80317C1C:
	li      $t9, 0x0003
	lui     $at, %hi(_Na_work_bss+0x103)
	b       191$
	sb      $t9, %lo(_Na_work_bss+0x103)($at)
.globl L80317C2C
L80317C2C:
	li      $t8, 0x0004
	lui     $at, %hi(_Na_work_bss+0x103)
	b       191$
	sb      $t8, %lo(_Na_work_bss+0x103)($at)
.globl L80317C3C
L80317C3C:
	lui     $at, %hi(_Na_work_bss+0x103)
	sb      $0, %lo(_Na_work_bss+0x103)($at)
191$:
	lbu     $t4, 0x0005($t0)
	lui     $at, %hi(_Na_work_bss+0x100)
	lui     $t9, %hi(Na_TickRate)
	sb      $t4, 0x0000($t1)
	lhu     $t5, 0x000A($t0)
	lh      $t9, %lo(Na_TickRate)($t9)
	li      $t4, 0x0001
	sh      $t5, %lo(_Na_work_bss+0x100)($at)
	lw      $v0, 0x0000($t2)
	lui     $at, %hi(_Na_work_bss+0x5DD8)
	mtc1    $t9, $f16
	addiu   $t7, $v0, -0x0010
	sw      $t7, %lo(_Na_work_bss+0x5DD8)($at)
	li      $at, 0x00A0
	div     $0, $v0, $at
	mflo    $v1
	addiu   $v1, $v1, 0x0001
	sll     $a1, $v1, 24
	sra     $t6, $a1, 24
	move    $a1, $t6
	mtc1    $a1, $f4
	lui     $at, %hi(_Na_work_bss+0x5DDE)
	sb      $v1, %lo(_Na_work_bss+0x5DDE)($at)
	cvt.s.w $f6, $f4
	lui     $at, %hi(Na_memory_80338E00)
	lwc1    $f8, %lo(Na_memory_80338E00)($at)
	lui     $at, %hi(Na_memory_80338E04)
	la.u    $a0, _Na_work_bss+0x6F8
	cvt.s.w $f18, $f16
	mul.s   $f10, $f6, $f8
	lwc1    $f6, %lo(Na_memory_80338E04)($at)
	la.u    $s3, _Na_work_bss+0x5DCC
	la.l    $s3, _Na_work_bss+0x5DCC
	la.l    $a0, _Na_work_bss+0x6F8
	div.s   $f4, $f10, $f18
	div.s   $f8, $f4, $f6
	cfc1    $t8, $31
	ctc1    $t4, $31
	nop
	cvt.w.s $f16, $f8
	cfc1    $t4, $31
	nop
	andi    $t4, $t4, 0x0078
	beqz    $t4, 253$
	li      $at, 0x4F000000
	mtc1    $at, $f16
	li      $t4, 0x0001
	sub.s   $f16, $f8, $f16
	ctc1    $t4, $31
	nop
	cvt.w.s $f16, $f16
	cfc1    $t4, $31
	nop
	andi    $t4, $t4, 0x0078
	bnez    $t4, 251$
	nop
	mfc1    $t4, $f16
	li      $at, 0x80000000
	b       257$
	or      $t4, $t4, $at
251$:
	b       257$
	li      $t4, -0x0001
253$:
	mfc1    $t4, $f16
	nop
	bltz    $t4, 251$
	nop
257$:
	lui     $at, %hi(_Na_work_bss+0x5DDC)
	sh      $t4, %lo(_Na_work_bss+0x5DDC)($at)
	lw      $t5, 0x0000($t3)
	ctc1    $t8, $31
	sll     $t7, $t5, 2
	addu    $t7, $t7, $t5
	sll     $t7, $t7, 2
	multu   $t7, $a1
	mflo    $t6
	addiu   $t9, $t6, 0x0140
	sw      $t9, 0x0000($s3)
	lw      $t4, 0x000C($t0)
	lw      $t8, 0x0010($t0)
	lw      $t7, 0x0014($t0)
	lw      $t5, 0x0018($t0)
	lui     $t6, %hi(_Na_work_bss+0x110)
	lw      $t6, %lo(_Na_work_bss+0x110)($t6)
	addu    $s0, $t8, $t4
	addu    $s1, $t5, $t7
	addu    $a2, $s0, $s1
	subu    $a3, $t6, $a2
	addiu   $a3, $a3, -0x0100
	sw      $a3, 0x0000($a0)
	jal     Na_memory_80317184
	sw      $a2, 0x000C($a0)
	la.u    $a0, _Na_work_bss+0x708
	la.l    $a0, _Na_work_bss+0x708
	sw      $s0, 0x0000($a0)
	jal     Na_memory_80317200
	sw      $s1, 0x0004($a0)
	lw      $v0, 0x0038($sp)
	la.u    $a0, _Na_work_bss+0x710
	la.l    $a0, _Na_work_bss+0x710
	lw      $t9, 0x000C($v0)
	sw      $t9, 0x0000($a0)
	lw      $t8, 0x0010($v0)
	sw      $0, 0x0008($a0)
	jal     Na_memory_8031727C
	sw      $t8, 0x0004($a0)
	lw      $t4, 0x0038($sp)
	lw      $t7, 0x0038($sp)
	la.u    $a0, _Na_work_bss+0x720
	lw      $t5, 0x0014($t4)
	la.l    $a0, _Na_work_bss+0x720
	sw      $t5, 0x0000($a0)
	lw      $t6, 0x0018($t7)
	sw      $0, 0x0008($a0)
	jal     Na_memory_80317338
	sw      $t6, 0x0004($a0)
	jal     Na_memory_80316E80
	nop
	la.u    $s0, _Na_work_bss+0x5DF0
	la.u    $s2, _Na_work_bss+0x128
	la.u    $s1, _Na_work_bss+0x5DF8
	la.l    $s1, _Na_work_bss+0x5DF8
	la.l    $s2, _Na_work_bss+0x128
	la.l    $s0, _Na_work_bss+0x5DF0
314$:
	lw      $a1, 0x0000($s3)
	move    $a0, $s2
	sll     $t9, $a1, 3
	jal     Na_memory_80317040
	move    $a1, $t9
	addiu   $s0, $s0, 0x0004
	bne     $s0, $s1, 314$
	sw      $v0, -0x0004($s0)
	lui     $a1, %hi(_Na_work_bss+0x5DD0)
	lw      $a1, %lo(_Na_work_bss+0x5DD0)($a1)
	move    $a0, $s2
	sll     $t8, $a1, 2
	subu    $t8, $t8, $a1
	jal     Na_memory_80317040
	sll     $a1, $t8, 6
	lui     $at, %hi(_Na_work_bss+0x1870)
	jal     Na_voice_8031ADAC
	sw      $v0, %lo(_Na_work_bss+0x1870)($at)
	jal     Na_voice_8031A2B4
	nop
	lw      $v0, 0x002C($sp)
	la.u    $s1, _Na_work_bss+0x10
	la.l    $s1, _Na_work_bss+0x10
	bnez    $v0, 343$
	li      $t4, 0x0008
	la.u    $s1, _Na_work_bss+0x10
	la.l    $s1, _Na_work_bss+0x10
	b       423$
	sb      $0, 0x0001($s1)
343$:
	sll     $s0, $v0, 1
	sb      $t4, 0x0001($s1)
	move    $a1, $s0
	jal     Na_memory_80317040
	move    $a0, $s2
	sw      $v0, 0x0014($s1)
	move    $a0, $s2
	jal     Na_memory_80317040
	move    $a1, $s0
	lw      $t5, 0x002C($sp)
	lw      $t7, 0x0038($sp)
	sw      $v0, 0x0018($s1)
	sw      $0, 0x0008($s1)
	sw      $0, 0x000C($s1)
	sb      $0, 0x0003($s1)
	sw      $t5, 0x0010($s1)
	lhu     $t6, 0x0008($t7)
	li      $t9, 0x0002
	sb      $t9, 0x0002($s1)
	lui     $v1, %hi(_Na_work_bss+0x102)
	sh      $t6, 0x0004($s1)
	lb      $v1, %lo(_Na_work_bss+0x102)($v1)
	li      $at, 0x0001
	li      $t8, 0x0001
	beq     $v1, $at, 423$
	li      $t4, 0x8000
	div     $0, $t4, $v1
	mflo    $t5
	sb      $t8, 0x0000($s1)
	bnez    $v1, 375$
	nop
	break   7
375$:
	li      $at, -0x0001
	bne     $v1, $at, 381$
	li      $at, 0x80000000
	bne     $t4, $at, 381$
	nop
	break   6
381$:
	sh      $t5, 0x0006($s1)
	move    $a0, $s2
	li      $a1, 0x0020
	jal     Na_memory_80317040
	move    $s0, $0
	sw      $v0, 0x001C($s1)
	move    $a0, $s2
	jal     Na_memory_80317040
	li      $a1, 0x0020
	sw      $v0, 0x0020($s1)
	move    $a0, $s2
	jal     Na_memory_80317040
	li      $a1, 0x0020
	sw      $v0, 0x0024($s1)
	move    $a0, $s2
	jal     Na_memory_80317040
	li      $a1, 0x0020
	sw      $v0, 0x0028($s1)
	lui     $t7, %hi(_Na_work_bss+0x5DDE)
	lb      $t7, %lo(_Na_work_bss+0x5DDE)($t7)
	la.u    $s1, _Na_work_bss+0x10
	la.l    $s1, _Na_work_bss+0x10
	blez    $t7, 423$
	move    $a0, $s2
405$:
	jal     Na_memory_80317040
	li      $a1, 0x0280
	addiu   $t6, $v0, 0x0140
	sw      $v0, 0x0030($s1)
	sw      $t6, 0x0034($s1)
	move    $a0, $s2
	jal     Na_memory_80317040
	li      $a1, 0x0280
	addiu   $t9, $v0, 0x0140
	lui     $t8, %hi(_Na_work_bss+0x5DDE)
	sw      $v0, 0x0080($s1)
	sw      $t9, 0x0084($s1)
	lb      $t8, %lo(_Na_work_bss+0x5DDE)($t8)
	addiu   $s0, $s0, 0x0001
	addiu   $s1, $s1, 0x0014
	slt     $at, $s0, $t8
	bnezl   $at, 405$
	move    $a0, $s2
423$:
	lui     $a0, %hi(_Na_work_bss+0x5DD0)
	jal     Na_system_80318634
	lw      $a0, %lo(_Na_work_bss+0x5DD0)($a0)
	jal     osWritebackDCacheAll
	nop
	la.u    $t4, Na_data_80335004
	la.l    $t4, Na_data_80335004
	lw      $t5, 0x0000($t4)
	li.u    $t7, 0x76557364
	li.l    $t7, 0x76557364
	beqzl   $t5, 437$
	lw      $ra, 0x0024($sp)
	sw      $t7, 0x0000($t4)
	lw      $ra, 0x0024($sp)
437$:
	lw      $s0, 0x0014($sp)
	lw      $s1, 0x0018($sp)
	lw      $s2, 0x001C($sp)
	lw      $s3, 0x0020($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0038
