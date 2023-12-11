.include "sm64/asm.inc"

.set noreorder
.set noat

.align 4

pl_demo_80256E00:
	addiu   $sp, $sp, -0x0010
	sw      $0, 0x0008($sp)
	lb      $t6, 0x0000($a0)
	addiu   $a0, $a0, 0x0001
	sw      $t6, 0x000C($sp)
	lw      $a1, 0x000C($sp)
	sltu    $t7, $0, $a1
	move    $a1, $t7
	beqz    $a1, 28$
	nop
10$:
	lw      $t8, 0x000C($sp)
	li      $at, 0x0020
	bne     $t8, $at, 16$
	nop
	b       17$
	li      $a1, 0x0004
16$:
	li      $a1, 0x0007
17$:
	lw      $t9, 0x0008($sp)
	addu    $t0, $t9, $a1
	sw      $t0, 0x0008($sp)
	lb      $t1, 0x0000($a0)
	addiu   $a0, $a0, 0x0001
	sw      $t1, 0x000C($sp)
	lw      $a1, 0x000C($sp)
	sltu    $t2, $0, $a1
	move    $a1, $t2
	bnez    $a1, 10$
	nop
28$:
	b       32$
	lw      $v0, 0x0008($sp)
	b       32$
	nop
32$:
	jr      $ra
	addiu   $sp, $sp, 0x0010

.globl staff_draw
staff_draw:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(pl_demo_staff)
	lw      $t6, %lo(pl_demo_staff)($t6)
	beqz    $t6, 111$
	nop
	lui     $t7, %hi(pl_demo_staff)
	lw      $t7, %lo(pl_demo_staff)($t7)
	lw      $t8, 0x000C($t7)
	sw      $t8, 0x0034($sp)
	lw      $t9, 0x0034($sp)
	lw      $t0, 0x0000($t9)
	addiu   $t1, $t9, 0x0004
	sw      $t1, 0x0034($sp)
	sw      $t0, 0x0030($sp)
	lw      $t2, 0x0030($sp)
	lb      $t3, 0x0000($t2)
	addiu   $t5, $t2, 0x0001
	sw      $t5, 0x0030($sp)
	addiu   $t4, $t3, -0x0030
	sh      $t4, 0x002E($sp)
	lui     $t6, %hi(pl_demo_staff)
	lw      $t6, %lo(pl_demo_staff)($t6)
	lbu     $t7, 0x0002($t6)
	andi    $t8, $t7, 0x0020
	beqz    $t8, 30$
	nop
	b       31$
	li      $s0, 0x001C
30$:
	li      $s0, 0x00AC
31$:
	lh      $t0, 0x002E($sp)
	xori    $t9, $t0, 0x0001
	sltiu   $t9, $t9, 0x0001
	sll     $t1, $t9, 4
	addu    $t3, $s0, $t1
	sh      $t3, 0x002C($sp)
	li      $t4, 0x0010
	sh      $t4, 0x002A($sp)
	jal     staff_draw_start
	nop
	li      $a0, 0x001C
	lh      $a1, 0x002C($sp)
	jal     staff_print
	lw      $a2, 0x0030($sp)
	lh      $s0, 0x002E($sp)
	li      $at, 0x0004
	beq     $s0, $at, 54$
	nop
	li      $at, 0x0005
	beq     $s0, $at, 68$
	nop
	b       80$
	nop
54$:
	lw      $t2, 0x0034($sp)
	lh      $a1, 0x002C($sp)
	li      $a0, 0x001C
	lw      $a2, 0x0000($t2)
	addiu   $t5, $t2, 0x0004
	sw      $t5, 0x0034($sp)
	jal     staff_print
	addiu   $a1, $a1, 0x0018
	li      $t6, 0x0002
	sh      $t6, 0x002E($sp)
	li      $t7, 0x0018
	sh      $t7, 0x002A($sp)
	b       80$
	nop
68$:
	lw      $t8, 0x0034($sp)
	lh      $a1, 0x002C($sp)
	li      $a0, 0x001C
	lw      $a2, 0x0000($t8)
	addiu   $t0, $t8, 0x0004
	sw      $t0, 0x0034($sp)
	jal     staff_print
	addiu   $a1, $a1, 0x0010
	li      $t9, 0x0003
	sh      $t9, 0x002E($sp)
	b       80$
	nop
80$:
	lh      $t1, 0x002E($sp)
	slt     $s0, $0, $t1
	addiu   $t3, $t1, -0x0001
	beqz    $s0, 107$
	sh      $t3, 0x002E($sp)
85$:
	lw      $t4, 0x0034($sp)
	jal     pl_demo_80256E00
	lw      $a0, 0x0000($t4)
	lw      $t5, 0x0034($sp)
	move    $s0, $v0
	li      $t2, 0x0124
	subu    $a0, $t2, $s0
	lh      $a1, 0x002C($sp)
	jal     staff_print
	lw      $a2, 0x0000($t5)
	lh      $t6, 0x002C($sp)
	lh      $t7, 0x002A($sp)
	addu    $t8, $t6, $t7
	sh      $t8, 0x002C($sp)
	lw      $t0, 0x0034($sp)
	addiu   $t9, $t0, 0x0004
	sw      $t9, 0x0034($sp)
	lh      $t1, 0x002E($sp)
	slt     $s0, $0, $t1
	addiu   $t3, $t1, -0x0001
	bnez    $s0, 85$
	sh      $t3, 0x002E($sp)
107$:
	jal     staff_draw_end
	nop
	lui     $at, %hi(pl_demo_staff)
	sw      $0, %lo(pl_demo_staff)($at)
111$:
	b       113$
	nop
113$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

.globl pl_demo_80257060
pl_demo_80257060:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $a0, %hi(pl_demo_8033B2B8)
	jal     objlib_8029F4B4
	lh      $a0, %lo(pl_demo_8033B2B8)($a0)
	jal     objlib_8029FF04
	nop
	beqz    $v0, 25$
	nop
	lui     $t6, %hi(pl_demo_8033B2B8)
	lh      $t6, %lo(pl_demo_8033B2B8)($t6)
	slti    $at, $t6, 0x0003
	bnez    $at, 20$
	nop
	li      $at, 0x0006
	beq     $t6, $at, 20$
	nop
	li      $at, 0x0007
	bne     $t6, $at, 25$
	nop
20$:
	lui     $t7, %hi(pl_demo_8033B2B8)
	lh      $t7, %lo(pl_demo_8033B2B8)($t7)
	lui     $at, %hi(pl_demo_8033B2B8)
	addiu   $t8, $t7, 0x0001
	sh      $t8, %lo(pl_demo_8033B2B8)($at)
25$:
	b       27$
	nop
27$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl pl_demo_802570DC
pl_demo_802570DC:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $0, $f6
	move    $t7, $0
	lwc1    $f4, 0x00A0($t6)
	c.le.s  $f6, $f4
	nop
	bc1f    12$
	nop
	li      $t7, 0x0001
12$:
	sw      $t7, 0x001C($sp)
	lw      $t8, 0x001C($sp)
	lui     $a0, %hi(pl_demo_8033B2BC)
	sll     $t9, $t8, 1
	addu    $a0, $a0, $t9
	jal     objlib_8029F4B4
	lh      $a0, %lo(pl_demo_8033B2BC)($a0)
	jal     objlib_8029FF04
	nop
	beqz    $v0, 41$
	nop
	lw      $t0, 0x001C($sp)
	lui     $t2, %hi(pl_demo_8033B2BC)
	sll     $t1, $t0, 1
	addu    $t2, $t2, $t1
	lh      $t2, %lo(pl_demo_8033B2BC)($t2)
	beqz    $t2, 33$
	nop
	li      $at, 0x0002
	bne     $t2, $at, 41$
	nop
33$:
	lw      $t3, 0x001C($sp)
	la.u    $t5, pl_demo_8033B2BC
	la.l    $t5, pl_demo_8033B2BC
	sll     $t4, $t3, 1
	addu    $t6, $t4, $t5
	lh      $t7, 0x0000($t6)
	addiu   $t8, $t7, 0x0001
	sh      $t8, 0x0000($t6)
41$:
	b       43$
	nop
43$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl s_pl_demo_80257198
s_pl_demo_80257198:
	addiu   $sp, $sp, -0x0008
	sw      $a2, 0x0010($sp)
	sw      $a1, 0x0004($sp)
	li      $at, 0x0001
	bne     $a0, $at, 48$
	nop
	lui     $t6, %hi(pl_demo_8032DB44)
	lb      $t6, %lo(pl_demo_8032DB44)($t6)
	bnez    $t6, 39$
	nop
	lui     $t7, %hi(draw_timer)
	lhu     $t7, %lo(draw_timer)($t7)
	addiu   $t8, $t7, 0x0020
	sra     $t9, $t8, 1
	andi    $t0, $t9, 0x001F
	sh      $t0, 0x0002($sp)
	lh      $t1, 0x0002($sp)
	slti    $at, $t1, 0x0007
	beqz    $at, 31$
	nop
	lh      $t2, 0x0002($sp)
	lui     $t3, %hi(pl_demo_8032DB4C)
	lui     $t4, %hi(pl_demo_8032DB48)
	lb      $t4, %lo(pl_demo_8032DB48)($t4)
	addu    $t3, $t3, $t2
	lb      $t3, %lo(pl_demo_8032DB4C)($t3)
	lw      $t7, 0x0004($sp)
	sll     $t5, $t4, 2
	addu    $t6, $t3, $t5
	b       37$
	sh      $t6, 0x001E($t7)
31$:
	lui     $t8, %hi(pl_demo_8032DB48)
	lb      $t8, %lo(pl_demo_8032DB48)($t8)
	lw      $t1, 0x0004($sp)
	sll     $t9, $t8, 2
	addiu   $t0, $t9, 0x0001
	sh      $t0, 0x001E($t1)
37$:
	b       48$
	nop
39$:
	lui     $t2, %hi(pl_demo_8032DB48)
	lb      $t2, %lo(pl_demo_8032DB48)($t2)
	lui     $t3, %hi(pl_demo_8032DB44)
	lb      $t3, %lo(pl_demo_8032DB44)($t3)
	lw      $t7, 0x0004($sp)
	sll     $t4, $t2, 2
	addu    $t5, $t4, $t3
	addiu   $t6, $t5, -0x0001
	sh      $t6, 0x001E($t7)
48$:
	b       52$
	move    $v0, $0
	b       52$
	nop
52$:
	jr      $ra
	addiu   $sp, $sp, 0x0008

pl_demo_80257270:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	jal     msg_get
	nop
	li      $at, -0x0001
	bne     $v0, $at, 10$
	nop
	lw      $t6, 0x0018($sp)
	sh      $0, 0x0000($t6)
10$:
	b       12$
	nop
12$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_demo_802572B0:
	addiu   $sp, $sp, -0x0010
	sw      $0, 0x0008($sp)
	sw      $0, 0x000C($sp)
3$:
	lw      $t6, 0x000C($sp)
	lui     $t7, %hi(pl_demo_8032DB54)
	addu    $t7, $t7, $t6
	lbu     $t7, %lo(pl_demo_8032DB54)($t7)
	sw      $t7, 0x0004($sp)
	lh      $t8, 0x00B8($a0)
	lw      $t9, 0x0004($sp)
	slt     $at, $t8, $t9
	beqz    $at, 22$
	nop
	lh      $t0, 0x00AA($a0)
	slt     $at, $t0, $t9
	bnez    $at, 22$
	nop
	lw      $t1, 0x000C($sp)
	addiu   $t2, $t1, 0x008D
	sw      $t2, 0x0008($sp)
	b       27$
	nop
22$:
	lw      $t3, 0x000C($sp)
	addiu   $t4, $t3, 0x0001
	slti    $at, $t4, 0x0006
	bnez    $at, 3$
	sw      $t4, 0x000C($sp)
27$:
	lh      $t5, 0x00AA($a0)
	sh      $t5, 0x00B8($a0)
	b       33$
	lw      $v0, 0x0008($sp)
	b       33$
	nop
33$:
	jr      $ra
	addiu   $sp, $sp, 0x0010

pl_demo_8025733C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	jal     player_8025097C
	lw      $a0, 0x0020($sp)
	beqz    $v0, 63$
	nop
	lui     $t6, %hi(msg_result)
	lh      $t6, %lo(msg_result)($t6)
	beqz    $t6, 63$
	nop
	lui     $t7, %hi(msg_result)
	lh      $t7, %lo(msg_result)($t7)
	li      $at, 0x0001
	beq     $t7, $at, 19$
	nop
	li      $at, 0x0002
	bne     $t7, $at, 31$
	nop
19$:
	lui     $a0, %hi(file_index)
	lh      $a0, %lo(file_index)($a0)
	jal     save_file_write
	addiu   $a0, $a0, -0x0001
	lui     $t8, %hi(msg_result)
	lh      $t8, %lo(msg_result)($t8)
	li      $at, 0x0002
	bne     $t8, $at, 31$
	nop
	li      $a0, -0x0002
	jal     game_fadeout
	move    $a1, $0
31$:
	lui     $t9, %hi(msg_result)
	lh      $t9, %lo(msg_result)($t9)
	li      $at, 0x0002
	beq     $t9, $at, 63$
	nop
	jal     objlib_802A4728
	nop
	lw      $t0, 0x0020($sp)
	li      $at, 0x8000
	lh      $t1, 0x002E($t0)
	addu    $t2, $t1, $at
	sh      $t2, 0x002E($t0)
	jal     pl_demo_802572B0
	lw      $a0, 0x0020($sp)
	sw      $v0, 0x001C($sp)
	lw      $t3, 0x001C($sp)
	beqz    $t3, 58$
	nop
	jal     Na_PeachMessage
	nop
	li.u    $a1, 0x20001305
	li.l    $a1, 0x20001305
	lw      $a0, 0x0020($sp)
	jal     pl_set_state
	lw      $a2, 0x001C($sp)
	b       63$
	nop
58$:
	li.u    $a1, 0x0C400201
	li.l    $a1, 0x0C400201
	lw      $a0, 0x0020($sp)
	jal     pl_set_state
	move    $a2, $0
63$:
	b       65$
	nop
65$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

pl_demo_80257450:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	sw      $a2, 0x0028($sp)
	sw      $a3, 0x002C($sp)
	lw      $t6, 0x0020($sp)
	lw      $a1, 0x0024($sp)
	lw      $a2, 0x0028($sp)
	jal     obj_make_here
	lw      $a0, 0x0088($t6)
	sw      $v0, 0x001C($sp)
	lw      $t7, 0x0020($sp)
	lh      $t9, 0x002E($sp)
	lw      $t1, 0x001C($sp)
	lh      $t8, 0x002E($t7)
	addu    $t0, $t8, $t9
	sw      $t0, 0x00D4($t1)
	lw      $t2, 0x0020($sp)
	lw      $t3, 0x001C($sp)
	lwc1    $f4, 0x003C($t2)
	swc1    $f4, 0x00A0($t3)
	lw      $t4, 0x0020($sp)
	lw      $t5, 0x001C($sp)
	lwc1    $f6, 0x0040($t4)
	swc1    $f6, 0x00A4($t5)
	lw      $t6, 0x0020($sp)
	lw      $t7, 0x001C($sp)
	lwc1    $f8, 0x0044($t6)
	swc1    $f8, 0x00A8($t7)
	b       34$
	lw      $v0, 0x001C($sp)
	b       34$
	nop
34$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

pl_demo_802574E8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	li      $at, -0x0011
	lw      $t7, 0x0004($t6)
	and     $t8, $t7, $at
	sw      $t8, 0x0004($t6)
	lw      $t9, 0x0018($sp)
	lw      $t0, 0x0004($t9)
	ori     $t1, $t0, 0x0020
	sw      $t1, 0x0004($t9)
	lw      $t2, 0x0018($sp)
	li.u    $a0, 0x043D8081
	li.l    $a0, 0x043D8081
	lw      $a1, 0x0088($t2)
	jal     Na_SePlay
	addiu   $a1, $a1, 0x0054
	b       20$
	nop
20$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_demo_80257548:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	li      $at, -0x0021
	lw      $t7, 0x0004($t6)
	and     $t8, $t7, $at
	sw      $t8, 0x0004($t6)
	lw      $t9, 0x0018($sp)
	lw      $t0, 0x0004($t9)
	ori     $t1, $t0, 0x0010
	sw      $t1, 0x0004($t9)
	lw      $t2, 0x0018($sp)
	li.u    $a0, 0x043E8081
	li.l    $a0, 0x043E8081
	lw      $a1, 0x0088($t2)
	jal     Na_SePlay
	addiu   $a1, $a1, 0x0054
	b       20$
	nop
20$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl pl_demo_802575A8
pl_demo_802575A8:
	addiu   $sp, $sp, -0x0008
	lui     $t6, %hi(mario)
	lw      $t6, %lo(mario)($t6)
	lw      $t7, 0x000C($t6)
	andi    $t8, $t7, 0x01C0
	sw      $t8, 0x0004($sp)
	sw      $0, 0x0000($sp)
	lui     $t9, %hi(mario)
	lw      $t9, %lo(mario)($t9)
	li      $at, 0x130A
	lw      $t0, 0x000C($t9)
	beq     $t0, $at, 19$
	nop
	lw      $t1, 0x0004($sp)
	beqz    $t1, 19$
	nop
	li      $at, 0x0040
	bne     $t1, $at, 32$
	nop
19$:
	lui     $t2, %hi(mario)
	lw      $t2, %lo(mario)($t2)
	li      $at, 0x00030000
	lw      $t3, 0x000C($t2)
	and     $t4, $t3, $at
	bnez    $t4, 32$
	nop
	li.u    $at, 0x0C000227
	li.l    $at, 0x0C000227
	beq     $t3, $at, 32$
	nop
	li      $t5, 0x0001
	sw      $t5, 0x0000($sp)
32$:
	b       36$
	lw      $v0, 0x0000($sp)
	b       36$
	nop
36$:
	jr      $ra
	addiu   $sp, $sp, 0x0008

.globl pl_demo_80257640
pl_demo_80257640:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $0, 0x001C($sp)
	lui     $t6, %hi(mario)
	lw      $t6, %lo(mario)($t6)
	li.u    $at, 0x20001306
	li.l    $at, 0x20001306
	lw      $t7, 0x000C($t6)
	bne     $t7, $at, 38$
	nop
	lui     $t8, %hi(mario)
	lw      $t8, %lo(mario)($t8)
	lhu     $t9, 0x0018($t8)
	slti    $at, $t9, 0x0008
	beqz    $at, 19$
	nop
	li      $t0, 0x0001
	sw      $t0, 0x001C($sp)
19$:
	lui     $t1, %hi(mario)
	lw      $t1, %lo(mario)($t1)
	li      $at, 0x0008
	lhu     $t2, 0x0018($t1)
	bne     $t2, $at, 36$
	nop
	lw      $t3, 0x0020($sp)
	bnez    $t3, 34$
	nop
	lui     $t4, %hi(mario)
	lw      $t4, %lo(mario)($t4)
	lhu     $t5, 0x0018($t4)
	addiu   $t6, $t5, 0x0001
	b       36$
	sh      $t6, 0x0018($t4)
34$:
	li      $t7, 0x0002
	sw      $t7, 0x001C($sp)
36$:
	b       58$
	nop
38$:
	lw      $t8, 0x0020($sp)
	beqz    $t8, 58$
	nop
	jal     pl_demo_802575A8
	nop
	beqz    $v0, 58$
	nop
	lui     $t9, %hi(object)
	lui     $t0, %hi(mario)
	lw      $t0, %lo(mario)($t0)
	lw      $t9, %lo(object)($t9)
	sw      $t9, 0x0080($t0)
	lui     $a0, %hi(mario)
	li.u    $a1, 0x20001306
	li.l    $a1, 0x20001306
	lw      $a0, %lo(mario)($a0)
	jal     pl_set_state
	lw      $a2, 0x0020($sp)
	li      $t1, 0x0001
	sw      $t1, 0x001C($sp)
58$:
	b       62$
	lw      $v0, 0x001C($sp)
	b       62$
	nop
62$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

pl_demo_80257748:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0030($sp)
	sw      $s0, 0x0018($sp)
	sw      $0, 0x002C($sp)
	lw      $t6, 0x0030($sp)
	li      $at, 0x0002
	lw      $t7, 0x001C($t6)
	bne     $t7, $at, 12$
	nop
	li      $t8, -0x0400
	sw      $t8, 0x002C($sp)
12$:
	lw      $t9, 0x0030($sp)
	li      $at, 0x0003
	lw      $t0, 0x001C($t9)
	bne     $t0, $at, 19$
	nop
	li      $t1, 0x0180
	sw      $t1, 0x002C($sp)
19$:
	lw      $t2, 0x0030($sp)
	lhu     $t3, 0x0018($t2)
	slti    $at, $t3, 0x0008
	beqz    $at, 62$
	nop
	lw      $t4, 0x0030($sp)
	move    $a0, $t4
	jal     collision_8024C16C
	lw      $a1, 0x0080($t4)
	sh      $v0, 0x002A($sp)
	lw      $t6, 0x0030($sp)
	lh      $t5, 0x002A($sp)
	move    $a1, $0
	lh      $t7, 0x002E($t6)
	li      $a2, 0x0800
	li      $a3, 0x0800
	subu    $a0, $t5, $t7
	sll     $t8, $a0, 16
	move    $a0, $t8
	sra     $t9, $a0, 16
	jal     convergei
	move    $a0, $t9
	lh      $t0, 0x002A($sp)
	lw      $t2, 0x0030($sp)
	subu    $t1, $t0, $v0
	sh      $t1, 0x002E($t2)
	lw      $t3, 0x0030($sp)
	lw      $t6, 0x002C($sp)
	lhu     $t4, 0x001A($t3)
	addu    $t5, $t4, $t6
	sh      $t5, 0x001A($t3)
	lw      $t7, 0x0030($sp)
	lw      $t8, 0x007C($t7)
	bnez    $t8, 56$
	nop
	b       57$
	li      $s0, 0x00C2
56$:
	li      $s0, 0x003F
57$:
	lw      $a0, 0x0030($sp)
	jal     pl_set_anime
	move    $a1, $s0
	b       105$
	nop
62$:
	lw      $t9, 0x0030($sp)
	lhu     $t0, 0x0018($t9)
	slti    $at, $t0, 0x0009
	bnez    $at, 76$
	nop
	slti    $at, $t0, 0x0011
	beqz    $at, 76$
	nop
	lw      $t1, 0x0030($sp)
	lw      $t4, 0x002C($sp)
	lhu     $t2, 0x001A($t1)
	subu    $t6, $t2, $t4
	b       105$
	sh      $t6, 0x001A($t1)
76$:
	lw      $t5, 0x0030($sp)
	li      $at, 0x0017
	lhu     $t3, 0x0018($t5)
	bne     $t3, $at, 105$
	nop
	lw      $t7, 0x0030($sp)
	lw      $t8, 0x0004($t7)
	andi    $t9, $t8, 0x0020
	beqz    $t9, 92$
	nop
	lw      $a0, 0x0030($sp)
	li      $a1, 0x133D
	jal     pl_set_state
	move    $a2, $0
	b       105$
	nop
92$:
	lw      $t0, 0x0030($sp)
	lw      $t2, 0x007C($t0)
	bnez    $t2, 99$
	nop
	li.u    $s0, 0x0C400201
	b       101$
	li.l    $s0, 0x0C400201
99$:
	li.u    $s0, 0x08000207
	li.l    $s0, 0x08000207
101$:
	lw      $a0, 0x0030($sp)
	move    $a1, $s0
	jal     pl_set_state
	move    $a2, $0
105$:
	lw      $t4, 0x0030($sp)
	lw      $a0, 0x0088($t4)
	addiu   $a1, $t4, 0x003C
	jal     vecf_cpy
	addiu   $a0, $a0, 0x0020
	lw      $t6, 0x0030($sp)
	move    $a1, $0
	move    $a3, $0
	lw      $a0, 0x0088($t6)
	lh      $a2, 0x002E($t6)
	jal     vecs_set
	addiu   $a0, $a0, 0x001A
	lw      $t1, 0x0030($sp)
	move    $a2, $0
	move    $a3, $0
	lw      $a0, 0x0098($t1)
	lhu     $a1, 0x001A($t1)
	jal     vecs_set
	addiu   $a0, $a0, 0x0012
	lw      $t5, 0x0030($sp)
	li      $at, 0x0008
	lhu     $t3, 0x0018($t5)
	beq     $t3, $at, 133$
	nop
	lw      $t7, 0x0030($sp)
	lhu     $t8, 0x0018($t7)
	addiu   $t9, $t8, 0x0001
	sh      $t9, 0x0018($t7)
133$:
	b       137$
	move    $v0, $0
	b       137$
	nop
137$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

pl_demo_80257980:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	lw      $t7, 0x007C($t6)
	bnez    $t7, 10$
	nop
	b       11$
	li      $s0, 0x00C2
10$:
	li      $s0, 0x003F
11$:
	lw      $a0, 0x0028($sp)
	jal     pl_set_anime
	move    $a1, $s0
	lw      $t8, 0x0028($sp)
	lw      $a0, 0x0088($t8)
	addiu   $a1, $t8, 0x003C
	jal     vecf_cpy
	addiu   $a0, $a0, 0x0020
	lw      $t9, 0x0028($sp)
	move    $a1, $0
	move    $a3, $0
	lw      $a0, 0x0088($t9)
	lh      $a2, 0x002E($t9)
	jal     vecs_set
	addiu   $a0, $a0, 0x001A
	b       30$
	move    $v0, $0
	b       30$
	nop
30$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_demo_80257A0C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	jal     pl_set_anime
	li      $a1, 0x000E
	jal     physics_802559B0
	lw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	li      $at, -0x0002
	lw      $t7, 0x0088($t6)
	lh      $t8, 0x0002($t7)
	and     $t9, $t8, $at
	sh      $t9, 0x0002($t7)
	lw      $t0, 0x0018($sp)
	lw      $t1, 0x001C($t0)
	beqz    $t1, 33$
	nop
	lw      $t2, 0x0018($sp)
	lw      $t3, 0x001C($t2)
	addiu   $t4, $t3, -0x0001
	sw      $t4, 0x001C($t2)
	lw      $t5, 0x0018($sp)
	lw      $t6, 0x001C($t5)
	andi    $t8, $t6, 0xFFFF
	bnez    $t8, 33$
	nop
	lw      $t9, 0x0018($sp)
	lw      $a1, 0x001C($t9)
	move    $a0, $t9
	srl     $t7, $a1, 16
	jal     pl_fade
	move    $a1, $t7
33$:
	b       37$
	move    $v0, $0
	b       37$
	nop
37$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_demo_80257AB0:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	lhu     $t7, 0x0018($t6)
	addiu   $t8, $t7, 0x0001
	sh      $t8, 0x0018($t6)
	lw      $t9, 0x0028($sp)
	li      $at, 0x0002
	lhu     $t0, 0x0018($t9)
	bne     $t0, $at, 15$
	nop
	jal     objlib_802A4704
	nop
15$:
	lw      $t1, 0x0028($sp)
	lhu     $t2, 0x0018($t1)
	slti    $at, $t2, 0x0009
	beqz    $at, 36$
	nop
	lw      $t3, 0x0028($sp)
	li      $at, 0x1303
	lw      $t4, 0x0010($t3)
	bne     $t4, $at, 27$
	nop
	b       28$
	li      $s0, 0x00B2
27$:
	li      $s0, 0x00C2
28$:
	lw      $a0, 0x0028($sp)
	jal     pl_set_anime
	move    $a1, $s0
	lw      $t5, 0x0028($sp)
	lhu     $t7, 0x001A($t5)
	addiu   $t8, $t7, -0x0400
	b       125$
	sh      $t8, 0x001A($t5)
36$:
	lw      $t6, 0x0028($sp)
	li      $at, 0x0009
	lhu     $t9, 0x0018($t6)
	bne     $t9, $at, 59$
	nop
	lw      $t0, 0x0028($sp)
	lw      $t1, 0x001C($t0)
	sw      $t1, 0x0024($sp)
	addiu   $t2, $sp, 0x0024
	lhu     $t3, 0x0000($t2)
	bnez    $t3, 53$
	nop
	addiu   $t4, $sp, 0x0024
	jal     msg_open
	lhu     $a0, 0x0002($t4)
	b       57$
	nop
53$:
	addiu   $t7, $sp, 0x0024
	lhu     $a0, 0x0000($t7)
	jal     msg_open_int
	lhu     $a1, 0x0002($t7)
57$:
	b       125$
	nop
59$:
	lw      $t8, 0x0028($sp)
	li      $at, 0x000A
	lhu     $t5, 0x0018($t8)
	bne     $t5, $at, 74$
	nop
	jal     msg_get
	nop
	bltz    $v0, 72$
	nop
	lw      $t6, 0x0028($sp)
	lhu     $t9, 0x0018($t6)
	addiu   $t0, $t9, -0x0001
	sh      $t0, 0x0018($t6)
72$:
	b       125$
	nop
74$:
	lw      $t1, 0x0028($sp)
	lhu     $t2, 0x0018($t1)
	slti    $at, $t2, 0x0013
	beqz    $at, 84$
	nop
	lw      $t3, 0x0028($sp)
	lhu     $t4, 0x001A($t3)
	addiu   $t7, $t4, 0x0400
	b       125$
	sh      $t7, 0x001A($t3)
84$:
	lw      $t8, 0x0028($sp)
	li      $at, 0x0019
	lhu     $t5, 0x0018($t8)
	bne     $t5, $at, 125$
	nop
	jal     objlib_802A4728
	nop
	lui     $t9, %hi(first_msg)
	lb      $t9, %lo(first_msg)($t9)
	beqz    $t9, 99$
	nop
	lui     $at, %hi(first_msg)
	sb      $0, %lo(first_msg)($at)
	jal     bgm_stage_play
	li      $a0, 0x0004
99$:
	lw      $t0, 0x0028($sp)
	li      $at, 0x1303
	lw      $t6, 0x0010($t0)
	bne     $t6, $at, 111$
	nop
	li.u    $a1, 0x380022C0
	li.l    $a1, 0x380022C0
	lw      $a0, 0x0028($sp)
	jal     pl_set_state
	move    $a2, $0
	b       125$
	nop
111$:
	lw      $t1, 0x0028($sp)
	li      $at, 0x132F
	lw      $t2, 0x0010($t1)
	bne     $t2, $at, 119$
	nop
	li.u    $s0, 0x04000440
	b       121$
	li.l    $s0, 0x04000440
119$:
	li.u    $s0, 0x0C400201
	li.l    $s0, 0x0C400201
121$:
	lw      $a0, 0x0028($sp)
	move    $a1, $s0
	jal     pl_set_state
	move    $a2, $0
125$:
	lw      $t4, 0x0028($sp)
	move    $a2, $0
	move    $a3, $0
	lw      $a0, 0x0098($t4)
	lhu     $a1, 0x001A($t4)
	jal     vecs_set
	addiu   $a0, $a0, 0x0012
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

pl_demo_80257CE4:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	lw      $t7, 0x0088($t6)
	sw      $t7, 0x0024($sp)
	li.u    $a1, 0x045BFF81
	li.l    $a1, 0x045BFF81
	lw      $a0, 0x0028($sp)
	jal     player_80251120
	li      $a2, 0x00010000
	lw      $t8, 0x0028($sp)
	lhu     $s0, 0x0018($t8)
	beqz    $s0, 24$
	nop
	li      $at, 0x0001
	beq     $s0, $at, 34$
	nop
	li      $at, 0x0002
	beq     $s0, $at, 79$
	nop
	b       93$
	nop
24$:
	jal     camera_8028BD34
	li      $a0, 0x0001
	jal     objlib_802A4704
	nop
	lw      $a0, 0x0028($sp)
	jal     pl_set_anime
	li      $a1, 0x00C2
	lw      $t0, 0x0028($sp)
	li      $t9, 0x0001
	sh      $t9, 0x0018($t0)
34$:
	lw      $t3, 0x0024($sp)
	li      $at, 0x000B
	lw      $t1, 0x0028($sp)
	lw      $t4, 0x0108($t3)
	lh      $t2, 0x002E($t1)
	div     $0, $t4, $at
	mflo    $t5
	addu    $t6, $t2, $t5
	sh      $t6, 0x002E($t1)
	lw      $t7, 0x0024($sp)
	li      $at, 0x41300000
	mtc1    $at, $f6
	lwc1    $f4, 0x010C($t7)
	lw      $t8, 0x0028($sp)
	div.s   $f8, $f4, $f6
	lwc1    $f10, 0x003C($t8)
	add.s   $f16, $f10, $f8
	swc1    $f16, 0x003C($t8)
	lw      $t9, 0x0024($sp)
	li      $at, 0x41300000
	mtc1    $at, $f4
	lwc1    $f18, 0x0110($t9)
	lw      $t0, 0x0028($sp)
	div.s   $f6, $f18, $f4
	lwc1    $f10, 0x0044($t0)
	add.s   $f8, $f10, $f6
	swc1    $f8, 0x0044($t0)
	lw      $t3, 0x0028($sp)
	lhu     $s0, 0x001A($t3)
	lhu     $t2, 0x001A($t3)
	xori    $t4, $s0, 0x000A
	sltiu   $t4, $t4, 0x0001
	move    $s0, $t4
	addiu   $t5, $t2, 0x0001
	beqz    $s0, 77$
	sh      $t5, 0x001A($t3)
	lw      $t6, 0x0028($sp)
	lw      $t1, 0x0080($t6)
	jal     msg_open_signpost
	lw      $a0, 0x0144($t1)
	lw      $t8, 0x0028($sp)
	li      $t7, 0x0002
	sh      $t7, 0x0018($t8)
77$:
	b       93$
	nop
79$:
	lui     $t9, %hi(camerap)
	lw      $t9, %lo(camerap)($t9)
	lbu     $t0, 0x0030($t9)
	bnez    $t0, 91$
	nop
	jal     objlib_802A4728
	nop
	li.u    $a1, 0x0C400201
	li.l    $a1, 0x0C400201
	lw      $a0, 0x0028($sp)
	jal     pl_set_state
	move    $a2, $0
91$:
	b       93$
	nop
93$:
	lw      $a0, 0x0024($sp)
	lw      $a1, 0x0028($sp)
	addiu   $a0, $a0, 0x0020
	jal     vecf_cpy
	addiu   $a1, $a1, 0x003C
	lw      $a0, 0x0024($sp)
	lw      $t4, 0x0028($sp)
	move    $a1, $0
	move    $a3, $0
	addiu   $a0, $a0, 0x001A
	jal     vecs_set
	lh      $a2, 0x002E($t4)
	b       109$
	move    $v0, $0
	b       109$
	nop
109$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_demo_80257EAC:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0038($sp)
	lui     $t6, %hi(cont1)
	lw      $t6, %lo(cont1)($t6)
	lhu     $t7, 0x0010($t6)
	andi    $t8, $t7, 0x4000
	beqz    $t8, 15$
	nop
	li      $t9, 0x0004
	mtc1    $t9, $f4
	nop
	cvt.s.w $f6, $f4
	b       20$
	swc1    $f6, 0x0020($sp)
15$:
	li      $t0, 0x0001
	mtc1    $t0, $f8
	nop
	cvt.s.w $f10, $f8
	swc1    $f10, 0x0020($sp)
20$:
	lui     $t1, %hi(cont1)
	lw      $t1, %lo(cont1)($t1)
	lhu     $t2, 0x0010($t1)
	andi    $t3, $t2, 0x0020
	beqz    $t3, 29$
	nop
	lui     $at, %hi(pl_demo_803366D0)
	lwc1    $f16, %lo(pl_demo_803366D0)($at)
	swc1    $f16, 0x0020($sp)
29$:
	lw      $a0, 0x0038($sp)
	jal     pl_set_anime
	li      $a1, 0x000E
	lw      $a1, 0x0038($sp)
	addiu   $a0, $sp, 0x0024
	jal     vecf_cpy
	addiu   $a1, $a1, 0x003C
	lui     $t4, %hi(cont1)
	lw      $t4, %lo(cont1)($t4)
	lhu     $t5, 0x0010($t4)
	andi    $t6, $t5, 0x0800
	beqz    $t6, 50$
	nop
	li      $at, 0x41800000
	mtc1    $at, $f18
	lwc1    $f4, 0x0020($sp)
	addiu   $t7, $sp, 0x0024
	lwc1    $f8, 0x0004($t7)
	mul.s   $f6, $f18, $f4
	add.s   $f10, $f8, $f6
	swc1    $f10, 0x0004($t7)
50$:
	lui     $t8, %hi(cont1)
	lw      $t8, %lo(cont1)($t8)
	lhu     $t9, 0x0010($t8)
	andi    $t0, $t9, 0x0400
	beqz    $t0, 64$
	nop
	li      $at, 0x41800000
	mtc1    $at, $f16
	lwc1    $f18, 0x0020($sp)
	addiu   $t1, $sp, 0x0024
	lwc1    $f8, 0x0004($t1)
	mul.s   $f4, $f16, $f18
	sub.s   $f6, $f8, $f4
	swc1    $f6, 0x0004($t1)
64$:
	lw      $t2, 0x0038($sp)
	mtc1    $0, $f16
	lwc1    $f10, 0x0020($t2)
	c.lt.s  $f16, $f10
	nop
	bc1f    103$
	nop
	lw      $t3, 0x0038($sp)
	li      $at, 0x42000000
	mtc1    $at, $f18
	lwc1    $f8, 0x0020($sp)
	lhu     $t4, 0x0024($t3)
	lui     $at, %hi(math_sin)
	mul.s   $f4, $f18, $f8
	sra     $t5, $t4, 4
	sll     $t6, $t5, 2
	addu    $at, $at, $t6
	lwc1    $f6, %lo(math_sin)($at)
	addiu   $t7, $sp, 0x0024
	lwc1    $f16, 0x0000($t7)
	mul.s   $f10, $f4, $f6
	add.s   $f18, $f16, $f10
	swc1    $f18, 0x0000($t7)
	lw      $t8, 0x0038($sp)
	li      $at, 0x42000000
	mtc1    $at, $f8
	lwc1    $f4, 0x0020($sp)
	lhu     $t9, 0x0024($t8)
	lui     $at, %hi(math_cos)
	mul.s   $f6, $f8, $f4
	sra     $t0, $t9, 4
	sll     $t1, $t0, 2
	addu    $at, $at, $t1
	lwc1    $f16, %lo(math_cos)($at)
	addiu   $t2, $sp, 0x0024
	lwc1    $f18, 0x0008($t2)
	mul.s   $f10, $f6, $f16
	add.s   $f8, $f18, $f10
	swc1    $f8, 0x0008($t2)
103$:
	addiu   $a0, $sp, 0x0024
	li      $a1, 0x42700000
	jal     player_80251A48
	li      $a2, 0x42480000
	addiu   $t3, $sp, 0x0024
	lwc1    $f12, 0x0000($t3)
	lwc1    $f14, 0x0004($t3)
	lw      $a2, 0x0008($t3)
	jal     bg_check_ground
	addiu   $a3, $sp, 0x0034
	swc1    $f0, 0x0030($sp)
	lw      $t4, 0x0034($sp)
	beqz    $t4, 131$
	nop
	addiu   $t5, $sp, 0x0024
	lwc1    $f4, 0x0004($t5)
	lwc1    $f6, 0x0030($sp)
	c.lt.s  $f4, $f6
	nop
	bc1f    127$
	nop
	lwc1    $f16, 0x0030($sp)
	addiu   $t6, $sp, 0x0024
	swc1    $f16, 0x0004($t6)
127$:
	lw      $a0, 0x0038($sp)
	addiu   $a1, $sp, 0x0024
	jal     vecf_cpy
	addiu   $a0, $a0, 0x003C
131$:
	lw      $t7, 0x0038($sp)
	lh      $t8, 0x0024($t7)
	sh      $t8, 0x002E($t7)
	lw      $t9, 0x0038($sp)
	lw      $a0, 0x0088($t9)
	addiu   $a1, $t9, 0x003C
	jal     vecf_cpy
	addiu   $a0, $a0, 0x0020
	lw      $t0, 0x0038($sp)
	move    $a1, $0
	move    $a3, $0
	lw      $a0, 0x0088($t0)
	lh      $a2, 0x002E($t0)
	jal     vecs_set
	addiu   $a0, $a0, 0x001A
	lui     $t1, %hi(cont1)
	lw      $t1, %lo(cont1)($t1)
	li      $at, 0x8000
	lhu     $t2, 0x0012($t1)
	bne     $t2, $at, 174$
	nop
	lw      $t3, 0x0038($sp)
	lh      $t4, 0x0076($t3)
	lwc1    $f18, 0x0040($t3)
	addiu   $t5, $t4, -0x0064
	mtc1    $t5, $f10
	nop
	cvt.s.w $f8, $f10
	c.le.s  $f18, $f8
	nop
	bc1f    167$
	nop
	li.u    $t6, 0x380022C0
	li.l    $t6, 0x380022C0
	b       170$
	sw      $t6, 0x001C($sp)
167$:
	li.u    $t8, 0x0C400201
	li.l    $t8, 0x0C400201
	sw      $t8, 0x001C($sp)
170$:
	lw      $a0, 0x0038($sp)
	lw      $a1, 0x001C($sp)
	jal     pl_set_state
	move    $a2, $0
174$:
	b       178$
	move    $v0, $0
	b       178$
	nop
178$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

pl_demo_80258184:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	lhu     $t7, 0x0018($t6)
	bnez    $t7, 100$
	nop
	lw      $t8, 0x0028($sp)
	li      $at, 0x0001
	lhu     $t9, 0x001A($t8)
	addiu   $t0, $t9, 0x0001
	sh      $t0, 0x001A($t8)
	lw      $t1, 0x0028($sp)
	lhu     $s0, 0x001A($t1)
	beq     $s0, $at, 26$
	nop
	li      $at, 0x002A
	beq     $s0, $at, 63$
	nop
	li      $at, 0x0050
	beq     $s0, $at, 71$
	nop
	b       98$
	nop
26$:
	lw      $t2, 0x0028($sp)
	la.u    $a2, o_13003868
	la.l    $a2, o_13003868
	li      $a1, 0x007A
	jal     obj_make_here
	lw      $a0, 0x0088($t2)
	jal     aud_lock
	nop
	lw      $t3, 0x0028($sp)
	lw      $t4, 0x001C($t3)
	andi    $t5, $t4, 0x0001
	beqz    $t5, 43$
	nop
	jal     Na_StarCatch
	nop
	b       61$
	nop
43$:
	lui     $t6, %hi(stage_index)
	lh      $t6, %lo(stage_index)($t6)
	li      $at, 0x001E
	beq     $t6, $at, 51$
	nop
	li      $at, 0x0021
	bne     $t6, $at, 57$
	nop
51$:
	li      $a0, 0x0001
	li      $a1, 0x0F17
	jal     Na_BgmPlay
	move    $a2, $0
	b       61$
	nop
57$:
	li      $a0, 0x0001
	li      $a1, 0x0F01
	jal     Na_BgmPlay
	move    $a2, $0
61$:
	b       98$
	nop
63$:
	lw      $t7, 0x0028($sp)
	li.u    $a0, 0x240C8081
	li.l    $a0, 0x240C8081
	lw      $a1, 0x0088($t7)
	jal     Na_SePlay
	addiu   $a1, $a1, 0x0054
	b       98$
	nop
71$:
	lw      $t9, 0x0028($sp)
	lw      $t0, 0x001C($t9)
	andi    $t8, $t0, 0x0001
	bnez    $t8, 81$
	nop
	lw      $a0, 0x0028($sp)
	jal     pl_fade
	li      $a1, 0x0011
	b       96$
	nop
81$:
	jal     objlib_802A4704
	nop
	lui     $t1, %hi(save_level)
	lbu     $t1, %lo(save_level)($t1)
	li      $at, 0x0007
	bne     $t1, $at, 90$
	nop
	b       91$
	li      $s0, 0x000D
90$:
	li      $s0, 0x000E
91$:
	jal     msg_open_prompt
	move    $a0, $s0
	lw      $t3, 0x0028($sp)
	li      $t2, 0x0001
	sh      $t2, 0x0018($t3)
96$:
	b       98$
	nop
98$:
	b       160$
	nop
100$:
	lw      $t4, 0x0028($sp)
	li      $at, 0x0001
	lhu     $t5, 0x0018($t4)
	bne     $t5, $at, 122$
	nop
	lui     $t6, %hi(msg_answer)
	lw      $t6, %lo(msg_answer)($t6)
	beqz    $t6, 122$
	nop
	lui     $t7, %hi(msg_answer)
	lw      $t7, %lo(msg_answer)($t7)
	li      $at, 0x0001
	bne     $t7, $at, 118$
	nop
	lui     $a0, %hi(file_index)
	lh      $a0, %lo(file_index)($a0)
	jal     save_file_write
	addiu   $a0, $a0, -0x0001
118$:
	lw      $t0, 0x0028($sp)
	li      $t9, 0x0002
	b       160$
	sh      $t9, 0x0018($t0)
122$:
	lw      $t8, 0x0028($sp)
	li      $at, 0x0002
	lhu     $t1, 0x0018($t8)
	bne     $t1, $at, 160$
	nop
	jal     player_80250940
	move    $a0, $t8
	beqz    $v0, 160$
	nop
	jal     objlib_802A4728
	nop
	jal     aud_unlock
	nop
	jal     pl_demo_802572B0
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	lw      $t2, 0x0024($sp)
	beqz    $t2, 148$
	nop
	li.u    $a1, 0x20001305
	li.l    $a1, 0x20001305
	lw      $a0, 0x0028($sp)
	jal     pl_set_state
	lw      $a2, 0x0024($sp)
	b       160$
	nop
148$:
	lw      $t3, 0x002C($sp)
	beqz    $t3, 154$
	nop
	li.u    $s0, 0x380022C0
	b       156$
	li.l    $s0, 0x380022C0
154$:
	li.u    $s0, 0x0C400201
	li.l    $s0, 0x0C400201
156$:
	lw      $a0, 0x0028($sp)
	move    $a1, $s0
	jal     pl_set_state
	move    $a2, $0
160$:
	b       162$
	nop
162$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_demo_80258420:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	lw      $t7, 0x0090($t6)
	lw      $t8, 0x0024($t7)
	lh      $t9, 0x0002($t8)
	sh      $t9, 0x002E($t6)
	lw      $t0, 0x0028($sp)
	li      $at, 0x0002
	lhu     $t1, 0x0018($t0)
	bne     $t1, $at, 16$
	nop
	b       17$
	li      $s0, 0x00CE
16$:
	li      $s0, 0x00CD
17$:
	lw      $a0, 0x0028($sp)
	jal     pl_set_anime
	move    $a1, $s0
	lw      $a0, 0x0028($sp)
	jal     pl_demo_80258184
	move    $a1, $0
	lw      $t2, 0x0028($sp)
	li      $at, 0x0002
	lhu     $t3, 0x0018($t2)
	beq     $t3, $at, 36$
	nop
	lhu     $t4, 0x001A($t2)
	slti    $at, $t4, 0x0028
	bnez    $at, 36$
	nop
	lw      $t7, 0x0028($sp)
	li      $t5, 0x0002
	lw      $t8, 0x0098($t7)
	sb      $t5, 0x0006($t8)
36$:
	jal     physics_802559B0
	lw      $a0, 0x0028($sp)
	b       42$
	move    $v0, $0
	b       42$
	nop
42$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_demo_802584DC:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	lw      $t7, 0x0090($t6)
	lw      $t8, 0x0024($t7)
	lh      $t9, 0x0002($t8)
	sh      $t9, 0x002E($t6)
	lw      $t0, 0x0028($sp)
	li      $at, 0x0002
	lhu     $t1, 0x0018($t0)
	bne     $t1, $at, 16$
	nop
	b       17$
	li      $s0, 0x00B4
16$:
	li      $s0, 0x00B3
17$:
	lw      $a0, 0x0028($sp)
	jal     pl_set_anime
	move    $a1, $s0
	lw      $t2, 0x0028($sp)
	lw      $a0, 0x0088($t2)
	addiu   $a1, $t2, 0x003C
	jal     vecf_cpy
	addiu   $a0, $a0, 0x0020
	lw      $t3, 0x0028($sp)
	move    $a1, $0
	move    $a3, $0
	lw      $a0, 0x0088($t3)
	lh      $a2, 0x002E($t3)
	jal     vecs_set
	addiu   $a0, $a0, 0x001A
	lw      $a0, 0x0028($sp)
	jal     pl_demo_80258184
	li      $a1, 0x0001
	lw      $t4, 0x0028($sp)
	li      $at, 0x0002
	lhu     $t5, 0x0018($t4)
	beq     $t5, $at, 48$
	nop
	lhu     $t7, 0x001A($t4)
	slti    $at, $t7, 0x003E
	bnez    $at, 48$
	nop
	lw      $t9, 0x0028($sp)
	li      $t8, 0x0002
	lw      $t6, 0x0098($t9)
	sb      $t8, 0x0006($t6)
48$:
	b       52$
	move    $v0, $0
	b       52$
	nop
52$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_demo_802585C0:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	lh      $t7, 0x0076($t6)
	lwc1    $f4, 0x0040($t6)
	addiu   $t8, $t7, -0x0082
	mtc1    $t8, $f6
	nop
	cvt.s.w $f8, $f6
	c.lt.s  $f4, $f8
	nop
	bc1f    32$
	nop
	lw      $t9, 0x0028($sp)
	li.u    $a0, 0x0430C081
	li.l    $a0, 0x0430C081
	lw      $a1, 0x0088($t9)
	jal     Na_SePlay
	addiu   $a1, $a1, 0x0054
	lw      $t0, 0x0028($sp)
	lw      $t1, 0x0008($t0)
	ori     $t2, $t1, 0x0040
	sw      $t2, 0x0008($t0)
	lw      $t3, 0x0028($sp)
	li      $a1, 0x1303
	move    $a0, $t3
	jal     pl_set_state
	lw      $a2, 0x001C($t3)
	b       62$
	nop
32$:
	lw      $a0, 0x0028($sp)
	jal     physics_80256B24
	li      $a1, 0x0001
	li      $at, 0x0001
	bne     $v0, $at, 55$
	nop
	li.u    $a1, 0x04088081
	li.l    $a1, 0x04088081
	jal     player_802514AC
	lw      $a0, 0x0028($sp)
	lw      $t4, 0x0028($sp)
	lw      $t5, 0x001C($t4)
	andi    $t6, $t5, 0x0001
	beqz    $t6, 49$
	nop
	b       50$
	li      $s0, 0x1307
49$:
	li      $s0, 0x1302
50$:
	lw      $t7, 0x0028($sp)
	move    $a1, $s0
	move    $a0, $t7
	jal     pl_set_state
	lw      $a2, 0x001C($t7)
55$:
	lw      $a0, 0x0028($sp)
	jal     pl_set_anime
	li      $a1, 0x0056
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

pl_demo_802586CC:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	sw      $a2, 0x0028($sp)
	lw      $a0, 0x0020($sp)
	jal     pl_set_anime
	lw      $a1, 0x0024($sp)
	sw      $v0, 0x001C($sp)
	lw      $t6, 0x001C($sp)
	lw      $t7, 0x0028($sp)
	bne     $t6, $t7, 16$
	nop
	lw      $a0, 0x0020($sp)
	jal     pl_fade
	li      $a1, 0x0012
16$:
	lw      $t9, 0x0020($sp)
	li      $t8, 0x0008
	lw      $t0, 0x0098($t9)
	sb      $t8, 0x0005($t0)
	jal     physics_802559B0
	lw      $a0, 0x0020($sp)
	b       26$
	lw      $v0, 0x001C($sp)
	b       26$
	nop
26$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

pl_demo_80258744:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	lhu     $t7, 0x0002($t6)
	andi    $t8, $t7, 0x0100
	beqz    $t8, 15$
	nop
	li.u    $a1, 0x00021314
	li.l    $a1, 0x00021314
	lw      $a0, 0x0018($sp)
	jal     pl_set_state
	move    $a2, $0
	b       38$
	nop
15$:
	li.u    $a1, 0x2415FF81
	li.l    $a1, 0x2415FF81
	lw      $a0, 0x0018($sp)
	jal     player_80251120
	li      $a2, 0x00010000
	lw      $a0, 0x0018($sp)
	li      $a1, 0x0032
	jal     pl_demo_802586CC
	li      $a2, 0x0050
	lw      $t9, 0x0018($sp)
	li      $at, 0x004D
	lw      $t0, 0x0088($t9)
	lh      $t1, 0x0040($t0)
	bne     $t1, $at, 34$
	nop
	li.u    $a1, 0x04188081
	li.l    $a1, 0x04188081
	jal     player_802514AC
	lw      $a0, 0x0018($sp)
34$:
	b       38$
	move    $v0, $0
	b       38$
	nop
38$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_demo_802587EC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	li.u    $a1, 0x2415FF81
	li.l    $a1, 0x2415FF81
	lw      $a0, 0x0018($sp)
	jal     player_80251120
	li      $a2, 0x00010000
	lw      $a0, 0x0018($sp)
	li      $a1, 0x0079
	jal     pl_demo_802586CC
	li      $a2, 0x002B
	b       16$
	move    $v0, $0
	b       16$
	nop
16$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_demo_8025883C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	li.u    $a1, 0x2415FF81
	li.l    $a1, 0x2415FF81
	lw      $a0, 0x0018($sp)
	jal     player_80251120
	li      $a2, 0x00010000
	lw      $a0, 0x0018($sp)
	li      $a1, 0x002F
	jal     pl_demo_802586CC
	li      $a2, 0x0056
	b       16$
	move    $v0, $0
	b       16$
	nop
16$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_demo_8025888C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	li.u    $a1, 0x2415FF81
	li.l    $a1, 0x2415FF81
	lw      $a0, 0x0018($sp)
	jal     player_80251120
	li      $a2, 0x00010000
	lw      $a0, 0x0018($sp)
	li      $a1, 0x0003
	jal     pl_demo_802586CC
	li      $a2, 0x0036
	li      $at, 0x0028
	bne     $v0, $at, 19$
	nop
	li.u    $a1, 0x04188081
	li.l    $a1, 0x04188081
	jal     player_80251574
	lw      $a0, 0x0018($sp)
19$:
	b       23$
	move    $v0, $0
	b       23$
	nop
23$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_demo_802588F8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	li.u    $a1, 0x2415FF81
	li.l    $a1, 0x2415FF81
	lw      $a0, 0x0018($sp)
	jal     player_80251120
	li      $a2, 0x00010000
	lw      $a0, 0x0018($sp)
	li      $a1, 0x002E
	jal     pl_demo_802586CC
	li      $a2, 0x0025
	li      $at, 0x0025
	bne     $v0, $at, 19$
	nop
	li.u    $a1, 0x04188081
	li.l    $a1, 0x04188081
	jal     player_80251574
	lw      $a0, 0x0018($sp)
19$:
	b       23$
	move    $v0, $0
	b       23$
	nop
23$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_demo_80258964:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	lhu     $t7, 0x0018($t6)
	bnez    $t7, 16$
	nop
	lw      $a0, 0x0018($sp)
	jal     pl_set_anime
	li      $a1, 0x0076
	lw      $a0, 0x0018($sp)
	jal     player_80250C7C
	li      $a1, 0x003C
	lw      $t9, 0x0018($sp)
	li      $t8, 0x0001
	sh      $t8, 0x0018($t9)
16$:
	lw      $t0, 0x0018($sp)
	li      $at, 0x0001
	lhu     $t1, 0x0018($t0)
	bne     $t1, $at, 54$
	nop
	lw      $t2, 0x0018($sp)
	li      $at, 0x42C80000
	mtc1    $at, $f6
	lwc1    $f4, 0x00C0($t2)
	c.le.s  $f6, $f4
	nop
	bc1f    34$
	nop
	li.u    $a1, 0x2410C081
	li.l    $a1, 0x2410C081
	lw      $a0, 0x0018($sp)
	jal     player_80251120
	li      $a2, 0x00010000
34$:
	lw      $t3, 0x0018($sp)
	li      $at, 0x40A00000
	mtc1    $at, $f10
	lwc1    $f8, 0x00C0($t3)
	li      $at, 0x43340000
	mtc1    $at, $f4
	add.s   $f16, $f8, $f10
	swc1    $f16, 0x00C0($t3)
	lw      $t4, 0x0018($sp)
	lwc1    $f18, 0x00C0($t4)
	c.le.s  $f4, $f18
	nop
	bc1f    54$
	nop
	lw      $a0, 0x0018($sp)
	jal     pl_fade
	li      $a1, 0x0012
	lw      $t6, 0x0018($sp)
	li      $t5, 0x0002
	sh      $t5, 0x0018($t6)
54$:
	jal     physics_80255A34
	lw      $a0, 0x0018($sp)
	lw      $t7, 0x0018($sp)
	li.u    $a0, 0x14140001
	li.l    $a0, 0x14140001
	lw      $a1, 0x0088($t7)
	jal     Na_SePlay
	addiu   $a1, $a1, 0x0054
	b       66$
	move    $v0, $0
	b       66$
	nop
66$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_demo_80258A7C:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	li.u    $a1, 0x2415FF81
	li.l    $a1, 0x2415FF81
	lw      $a0, 0x0028($sp)
	jal     player_80251120
	li      $a2, 0x00010000
	lw      $a0, 0x0028($sp)
	jal     pl_set_anime
	li      $a1, 0x000E
	lw      $t6, 0x0028($sp)
	li      $at, -0x0002
	lw      $t7, 0x0088($t6)
	lh      $t8, 0x0002($t7)
	and     $t9, $t8, $at
	sh      $t9, 0x0002($t7)
	lw      $t1, 0x0028($sp)
	li      $t0, 0x00FF
	sh      $t0, 0x00AE($t1)
	lw      $t2, 0x0028($sp)
	lhu     $s0, 0x001A($t2)
	lhu     $t4, 0x001A($t2)
	xori    $t3, $s0, 0x003C
	sltiu   $t3, $t3, 0x0001
	move    $s0, $t3
	addiu   $t5, $t4, 0x0001
	beqz    $s0, 33$
	sh      $t5, 0x001A($t2)
	lw      $a0, 0x0028($sp)
	jal     pl_fade
	li      $a1, 0x0012
33$:
	b       37$
	move    $v0, $0
	b       37$
	nop
37$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_demo_80258B24:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	sw      $a2, 0x0028($sp)
	sw      $a3, 0x002C($sp)
	lw      $a0, 0x0020($sp)
	jal     player_80251708
	lw      $a1, 0x002C($sp)
	lw      $a0, 0x0020($sp)
	jal     pl_set_anime
	lw      $a1, 0x0028($sp)
	lw      $a0, 0x0020($sp)
	jal     physics_80256B24
	move    $a1, $0
	xori    $t6, $v0, 0x0001
	sltiu   $t6, $t6, 0x0001
	sw      $t6, 0x001C($sp)
	lw      $t7, 0x001C($sp)
	beqz    $t7, 25$
	nop
	lw      $a0, 0x0020($sp)
	lw      $a1, 0x0024($sp)
	jal     pl_set_state
	move    $a2, $0
25$:
	b       29$
	lw      $v0, 0x001C($sp)
	b       29$
	nop
29$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

pl_demo_80258BA8:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	lw      $t7, 0x0080($t6)
	lw      $t8, 0x00C8($t7)
	sh      $t8, 0x002E($t6)
	lw      $t9, 0x0028($sp)
	lui     $at, %hi(math_cos)
	lhu     $t0, 0x002E($t9)
	lw      $t3, 0x0080($t9)
	sra     $t1, $t0, 4
	sll     $t2, $t1, 2
	addu    $at, $at, $t2
	lwc1    $f4, %lo(math_cos)($at)
	li      $at, 0x42960000
	mtc1    $at, $f6
	lwc1    $f10, 0x00A0($t3)
	mul.s   $f8, $f4, $f6
	add.s   $f16, $f8, $f10
	swc1    $f16, 0x003C($t9)
	lw      $t4, 0x0028($sp)
	lui     $at, %hi(math_sin)
	lhu     $t5, 0x002E($t4)
	lw      $t6, 0x0080($t4)
	sra     $t7, $t5, 4
	sll     $t8, $t7, 2
	addu    $at, $at, $t8
	lwc1    $f18, %lo(math_sin)($at)
	li      $at, 0x42960000
	mtc1    $at, $f4
	lwc1    $f8, 0x00A8($t6)
	mul.s   $f6, $f18, $f4
	add.s   $f10, $f6, $f8
	swc1    $f10, 0x0044($t4)
	lw      $t0, 0x0028($sp)
	lw      $t1, 0x001C($t0)
	andi    $t2, $t1, 0x0002
	beqz    $t2, 46$
	nop
	lw      $t3, 0x0028($sp)
	li      $at, 0x8000
	lh      $t9, 0x002E($t3)
	addu    $t5, $t9, $at
	sh      $t5, 0x002E($t3)
46$:
	lw      $t7, 0x0028($sp)
	lhu     $t8, 0x001A($t7)
	bnez    $t8, 59$
	nop
	la.u    $a2, o_13001BB4
	la.l    $a2, o_13001BB4
	lw      $a0, 0x0028($sp)
	li      $a1, 0x00C8
	jal     pl_demo_80257450
	move    $a3, $0
	lw      $a0, 0x0028($sp)
	jal     pl_set_anime
	li      $a1, 0x0061
59$:
	lw      $t6, 0x0028($sp)
	li      $at, 0x004F
	lw      $t4, 0x0088($t6)
	lh      $s0, 0x0040($t4)
	beq     $s0, $at, 70$
	nop
	li      $at, 0x006F
	beq     $s0, $at, 78$
	nop
	b       86$
	nop
70$:
	lw      $t0, 0x0028($sp)
	li.u    $a0, 0x30420081
	li.l    $a0, 0x30420081
	lw      $a1, 0x0088($t0)
	jal     Na_SePlay
	addiu   $a1, $a1, 0x0054
	b       86$
	nop
78$:
	lw      $t1, 0x0028($sp)
	li.u    $a0, 0x303B0081
	li.l    $a0, 0x303B0081
	lw      $a1, 0x0088($t1)
	jal     Na_SePlay
	addiu   $a1, $a1, 0x0054
	b       86$
	nop
86$:
	jal     player_80251020
	lw      $a0, 0x0028($sp)
	jal     physics_802559B0
	lw      $a0, 0x0028($sp)
	jal     player_80250940
	lw      $a0, 0x0028($sp)
	beqz    $v0, 116$
	nop
	lw      $t2, 0x0028($sp)
	li      $at, 0x0001
	lw      $t9, 0x0080($t2)
	lw      $t5, 0x0188($t9)
	sra     $t3, $t5, 24
	bne     $t3, $at, 107$
	nop
	jal     save_set_flag
	li      $a0, 0x0080
	jal     save_clr_flag
	li      $a0, 0x0020
	b       111$
	nop
107$:
	jal     save_set_flag
	li      $a0, 0x0040
	jal     save_clr_flag
	li      $a0, 0x0010
111$:
	li.u    $a1, 0x04000440
	li.l    $a1, 0x04000440
	lw      $a0, 0x0028($sp)
	jal     pl_set_state
	move    $a2, $0
116$:
	lw      $t7, 0x0028($sp)
	lhu     $t8, 0x001A($t7)
	addiu   $t6, $t8, 0x0001
	sh      $t6, 0x001A($t7)
	b       124$
	move    $v0, $0
	b       124$
	nop
124$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_demo_80258DAC:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	lhu     $s0, 0x0018($t6)
	beqz    $s0, 19$
	nop
	li      $at, 0x0001
	beq     $s0, $at, 50$
	nop
	li      $at, 0x0002
	beq     $s0, $at, 66$
	nop
	li      $at, 0x0003
	beq     $s0, $at, 84$
	nop
	b       101$
	nop
19$:
	lw      $t7, 0x0028($sp)
	lw      $t8, 0x0080($t7)
	lw      $t9, 0x00C8($t8)
	sh      $t9, 0x002E($t7)
	lw      $t0, 0x0028($sp)
	lw      $t1, 0x001C($t0)
	andi    $t2, $t1, 0x0002
	beqz    $t2, 33$
	nop
	lw      $t3, 0x0028($sp)
	li      $at, 0x8000
	lh      $t4, 0x002E($t3)
	addu    $t5, $t4, $at
	sh      $t5, 0x002E($t3)
33$:
	lw      $t6, 0x0028($sp)
	lwc1    $f4, 0x003C($t6)
	lw      $t8, 0x0088($t6)
	swc1    $f4, 0x010C($t8)
	lw      $t9, 0x0028($sp)
	lwc1    $f6, 0x0044($t9)
	lw      $t7, 0x0088($t9)
	swc1    $f6, 0x0110($t7)
	lw      $a0, 0x0028($sp)
	jal     pl_set_anime
	li      $a1, 0x009C
	lw      $t0, 0x0028($sp)
	lhu     $t1, 0x0018($t0)
	addiu   $t2, $t1, 0x0001
	sh      $t2, 0x0018($t0)
	b       101$
	nop
50$:
	jal     player_80250940
	lw      $a0, 0x0028($sp)
	beqz    $v0, 64$
	nop
	lw      $t4, 0x0028($sp)
	la.u    $a2, o_13002F40
	la.l    $a2, o_13002F40
	li      $a1, 0x007A
	jal     obj_make_here
	lw      $a0, 0x0088($t4)
	lw      $t5, 0x0028($sp)
	lhu     $t3, 0x0018($t5)
	addiu   $t6, $t3, 0x0001
	sh      $t6, 0x0018($t5)
64$:
	b       101$
	nop
66$:
	lw      $t8, 0x0028($sp)
	lhu     $s0, 0x001A($t8)
	lhu     $t7, 0x001A($t8)
	xori    $t9, $s0, 0x0046
	sltiu   $t9, $t9, 0x0001
	move    $s0, $t9
	addiu   $t1, $t7, 0x0001
	beqz    $s0, 82$
	sh      $t1, 0x001A($t8)
	lw      $a0, 0x0028($sp)
	jal     pl_set_anime
	li      $a1, 0x009D
	lw      $t2, 0x0028($sp)
	lhu     $t0, 0x0018($t2)
	addiu   $t4, $t0, 0x0001
	sh      $t4, 0x0018($t2)
82$:
	b       101$
	nop
84$:
	jal     player_80250940
	lw      $a0, 0x0028($sp)
	beqz    $v0, 99$
	nop
	lw      $t3, 0x0028($sp)
	jal     collision_8024E2FC
	lw      $a0, 0x0080($t3)
	move    $s0, $v0
	jal     save_set_flag
	move    $a0, $s0
	li.u    $a1, 0x20001305
	li.l    $a1, 0x20001305
	lw      $a0, 0x0028($sp)
	jal     pl_set_state
	li      $a2, 0x0026
99$:
	b       101$
	nop
101$:
	lw      $t6, 0x0028($sp)
	lw      $t5, 0x0088($t6)
	lwc1    $f8, 0x010C($t5)
	swc1    $f8, 0x003C($t6)
	lw      $t9, 0x0028($sp)
	lw      $t7, 0x0088($t9)
	lwc1    $f10, 0x0110($t7)
	swc1    $f10, 0x0044($t9)
	jal     player_80251020
	lw      $a0, 0x0028($sp)
	jal     physics_802559B0
	lw      $a0, 0x0028($sp)
	b       117$
	move    $v0, $0
	b       117$
	nop
117$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_demo_80258F94:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0030($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0030($sp)
	lhu     $s0, 0x001A($t6)
	lhu     $t8, 0x001A($t6)
	sltiu   $t7, $s0, 0x0001
	move    $s0, $t7
	addiu   $t9, $t8, 0x0001
	beqz    $s0, 80$
	sh      $t9, 0x001A($t6)
	lw      $t1, 0x0030($sp)
	li      $t0, 0x00010000
	lw      $t2, 0x0078($t1)
	sw      $t0, 0x0134($t2)
	lw      $t3, 0x0030($sp)
	lw      $t4, 0x0080($t3)
	lw      $t5, 0x00C8($t4)
	addiu   $t7, $t5, 0x1555
	sh      $t7, 0x0026($sp)
	lw      $t8, 0x0030($sp)
	lw      $t9, 0x001C($t8)
	andi    $t6, $t9, 0x0002
	beqz    $t6, 29$
	nop
	lh      $t1, 0x0026($sp)
	addiu   $t0, $t1, 0x5556
	sh      $t0, 0x0026($sp)
29$:
	lhu     $t2, 0x0026($sp)
	li      $at, 0x43160000
	mtc1    $at, $f4
	sra     $t3, $t2, 4
	sll     $t4, $t3, 2
	lui     $at, %hi(math_sin)
	addu    $at, $at, $t4
	lwc1    $f6, %lo(math_sin)($at)
	lw      $t5, 0x0030($sp)
	mul.s   $f8, $f4, $f6
	lw      $t7, 0x0080($t5)
	lwc1    $f18, 0x003C($t5)
	lwc1    $f10, 0x00A0($t7)
	add.s   $f16, $f10, $f8
	sub.s   $f4, $f16, $f18
	swc1    $f4, 0x002C($sp)
	lhu     $t8, 0x0026($sp)
	li      $at, 0x43160000
	mtc1    $at, $f6
	sra     $t9, $t8, 4
	sll     $t6, $t9, 2
	lui     $at, %hi(math_cos)
	addu    $at, $at, $t6
	lwc1    $f10, %lo(math_cos)($at)
	lw      $t1, 0x0030($sp)
	mul.s   $f8, $f6, $f10
	lw      $t0, 0x0080($t1)
	lwc1    $f4, 0x0044($t1)
	lwc1    $f16, 0x00A8($t0)
	add.s   $f18, $f16, $f8
	sub.s   $f6, $f18, $f4
	swc1    $f6, 0x0028($sp)
	li      $at, 0x41A00000
	mtc1    $at, $f16
	lwc1    $f10, 0x002C($sp)
	lw      $t2, 0x0030($sp)
	div.s   $f8, $f10, $f16
	lw      $t3, 0x0088($t2)
	swc1    $f8, 0x010C($t3)
	li      $at, 0x41A00000
	mtc1    $at, $f4
	lwc1    $f18, 0x0028($sp)
	lw      $t4, 0x0030($sp)
	div.s   $f6, $f18, $f4
	lw      $t7, 0x0088($t4)
	swc1    $f6, 0x0110($t7)
	lwc1    $f12, 0x0028($sp)
	jal     ATAN2
	lwc1    $f14, 0x002C($sp)
	lw      $t5, 0x0030($sp)
	sh      $v0, 0x002E($t5)
80$:
	lw      $t8, 0x0030($sp)
	lhu     $t9, 0x001A($t8)
	slti    $at, $t9, 0x000F
	beqz    $at, 90$
	nop
	lw      $a0, 0x0030($sp)
	jal     pl_set_anime
	li      $a1, 0x00C2
	b       159$
	nop
90$:
	lw      $t6, 0x0030($sp)
	lhu     $t0, 0x001A($t6)
	slti    $at, $t0, 0x0023
	beqz    $at, 114$
	nop
	lw      $t1, 0x0030($sp)
	lw      $t2, 0x0088($t1)
	lwc1    $f10, 0x003C($t1)
	lwc1    $f16, 0x010C($t2)
	add.s   $f8, $f10, $f16
	swc1    $f8, 0x003C($t1)
	lw      $t3, 0x0030($sp)
	lw      $t4, 0x0088($t3)
	lwc1    $f18, 0x0044($t3)
	lwc1    $f4, 0x0110($t4)
	add.s   $f6, $f18, $f4
	swc1    $f6, 0x0044($t3)
	li.u    $a2, 0x00028000
	li.l    $a2, 0x00028000
	lw      $a0, 0x0030($sp)
	jal     player_80250B04
	li      $a1, 0x0048
	b       159$
	nop
114$:
	lw      $t7, 0x0030($sp)
	lw      $t5, 0x0080($t7)
	lw      $t8, 0x00C8($t5)
	sh      $t8, 0x002E($t7)
	lw      $t9, 0x0030($sp)
	lw      $t6, 0x001C($t9)
	andi    $t0, $t6, 0x0002
	beqz    $t0, 128$
	nop
	lw      $t2, 0x0030($sp)
	li      $at, 0x8000
	lh      $t1, 0x002E($t2)
	addu    $t4, $t1, $at
	sh      $t4, 0x002E($t2)
128$:
	lw      $t3, 0x0030($sp)
	li      $at, 0x41400000
	mtc1    $at, $f10
	lhu     $t5, 0x002E($t3)
	lui     $at, %hi(math_sin)
	lwc1    $f18, 0x003C($t3)
	sra     $t8, $t5, 4
	sll     $t7, $t8, 2
	addu    $at, $at, $t7
	lwc1    $f16, %lo(math_sin)($at)
	mul.s   $f8, $f10, $f16
	add.s   $f4, $f18, $f8
	swc1    $f4, 0x003C($t3)
	lw      $t9, 0x0030($sp)
	li      $at, 0x41400000
	mtc1    $at, $f6
	lhu     $t6, 0x002E($t9)
	lui     $at, %hi(math_cos)
	lwc1    $f18, 0x0044($t9)
	sra     $t0, $t6, 4
	sll     $t1, $t0, 2
	addu    $at, $at, $t1
	lwc1    $f10, %lo(math_cos)($at)
	mul.s   $f16, $f6, $f10
	add.s   $f8, $f18, $f16
	swc1    $f8, 0x0044($t9)
	li.u    $a2, 0x00028000
	li.l    $a2, 0x00028000
	lw      $a0, 0x0030($sp)
	jal     player_80250B04
	li      $a1, 0x0048
159$:
	jal     physics_802559B0
	lw      $a0, 0x0030($sp)
	lw      $t4, 0x0030($sp)
	li      $at, 0x0030
	lhu     $t2, 0x001A($t4)
	bne     $t2, $at, 171$
	nop
	li.u    $a1, 0x0C400201
	li.l    $a1, 0x0C400201
	lw      $a0, 0x0030($sp)
	jal     pl_set_state
	move    $a2, $0
171$:
	b       175$
	move    $v0, $0
	b       175$
	nop
175$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

pl_demo_80259264:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	lhu     $t7, 0x001A($t6)
	bnez    $t7, 28$
	nop
	lw      $t8, 0x0018($sp)
	lw      $t9, 0x001C($t8)
	andi    $t0, $t9, 0x0001
	beqz    $t0, 21$
	nop
	lw      $t2, 0x0018($sp)
	li      $t1, 0x00010000
	lw      $t3, 0x0078($t2)
	sw      $t1, 0x0134($t3)
	lw      $a0, 0x0018($sp)
	jal     pl_set_anime
	li      $a1, 0x005F
	b       28$
	nop
21$:
	lw      $t5, 0x0018($sp)
	li      $t4, 0x00020000
	lw      $t6, 0x0078($t5)
	sw      $t4, 0x0134($t6)
	lw      $a0, 0x0018($sp)
	jal     pl_set_anime
	li      $a1, 0x0060
28$:
	lw      $t7, 0x0018($sp)
	lw      $t8, 0x0080($t7)
	lw      $t9, 0x00C8($t8)
	sh      $t9, 0x002E($t7)
	lw      $t0, 0x0018($sp)
	lw      $t2, 0x0080($t0)
	lwc1    $f4, 0x00A0($t2)
	swc1    $f4, 0x003C($t0)
	lw      $t1, 0x0018($sp)
	lw      $t3, 0x0080($t1)
	lwc1    $f6, 0x00A8($t3)
	swc1    $f6, 0x0044($t1)
	jal     player_80251020
	lw      $a0, 0x0018($sp)
	jal     physics_802559B0
	lw      $a0, 0x0018($sp)
	lw      $t5, 0x0018($sp)
	lw      $t4, 0x001C($t5)
	andi    $t6, $t4, 0x0004
	beqz    $t6, 59$
	nop
	lw      $t8, 0x0018($sp)
	li      $at, 0x0010
	lhu     $t9, 0x001A($t8)
	bne     $t9, $at, 57$
	nop
	lw      $a0, 0x0018($sp)
	jal     pl_fade
	li      $a1, 0x0003
57$:
	b       78$
	nop
59$:
	jal     player_80250940
	lw      $a0, 0x0018($sp)
	beqz    $v0, 78$
	nop
	lw      $t7, 0x0018($sp)
	lw      $t2, 0x001C($t7)
	andi    $t0, $t2, 0x0002
	beqz    $t0, 73$
	nop
	lw      $t3, 0x0018($sp)
	li      $at, 0x8000
	lh      $t1, 0x002E($t3)
	addu    $t5, $t1, $at
	sh      $t5, 0x002E($t3)
73$:
	li.u    $a1, 0x0C400201
	li.l    $a1, 0x0C400201
	lw      $a0, 0x0018($sp)
	jal     pl_set_state
	move    $a2, $0
78$:
	lw      $t4, 0x0018($sp)
	lhu     $t6, 0x001A($t4)
	addiu   $t8, $t6, 0x0001
	sh      $t8, 0x001A($t4)
	b       86$
	move    $v0, $0
	b       86$
	nop
86$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_demo_802593CC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	lhu     $t7, 0x0018($t6)
	bnez    $t7, 26$
	nop
	lw      $t9, 0x0018($sp)
	li      $t8, 0x0001
	sh      $t8, 0x0018($t9)
	lw      $t0, 0x0018($sp)
	lw      $t1, 0x001C($t0)
	andi    $t2, $t1, 0x0001
	beqz    $t2, 20$
	nop
	lw      $t4, 0x0018($sp)
	li      $t3, 0x00040000
	lw      $t5, 0x0080($t4)
	b       24$
	sw      $t3, 0x0134($t5)
20$:
	lw      $t7, 0x0018($sp)
	li      $t6, 0x00080000
	lw      $t8, 0x0080($t7)
	sw      $t6, 0x0134($t8)
24$:
	b       53$
	nop
26$:
	lw      $t9, 0x0018($sp)
	lw      $t0, 0x0080($t9)
	lw      $t1, 0x014C($t0)
	bnez    $t1, 53$
	nop
	lui     $t2, %hi(first_msg)
	lb      $t2, %lo(first_msg)($t2)
	li      $at, 0x0001
	bne     $t2, $at, 48$
	nop
	lui     $t4, %hi(stage_index)
	lh      $t4, %lo(stage_index)($t4)
	li      $at, 0x0006
	bne     $t4, $at, 48$
	nop
	li.u    $a1, 0x20001305
	li.l    $a1, 0x20001305
	lw      $a0, 0x0018($sp)
	jal     pl_set_state
	li      $a2, 0x0015
	b       53$
	nop
48$:
	li.u    $a1, 0x0C400201
	li.l    $a1, 0x0C400201
	lw      $a0, 0x0018($sp)
	jal     pl_set_state
	move    $a2, $0
53$:
	lw      $a0, 0x0018($sp)
	jal     pl_set_anime
	li      $a1, 0x00C2
	jal     physics_802559B0
	lw      $a0, 0x0018($sp)
	b       62$
	move    $v0, $0
	b       62$
	nop
62$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_demo_802594D4:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	lw      $t7, 0x0088($t6)
	sw      $t7, 0x0024($sp)
	lw      $t8, 0x0028($sp)
	lhu     $s0, 0x001A($t8)
	lhu     $t0, 0x001A($t8)
	slti    $t9, $s0, 0x000B
	move    $s0, $t9
	addiu   $t1, $t0, 0x0001
	beqz    $s0, 22$
	sh      $t1, 0x001A($t8)
	lw      $t2, 0x0024($sp)
	li      $at, -0x0002
	lh      $t3, 0x0002($t2)
	and     $t4, $t3, $at
	sh      $t4, 0x0002($t2)
	b       72$
	move    $v0, $0
22$:
	lw      $t5, 0x0024($sp)
	lh      $t6, 0x0002($t5)
	ori     $t7, $t6, 0x0001
	sh      $t7, 0x0002($t5)
	li.u    $a1, 0x24048081
	li.l    $a1, 0x24048081
	lw      $a0, 0x0028($sp)
	jal     player_80251120
	li      $a2, 0x00020000
	lui     $t9, %hi(stage_index)
	lh      $t9, %lo(stage_index)($t9)
	li      $at, 0x000D
	bne     $t9, $at, 53$
	nop
	lui     $t0, %hi(scene_index)
	lh      $t0, %lo(scene_index)($t0)
	li      $at, 0x0002
	bne     $t0, $at, 48$
	nop
	li.u    $a1, 0x7017A081
	li.l    $a1, 0x7017A081
	lw      $a0, 0x0028($sp)
	jal     player_80251120
	li      $a2, 0x00010000
	b       53$
	nop
48$:
	li.u    $a1, 0x7016A081
	li.l    $a1, 0x7016A081
	lw      $a0, 0x0028($sp)
	jal     player_80251120
	li      $a2, 0x00010000
53$:
	li.u    $a1, 0x0C000230
	li.l    $a1, 0x0C000230
	lw      $a0, 0x0028($sp)
	li      $a2, 0x004D
	jal     pl_demo_80258B24
	li      $a3, 0x41000000
	beqz    $v0, 68$
	nop
	lw      $a0, 0x0028($sp)
	jal     player_80251708
	li      $a1, 0x0000
	li.u    $a1, 0x04088081
	li.l    $a1, 0x04088081
	jal     player_802514AC
	lw      $a0, 0x0028($sp)
68$:
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

pl_demo_80259608:
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
	bc1f    20$
	nop
	jal     game_init_msg
	move    $a0, $0
	jal     player_80253488
	lw      $a0, 0x0018($sp)
	b       74$
	nop
20$:
	lw      $t9, 0x0018($sp)
	move    $a0, $t9
	jal     player_80251708
	lw      $a1, 0x0054($t9)
	lw      $a0, 0x0018($sp)
	jal     physics_80256B24
	move    $a1, $0
	li      $at, 0x0001
	bne     $v0, $at, 38$
	nop
	li.u    $a1, 0x04088081
	li.l    $a1, 0x04088081
	jal     player_802514AC
	lw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	li      $a1, 0x1325
	jal     pl_set_state
	move    $a2, $0
38$:
	lw      $t0, 0x0018($sp)
	lhu     $t1, 0x0018($t0)
	bnez    $t1, 64$
	nop
	lwc1    $f10, 0x0040($t0)
	lwc1    $f16, 0x0070($t0)
	li      $at, 0x43960000
	mtc1    $at, $f6
	sub.s   $f18, $f10, $f16
	c.lt.s  $f6, $f18
	nop
	bc1f    64$
	nop
	lw      $a0, 0x0018($sp)
	jal     pl_set_anime
	li      $a1, 0x006F
	bnez    $v0, 62$
	nop
	lw      $t2, 0x0018($sp)
	li.u    $a0, 0x04378081
	li.l    $a0, 0x04378081
	lw      $a1, 0x0088($t2)
	jal     Na_SePlay
	addiu   $a1, $a1, 0x0054
62$:
	b       70$
	nop
64$:
	lw      $t4, 0x0018($sp)
	li      $t3, 0x0001
	sh      $t3, 0x0018($t4)
	lw      $a0, 0x0018($sp)
	jal     pl_set_anime
	li      $a1, 0x0056
70$:
	b       74$
	move    $v0, $0
	b       74$
	nop
74$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_demo_80259740:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	jal     physics_802559B0
	lw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	jal     pl_set_anime
	li      $a1, 0x0057
	jal     player_80250940
	lw      $a0, 0x0018($sp)
	beqz    $v0, 19$
	nop
	jal     game_init_msg
	move    $a0, $0
	li.u    $a1, 0x0C400201
	li.l    $a1, 0x0C400201
	lw      $a0, 0x0018($sp)
	jal     pl_set_state
	move    $a2, $0
19$:
	b       23$
	move    $v0, $0
	b       23$
	nop
23$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_demo_802597AC:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	li      $at, 0x000F
	lhu     $s0, 0x001A($t6)
	lhu     $t8, 0x001A($t6)
	slt     $t7, $at, $s0
	move    $s0, $t7
	addiu   $t9, $t8, 0x0001
	beqz    $s0, 23$
	sh      $t9, 0x001A($t6)
	lw      $a0, 0x0028($sp)
	li      $a1, 0x1327
	li      $a2, 0x0056
	jal     pl_demo_80258B24
	li      $a3, 0xC2000000
	beqz    $v0, 23$
	nop
	lw      $t1, 0x0028($sp)
	li      $t0, 0x001F
	sb      $t0, 0x00B3($t1)
23$:
	lw      $t2, 0x0028($sp)
	li      $at, 0x8000
	lw      $t3, 0x0088($t2)
	lh      $t4, 0x001C($t3)
	addu    $t5, $t4, $at
	sh      $t5, 0x001C($t3)
	lw      $t7, 0x0028($sp)
	lw      $t8, 0x0008($t7)
	ori     $t9, $t8, 0x0008
	sw      $t9, 0x0008($t7)
	b       37$
	move    $v0, $0
	b       37$
	nop
37$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_demo_80259854:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	li      $a1, 0x1327
	li      $a2, 0x0056
	jal     pl_demo_80258B24
	li      $a3, 0x0000
	beqz    $v0, 13$
	nop
	lw      $t7, 0x0018($sp)
	li      $t6, 0x001F
	sb      $t6, 0x00B3($t7)
13$:
	lw      $t8, 0x0018($sp)
	li      $at, 0x8000
	lw      $t9, 0x0088($t8)
	lh      $t0, 0x001C($t9)
	addu    $t1, $t0, $at
	sh      $t1, 0x001C($t9)
	lw      $t2, 0x0018($sp)
	lw      $t3, 0x0008($t2)
	ori     $t4, $t3, 0x0008
	sw      $t4, 0x0008($t2)
	b       27$
	move    $v0, $0
	b       27$
	nop
27$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_demo_802598D0:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0030($sp)
	sw      $s1, 0x0018($sp)
	sw      $s0, 0x0014($sp)
	jal     physics_80255A34
	lw      $a0, 0x0030($sp)
	li.u    $a1, 0x04088081
	li.l    $a1, 0x04088081
	jal     player_80251510
	lw      $a0, 0x0030($sp)
	lw      $t6, 0x0030($sp)
	lhu     $s0, 0x0018($t6)
	beqz    $s0, 26$
	nop
	li      $at, 0x0001
	beq     $s0, $at, 78$
	nop
	li      $at, 0x0002
	beq     $s0, $at, 125$
	nop
	li      $at, 0x0003
	beq     $s0, $at, 162$
	nop
	b       201$
	nop
26$:
	lw      $t7, 0x0030($sp)
	lw      $t8, 0x001C($t7)
	bnez    $t8, 32$
	nop
	b       33$
	li      $s1, 0x0057
32$:
	li      $s1, 0x004E
33$:
	lw      $a0, 0x0030($sp)
	jal     pl_set_anime
	move    $a1, $s1
	jal     player_8025097C
	lw      $a0, 0x0030($sp)
	beqz    $v0, 76$
	nop
	lui     $t9, %hi(save_course)
	lbu     $t9, %lo(save_course)($t9)
	li      $at, 0x0010
	beq     $t9, $at, 50$
	nop
	li      $at, 0x0011
	beq     $t9, $at, 50$
	nop
	jal     objlib_802A4704
	nop
50$:
	jal     menu_open
	li      $a0, 0x0002
	lui     $at, %hi(msg_result)
	sh      $0, %lo(msg_result)($at)
	lw      $t1, 0x0030($sp)
	li      $t0, 0x0003
	sh      $t0, 0x0018($t1)
	lw      $t2, 0x0030($sp)
	lw      $t3, 0x0004($t2)
	andi    $t4, $t3, 0x0010
	bnez    $t4, 65$
	nop
	lw      $t6, 0x0030($sp)
	li      $t5, 0x0002
	sh      $t5, 0x0018($t6)
65$:
	lui     $t7, %hi(save_course)
	lbu     $t7, %lo(save_course)($t7)
	li      $at, 0x0010
	beq     $t7, $at, 73$
	nop
	li      $at, 0x0011
	bne     $t7, $at, 76$
	nop
73$:
	lw      $t9, 0x0030($sp)
	li      $t8, 0x0001
	sh      $t8, 0x0018($t9)
76$:
	b       201$
	nop
78$:
	lw      $a0, 0x0030($sp)
	jal     pl_set_anime
	li      $a1, 0x0031
	sw      $v0, 0x002C($sp)
	lw      $s0, 0x002C($sp)
	li      $at, -0x0001
	beq     $s0, $at, 97$
	nop
	li      $at, 0x0043
	beq     $s0, $at, 103$
	nop
	li      $at, 0x0053
	beq     $s0, $at, 109$
	nop
	li      $at, 0x006F
	beq     $s0, $at, 115$
	nop
	b       121$
	nop
97$:
	la.u    $a2, o_13001BD4
	la.l    $a2, o_13001BD4
	lw      $a0, 0x0030($sp)
	li      $a1, 0x00C8
	jal     pl_demo_80257450
	li      $a3, -0x8000
103$:
	lw      $t0, 0x0030($sp)
	li.u    $a0, 0x04368081
	li.l    $a0, 0x04368081
	lw      $a1, 0x0088($t0)
	jal     Na_SePlay
	addiu   $a1, $a1, 0x0054
109$:
	lw      $t1, 0x0030($sp)
	li.u    $a0, 0x043F8081
	li.l    $a0, 0x043F8081
	lw      $a1, 0x0088($t1)
	jal     Na_SePlay
	addiu   $a1, $a1, 0x0054
115$:
	lw      $t2, 0x0030($sp)
	li.u    $a0, 0x045C8081
	li.l    $a0, 0x045C8081
	lw      $a1, 0x0088($t2)
	jal     Na_SePlay
	addiu   $a1, $a1, 0x0054
121$:
	jal     pl_demo_8025733C
	lw      $a0, 0x0030($sp)
	b       201$
	nop
125$:
	lw      $a0, 0x0030($sp)
	jal     pl_set_anime
	li      $a1, 0x005E
	sw      $v0, 0x002C($sp)
	lw      $t3, 0x002C($sp)
	slti    $at, $t3, 0x0012
	bnez    $at, 136$
	nop
	slti    $at, $t3, 0x0037
	bnez    $at, 143$
	nop
136$:
	lw      $t4, 0x002C($sp)
	slti    $at, $t4, 0x0070
	bnez    $at, 147$
	nop
	slti    $at, $t4, 0x0086
	beqz    $at, 147$
	nop
143$:
	lw      $t6, 0x0030($sp)
	li      $t5, 0x0001
	lw      $t7, 0x0098($t6)
	sb      $t5, 0x0006($t7)
147$:
	lw      $t8, 0x002C($sp)
	slti    $at, $t8, 0x006D
	bnez    $at, 158$
	nop
	slti    $at, $t8, 0x009A
	beqz    $at, 158$
	nop
	lw      $t0, 0x0030($sp)
	li      $t9, 0x0002
	lw      $t1, 0x0098($t0)
	sb      $t9, 0x0005($t1)
158$:
	jal     pl_demo_8025733C
	lw      $a0, 0x0030($sp)
	b       201$
	nop
162$:
	lw      $a0, 0x0030($sp)
	jal     pl_set_anime
	li      $a1, 0x0037
	sw      $v0, 0x002C($sp)
	lw      $s0, 0x002C($sp)
	li      $at, 0x000C
	beq     $s0, $at, 181$
	nop
	li      $at, 0x0025
	beq     $s0, $at, 185$
	nop
	li      $at, 0x0035
	beq     $s0, $at, 185$
	nop
	li      $at, 0x0052
	beq     $s0, $at, 193$
	nop
	b       197$
	nop
181$:
	jal     pl_demo_802574E8
	lw      $a0, 0x0030($sp)
	b       197$
	nop
185$:
	lw      $t2, 0x0030($sp)
	li.u    $a0, 0x04408081
	li.l    $a0, 0x04408081
	lw      $a1, 0x0088($t2)
	jal     Na_SePlay
	addiu   $a1, $a1, 0x0054
	b       197$
	nop
193$:
	jal     pl_demo_80257548
	lw      $a0, 0x0030($sp)
	b       197$
	nop
197$:
	jal     pl_demo_8025733C
	lw      $a0, 0x0030($sp)
	b       201$
	nop
201$:
	lw      $t3, 0x0030($sp)
	li      $at, 0x8000
	lw      $t4, 0x0088($t3)
	lh      $t6, 0x001C($t4)
	addu    $t5, $t6, $at
	sh      $t5, 0x001C($t4)
	b       211$
	move    $v0, $0
	b       211$
	nop
211$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0014($sp)
	lw      $s1, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0030

pl_demo_80259C30:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	li      $at, 0x000F
	lhu     $s0, 0x001A($t6)
	lhu     $t8, 0x001A($t6)
	slt     $t7, $at, $s0
	move    $s0, $t7
	addiu   $t9, $t8, 0x0001
	beqz    $s0, 34$
	sh      $t9, 0x001A($t6)
	li.u    $a1, 0x00020467
	li.l    $a1, 0x00020467
	lw      $a0, 0x0028($sp)
	li      $a2, 0x0056
	jal     pl_demo_80258B24
	li      $a3, 0xC2000000
	beqz    $v0, 34$
	nop
	lw      $t0, 0x0028($sp)
	li.u    $a0, 0x240BD081
	li.l    $a0, 0x240BD081
	lw      $a1, 0x0088($t0)
	jal     Na_SePlay
	addiu   $a1, $a1, 0x0054
	lw      $t1, 0x0028($sp)
	lb      $t2, 0x00AD($t1)
	addiu   $t3, $t2, -0x0001
	sb      $t3, 0x00AD($t1)
	lw      $t5, 0x0028($sp)
	li      $t4, 0x001F
	sb      $t4, 0x00B3($t5)
34$:
	lw      $t8, 0x0028($sp)
	li      $t7, 0x0100
	sh      $t7, 0x00AE($t8)
	b       41$
	move    $v0, $0
	b       41$
	nop
41$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_demo_80259CE8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	li.u    $a1, 0x0C000232
	li.l    $a1, 0x0C000232
	lw      $a0, 0x0018($sp)
	li      $a2, 0x0056
	jal     pl_demo_80258B24
	li      $a3, 0x0000
	beqz    $v0, 24$
	nop
	lw      $t6, 0x0018($sp)
	li.u    $a0, 0x240BD081
	li.l    $a0, 0x240BD081
	lw      $a1, 0x0088($t6)
	jal     Na_SePlay
	addiu   $a1, $a1, 0x0054
	lw      $t7, 0x0018($sp)
	lb      $t8, 0x00AD($t7)
	addiu   $t9, $t8, -0x0001
	sb      $t9, 0x00AD($t7)
	lw      $t1, 0x0018($sp)
	li      $t0, 0x001F
	sb      $t0, 0x00B3($t1)
24$:
	lw      $t3, 0x0018($sp)
	li      $t2, 0x0100
	sh      $t2, 0x00AE($t3)
	b       31$
	move    $v0, $0
	b       31$
	nop
31$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_demo_80259D74:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	li.u    $a1, 0x00020467
	li.l    $a1, 0x00020467
	lw      $a0, 0x0018($sp)
	li      $a2, 0x0056
	jal     pl_demo_80258B24
	li      $a3, 0x0000
	beqz    $v0, 24$
	nop
	lw      $t6, 0x0018($sp)
	li.u    $a0, 0x240BD081
	li.l    $a0, 0x240BD081
	lw      $a1, 0x0088($t6)
	jal     Na_SePlay
	addiu   $a1, $a1, 0x0054
	lw      $t7, 0x0018($sp)
	lb      $t8, 0x00AD($t7)
	addiu   $t9, $t8, -0x0001
	sb      $t9, 0x00AD($t7)
	lw      $t1, 0x0018($sp)
	li      $t0, 0x001F
	sb      $t0, 0x00B3($t1)
24$:
	lw      $t3, 0x0018($sp)
	li      $t2, 0x0100
	sh      $t2, 0x00AE($t3)
	b       31$
	move    $v0, $0
	b       31$
	nop
31$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_demo_80259E00:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	lw      $t7, 0x0088($t6)
	sw      $t7, 0x0024($sp)
	li.u    $a1, 0x24048081
	li.l    $a1, 0x24048081
	lw      $a0, 0x0028($sp)
	jal     player_80251120
	li      $a2, 0x00020000
	lw      $t8, 0x0028($sp)
	lhu     $s0, 0x001A($t8)
	lhu     $t0, 0x001A($t8)
	slti    $t9, $s0, 0x000B
	move    $s0, $t9
	addiu   $t1, $t0, 0x0001
	beqz    $s0, 27$
	sh      $t1, 0x001A($t8)
	lw      $t2, 0x0024($sp)
	li      $at, -0x0002
	lh      $t3, 0x0002($t2)
	and     $t4, $t3, $at
	sh      $t4, 0x0002($t2)
	b       57$
	move    $v0, $0
27$:
	lw      $a0, 0x0028($sp)
	li      $a1, 0x1327
	li      $a2, 0x004D
	jal     pl_demo_80258B24
	li      $a3, 0xC1C00000
	beqz    $v0, 40$
	nop
	lw      $t6, 0x0028($sp)
	li      $t5, 0x001F
	sb      $t5, 0x00B3($t6)
	lw      $t9, 0x0028($sp)
	li      $t7, 0x0001
	sw      $t7, 0x001C($t9)
40$:
	lw      $t0, 0x0028($sp)
	lw      $t1, 0x0008($t0)
	ori     $t8, $t1, 0x0008
	sw      $t8, 0x0008($t0)
	lw      $t3, 0x0024($sp)
	li      $at, 0x8000
	lh      $t4, 0x001C($t3)
	addu    $t2, $t4, $at
	sh      $t2, 0x001C($t3)
	lw      $t5, 0x0024($sp)
	lh      $t6, 0x0002($t5)
	ori     $t7, $t6, 0x0001
	sh      $t7, 0x0002($t5)
	b       57$
	move    $v0, $0
	b       57$
	nop
57$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_demo_80259EF8:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	lw      $t7, 0x0088($t6)
	sw      $t7, 0x0024($sp)
	lw      $t8, 0x0028($sp)
	lhu     $s0, 0x001A($t8)
	lhu     $t0, 0x001A($t8)
	slti    $t9, $s0, 0x000B
	move    $s0, $t9
	addiu   $t1, $t0, 0x0001
	beqz    $s0, 22$
	sh      $t1, 0x001A($t8)
	lw      $t2, 0x0024($sp)
	li      $at, -0x0002
	lh      $t3, 0x0002($t2)
	and     $t4, $t3, $at
	sh      $t4, 0x0002($t2)
	b       48$
	move    $v0, $0
22$:
	li.u    $a1, 0x00020460
	li.l    $a1, 0x00020460
	lw      $a0, 0x0028($sp)
	li      $a2, 0x0002
	jal     pl_demo_80258B24
	li      $a3, 0xC1C00000
	beqz    $v0, 37$
	nop
	lw      $t5, 0x0028($sp)
	lb      $t6, 0x00AD($t5)
	addiu   $t7, $t6, -0x0001
	sb      $t7, 0x00AD($t5)
	lw      $t0, 0x0028($sp)
	li      $t9, 0x001F
	sb      $t9, 0x00B3($t0)
37$:
	lw      $t1, 0x0024($sp)
	lh      $t8, 0x0002($t1)
	ori     $t3, $t8, 0x0001
	sh      $t3, 0x0002($t1)
	lw      $t2, 0x0028($sp)
	li      $t4, 0x0100
	sh      $t4, 0x00AE($t2)
	b       48$
	move    $v0, $0
	b       48$
	nop
48$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_demo_80259FCC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	li      $a1, 0x1333
	li      $a2, 0x0056
	jal     pl_demo_80258B24
	li      $a3, 0x0000
	lw      $t6, 0x0018($sp)
	lh      $t7, 0x0076($t6)
	lwc1    $f4, 0x0040($t6)
	addiu   $t8, $t7, -0x0064
	mtc1    $t8, $f6
	nop
	cvt.s.w $f8, $f6
	c.lt.s  $f4, $f8
	nop
	bc1f    21$
	nop
	jal     player_80253488
	lw      $a0, 0x0018($sp)
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

pl_demo_8025A040:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	li.u    $a1, 0x04088081
	li.l    $a1, 0x04088081
	jal     player_80251510
	lw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	jal     pl_set_anime
	li      $a1, 0x0057
	jal     physics_802559B0
	lw      $a0, 0x0018($sp)
	jal     player_80250940
	lw      $a0, 0x0018($sp)
	beqz    $v0, 23$
	nop
	jal     game_init_msg
	move    $a0, $0
	li.u    $a1, 0x0C400201
	li.l    $a1, 0x0C400201
	lw      $a0, 0x0018($sp)
	jal     pl_set_state
	move    $a2, $0
23$:
	b       27$
	move    $v0, $0
	b       27$
	nop
27$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_demo_8025A0BC:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0030($sp)
	lw      $t6, 0x0030($sp)
	lw      $t7, 0x0080($t6)
	lwc1    $f6, 0x003C($t6)
	lwc1    $f4, 0x00A0($t7)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x0024($sp)
	lw      $t8, 0x0030($sp)
	lw      $t9, 0x0080($t8)
	lwc1    $f16, 0x0044($t8)
	lwc1    $f10, 0x00A8($t9)
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x0020($sp)
	lwc1    $f4, 0x0024($sp)
	lwc1    $f8, 0x0020($sp)
	mul.s   $f6, $f4, $f4
	nop
	mul.s   $f10, $f8, $f8
	jal     sqrtf
	add.s   $f12, $f6, $f10
	swc1    $f0, 0x001C($sp)
	li      $at, 0x41A00000
	mtc1    $at, $f18
	lwc1    $f16, 0x001C($sp)
	c.lt.s  $f18, $f16
	nop
	bc1f    34$
	nop
	li      $at, 0x41200000
	mtc1    $at, $f4
	b       39$
	swc1    $f4, 0x0018($sp)
34$:
	li      $at, 0x40000000
	mtc1    $at, $f6
	lwc1    $f8, 0x001C($sp)
	div.s   $f10, $f8, $f6
	swc1    $f10, 0x0018($sp)
39$:
	li      $at, 0x3F000000
	mtc1    $at, $f18
	lwc1    $f16, 0x0018($sp)
	c.lt.s  $f16, $f18
	nop
	bc1f    49$
	nop
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x0018($sp)
49$:
	lw      $t0, 0x0030($sp)
	lhu     $t1, 0x0018($t0)
	sltiu   $at, $t1, 0x0005
	beqz    $at, 238$
	nop
	sll     $t1, $t1, 2
	lui     $at, %hi(pl_demo_803366D4)
	addu    $at, $at, $t1
	lw      $t1, %lo(pl_demo_803366D4)($at)
	jr      $t1
	nop
.globl L8025A1AC
L8025A1AC:
	lw      $t2, 0x0030($sp)
	li      $at, 0x44000000
	mtc1    $at, $f16
	lwc1    $f8, 0x0040($t2)
	lwc1    $f6, 0x0070($t2)
	sub.s   $f10, $f8, $f6
	sub.s   $f18, $f16, $f10
	swc1    $f18, 0x002C($sp)
	lwc1    $f4, 0x002C($sp)
	mtc1    $0, $f8
	nop
	c.lt.s  $f8, $f4
	nop
	bc1f    88$
	nop
	li      $at, 0x40800000
	mtc1    $at, $f6
	li      $at, 0x3F800000
	mtc1    $at, $f10
	mul.s   $f16, $f6, $f4
	jal     sqrtf
	add.s   $f12, $f16, $f10
	li      $at, 0x3F800000
	mtc1    $at, $f18
	lw      $t3, 0x0030($sp)
	sub.s   $f8, $f0, $f18
	b       92$
	swc1    $f8, 0x004C($t3)
88$:
	li      $at, 0x40000000
	mtc1    $at, $f6
	lw      $t4, 0x0030($sp)
	swc1    $f6, 0x004C($t4)
92$:
	lw      $t7, 0x0030($sp)
	li      $t5, 0x0001
	sh      $t5, 0x0018($t7)
	lw      $t9, 0x0030($sp)
	li      $t6, 0x0064
	sh      $t6, 0x001A($t9)
.globl L8025A244
L8025A244:
	lwc1    $f12, 0x0020($sp)
	jal     ATAN2
	lwc1    $f14, 0x0024($sp)
	lw      $t8, 0x0030($sp)
	sh      $v0, 0x002E($t8)
	lw      $a0, 0x0030($sp)
	jal     player_80251708
	lw      $a1, 0x0018($sp)
	lw      $a0, 0x0030($sp)
	jal     pl_set_anime
	li      $a1, 0x006F
	bnez    $v0, 117$
	nop
	lw      $t0, 0x0030($sp)
	li.u    $a0, 0x04378081
	li.l    $a0, 0x04378081
	lw      $a1, 0x0088($t0)
	jal     Na_SePlay
	addiu   $a1, $a1, 0x0054
117$:
	lw      $t1, 0x0030($sp)
	li      $at, -0x0101
	lw      $t2, 0x0004($t1)
	and     $t3, $t2, $at
	sw      $t3, 0x0004($t1)
	lw      $a0, 0x0030($sp)
	jal     physics_80256B24
	move    $a1, $0
	lw      $t4, 0x0030($sp)
	mtc1    $0, $f16
	lwc1    $f4, 0x004C($t4)
	c.le.s  $f4, $f16
	nop
	bc1f    135$
	nop
	lw      $t7, 0x0030($sp)
	li      $t5, 0x0002
	sh      $t5, 0x0018($t7)
135$:
	b       238$
	nop
.globl L8025A2E0
L8025A2E0:
	lwc1    $f12, 0x0020($sp)
	jal     ATAN2
	lwc1    $f14, 0x0024($sp)
	lw      $t6, 0x0030($sp)
	sh      $v0, 0x002E($t6)
	lw      $a0, 0x0030($sp)
	jal     player_80251708
	lw      $a1, 0x0018($sp)
	lw      $t9, 0x0030($sp)
	li      $at, -0x0101
	lw      $t8, 0x0004($t9)
	and     $t0, $t8, $at
	sw      $t0, 0x0004($t9)
	lw      $a0, 0x0030($sp)
	jal     physics_80256B24
	move    $a1, $0
	li      $at, 0x0001
	bne     $v0, $at, 162$
	nop
	lw      $a0, 0x0030($sp)
	jal     pl_fade
	li      $a1, 0x0002
	lw      $t3, 0x0030($sp)
	li      $t2, 0x0004
	sh      $t2, 0x0018($t3)
162$:
	lw      $t1, 0x0030($sp)
	li      $at, 0x0002
	lhu     $t4, 0x0018($t1)
	bne     $t4, $at, 177$
	nop
	lw      $t5, 0x0030($sp)
	lw      $t7, 0x0088($t5)
	lh      $t6, 0x0040($t7)
	bnez    $t6, 175$
	nop
	lw      $t0, 0x0030($sp)
	li      $t8, 0x0003
	sh      $t8, 0x0018($t0)
175$:
	b       193$
	nop
177$:
	li.u    $a1, 0x0446A081
	li.l    $a1, 0x0446A081
	lw      $a0, 0x0030($sp)
	jal     player_80251120
	li      $a2, 0x00010000
	lw      $a0, 0x0030($sp)
	jal     pl_set_anime
	li      $a1, 0x0088
	lw      $t9, 0x0030($sp)
	lwc1    $f14, 0x004C($t9)
	lwc1    $f12, 0x0054($t9)
	jal     ATAN2
	neg.s   $f14, $f14
	lw      $t2, 0x0030($sp)
	lw      $t3, 0x0088($t2)
	sh      $v0, 0x001A($t3)
193$:
	lw      $t4, 0x0030($sp)
	li      $t1, 0x00FF
	sb      $t1, 0x00B4($t4)
	lw      $t5, 0x0030($sp)
	lhu     $t7, 0x001A($t5)
	slti    $at, $t7, 0x000B
	bnez    $at, 227$
	nop
	lw      $t6, 0x0030($sp)
	lhu     $t8, 0x001A($t6)
	addiu   $t0, $t8, -0x0006
	sh      $t0, 0x001A($t6)
	lw      $t9, 0x0030($sp)
	lhu     $t2, 0x001A($t9)
	mtc1    $t2, $f10
	bgez    $t2, 214$
	cvt.s.w $f18, $f10
	li      $at, 0x4F800000
	mtc1    $at, $f8
	nop
	add.s   $f18, $f18, $f8
214$:
	li      $at, 0x42C80000
	mtc1    $at, $f6
	nop
	div.s   $f4, $f18, $f6
	swc1    $f4, 0x0028($sp)
	lwc1    $f16, 0x0028($sp)
	lw      $t3, 0x0030($sp)
	mfc1    $a1, $f16
	lw      $a0, 0x0088($t3)
	mfc1    $a2, $f16
	mfc1    $a3, $f16
	jal     vecf_set
	addiu   $a0, $a0, 0x002C
227$:
	b       238$
	nop
.globl L8025A450
L8025A450:
	jal     physics_802559B0
	lw      $a0, 0x0030($sp)
	lw      $t1, 0x0030($sp)
	lw      $t4, 0x0088($t1)
	lh      $t5, 0x0002($t4)
	ori     $t7, $t5, 0x0010
	sh      $t7, 0x0002($t4)
	b       238$
	nop
238$:
	b       242$
	move    $v0, $0
	b       242$
	nop
242$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

pl_demo_8025A494:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0030($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0030($sp)
	lw      $t7, 0x0004($t6)
	andi    $t8, $t7, 0x0004
	beqz    $t8, 12$
	nop
	li.u    $s0, 0x04289081
	b       14$
	li.l    $s0, 0x04289081
12$:
	li.u    $s0, 0x04008081
	li.l    $s0, 0x04008081
14$:
	lw      $a0, 0x0030($sp)
	move    $a1, $s0
	jal     player_80251444
	li      $a2, 0x0001
	jal     player_8025118C
	lw      $a0, 0x0030($sp)
	lw      $t9, 0x0030($sp)
	lhu     $t0, 0x0018($t9)
	bnez    $t0, 69$
	nop
	lw      $t1, 0x0030($sp)
	lw      $t2, 0x0080($t1)
	lwc1    $f6, 0x003C($t1)
	lwc1    $f4, 0x00A0($t2)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x002C($sp)
	lw      $t3, 0x0030($sp)
	lw      $t4, 0x0080($t3)
	lwc1    $f16, 0x0044($t3)
	lwc1    $f10, 0x00A8($t4)
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x0028($sp)
	lwc1    $f4, 0x002C($sp)
	lwc1    $f8, 0x0028($sp)
	mul.s   $f6, $f4, $f4
	nop
	mul.s   $f10, $f8, $f8
	jal     sqrtf
	add.s   $f12, $f6, $f10
	swc1    $f0, 0x0024($sp)
	li      $at, 0x42700000
	mtc1    $at, $f16
	lw      $t5, 0x0030($sp)
	swc1    $f16, 0x004C($t5)
	lwc1    $f12, 0x0028($sp)
	jal     ATAN2
	lwc1    $f14, 0x002C($sp)
	lw      $t6, 0x0030($sp)
	sh      $v0, 0x002E($t6)
	li      $at, 0x41A00000
	mtc1    $at, $f4
	lwc1    $f18, 0x0024($sp)
	lw      $a0, 0x0030($sp)
	div.s   $f8, $f18, $f4
	mfc1    $a1, $f8
	jal     player_80251708
	nop
	lw      $t7, 0x0030($sp)
	li      $at, -0x0101
	lw      $t8, 0x0004($t7)
	and     $t9, $t8, $at
	sw      $t9, 0x0004($t7)
	lw      $t2, 0x0030($sp)
	li      $t0, 0x0001
	sh      $t0, 0x0018($t2)
69$:
	lw      $a0, 0x0030($sp)
	jal     pl_set_anime
	li      $a1, 0x0050
	lw      $a0, 0x0030($sp)
	jal     physics_80256B24
	move    $a1, $0
	lw      $t1, 0x0030($sp)
	mtc1    $0, $f10
	lwc1    $f6, 0x004C($t1)
	c.le.s  $f6, $f10
	nop
	bc1f    86$
	nop
	lw      $a0, 0x0030($sp)
	li      $a1, 0x1535
	jal     pl_set_state
	move    $a2, $0
86$:
	b       90$
	move    $v0, $0
	b       90$
	nop
90$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

pl_demo_8025A610:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	li.u    $a1, 0x0457C081
	li.l    $a1, 0x0457C081
	lw      $a0, 0x0028($sp)
	jal     player_80251120
	li      $a2, 0x00010000
	lw      $t6, 0x0028($sp)
	li.u    $at, 0x0C008220
	li.l    $at, 0x0C008220
	lw      $t7, 0x0010($t6)
	bne     $t7, $at, 17$
	nop
	b       18$
	li      $s0, 0x0098
17$:
	li      $s0, 0x00C2
18$:
	lw      $a0, 0x0028($sp)
	jal     pl_set_anime
	move    $a1, $s0
	lw      $t8, 0x0028($sp)
	lw      $t9, 0x0004($t8)
	ori     $t0, $t9, 0x0080
	sw      $t0, 0x0004($t8)
	lw      $t1, 0x0028($sp)
	lhu     $t2, 0x001A($t1)
	slti    $at, $t2, 0x0020
	beqz    $at, 36$
	nop
	lw      $t3, 0x0028($sp)
	lhu     $t4, 0x001A($t3)
	subu    $t5, $0, $t4
	sll     $t6, $t5, 3
	addiu   $t7, $t6, 0x00F8
	sb      $t7, 0x00B5($t3)
36$:
	lw      $t9, 0x0028($sp)
	lhu     $s0, 0x001A($t9)
	lhu     $t8, 0x001A($t9)
	xori    $t0, $s0, 0x0014
	sltiu   $t0, $t0, 0x0001
	move    $s0, $t0
	addiu   $t1, $t8, 0x0001
	beqz    $s0, 48$
	sh      $t1, 0x001A($t9)
	lw      $a0, 0x0028($sp)
	jal     pl_fade
	li      $a1, 0x0005
48$:
	jal     physics_802559B0
	lw      $a0, 0x0028($sp)
	b       54$
	move    $v0, $0
	b       54$
	nop
54$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_demo_8025A6FC:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	li.u    $a1, 0x0457C081
	li.l    $a1, 0x0457C081
	lw      $a0, 0x0028($sp)
	jal     player_80251120
	li      $a2, 0x00010000
	lw      $a0, 0x0028($sp)
	jal     pl_set_anime
	li      $a1, 0x00C2
	lw      $t6, 0x0028($sp)
	lhu     $t7, 0x001A($t6)
	slti    $at, $t7, 0x0020
	beqz    $at, 26$
	nop
	lw      $t8, 0x0028($sp)
	lw      $t9, 0x0004($t8)
	ori     $t0, $t9, 0x0080
	sw      $t0, 0x0004($t8)
	lw      $t1, 0x0028($sp)
	lhu     $t2, 0x001A($t1)
	sll     $t3, $t2, 3
	b       31$
	sb      $t3, 0x00B5($t1)
26$:
	lw      $t4, 0x0028($sp)
	li      $at, -0x0081
	lw      $t5, 0x0004($t4)
	and     $t6, $t5, $at
	sw      $t6, 0x0004($t4)
31$:
	lw      $t7, 0x0028($sp)
	lhu     $s0, 0x001A($t7)
	lhu     $t0, 0x001A($t7)
	xori    $t9, $s0, 0x0020
	sltiu   $t9, $t9, 0x0001
	move    $s0, $t9
	addiu   $t8, $t0, 0x0001
	beqz    $s0, 76$
	sh      $t8, 0x001A($t7)
	lw      $t2, 0x0028($sp)
	lh      $t3, 0x0076($t2)
	lwc1    $f4, 0x0040($t2)
	addiu   $t1, $t3, -0x0064
	mtc1    $t1, $f6
	nop
	cvt.s.w $f8, $f6
	c.lt.s  $f4, $f8
	nop
	bc1f    71$
	nop
	lw      $t5, 0x0028($sp)
	li      $at, 0x0008
	lw      $t6, 0x0090($t5)
	lw      $t4, 0x0024($t6)
	lbu     $t9, 0x0000($t4)
	beq     $t9, $at, 64$
	nop
	lw      $t0, 0x0028($sp)
	li      $a1, 0x0008
	li      $a2, 0x0001
	lw      $t8, 0x0090($t0)
	jal     camera_80286188
	lw      $a0, 0x0024($t8)
64$:
	li.u    $a1, 0x380022C0
	li.l    $a1, 0x380022C0
	lw      $a0, 0x0028($sp)
	jal     pl_set_state
	move    $a2, $0
	b       76$
	nop
71$:
	li.u    $a1, 0x0C400201
	li.l    $a1, 0x0C400201
	lw      $a0, 0x0028($sp)
	jal     pl_set_state
	move    $a2, $0
76$:
	jal     physics_802559B0
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

pl_demo_8025A858:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	li.u    $a1, 0x2410C081
	li.l    $a1, 0x2410C081
	lw      $a0, 0x0028($sp)
	jal     player_80251120
	li      $a2, 0x00010000
	lw      $t6, 0x0028($sp)
	li.u    $a0, 0x14160001
	li.l    $a0, 0x14160001
	lw      $a1, 0x0088($t6)
	jal     Na_SePlay
	addiu   $a1, $a1, 0x0054
	jal     camera_8027F590
	li      $a0, 0x000A
	lw      $a0, 0x0028($sp)
	jal     pl_set_anime
	li      $a1, 0x007A
	bnez    $v0, 30$
	nop
	lw      $t7, 0x0028($sp)
	lhu     $t8, 0x001A($t7)
	addiu   $t9, $t8, 0x0001
	sh      $t9, 0x001A($t7)
	lw      $t0, 0x0028($sp)
	lw      $t1, 0x0004($t0)
	ori     $t2, $t1, 0x0040
	sw      $t2, 0x0004($t0)
30$:
	lw      $t3, 0x0028($sp)
	lw      $t4, 0x001C($t3)
	bnez    $t4, 52$
	nop
	lw      $a0, 0x0028($sp)
	jal     player_80251708
	li      $a1, 0x0000
	lw      $a0, 0x0028($sp)
	jal     physics_80256B24
	li      $a1, 0x0001
	li      $at, 0x0001
	bne     $v0, $at, 50$
	nop
	li.u    $a1, 0x04088081
	li.l    $a1, 0x04088081
	jal     player_802514AC
	lw      $a0, 0x0028($sp)
	lw      $t6, 0x0028($sp)
	li      $t5, 0x0001
	sw      $t5, 0x001C($t6)
50$:
	b       76$
	nop
52$:
	lw      $t8, 0x0028($sp)
	lhu     $t9, 0x001A($t8)
	slti    $at, $t9, 0x0006
	bnez    $at, 74$
	nop
	lw      $t1, 0x0028($sp)
	li      $t7, 0x001E
	sh      $t7, 0x0026($t1)
	lw      $t2, 0x0028($sp)
	lh      $t0, 0x00AE($t2)
	slti    $at, $t0, 0x0100
	beqz    $at, 68$
	nop
	li.u    $s0, 0x00021313
	b       70$
	li.l    $s0, 0x00021313
68$:
	li.u    $s0, 0x0C400201
	li.l    $s0, 0x0C400201
70$:
	lw      $a0, 0x0028($sp)
	move    $a1, $s0
	jal     pl_set_state
	move    $a2, $0
74$:
	jal     physics_802559B0
	lw      $a0, 0x0028($sp)
76$:
	b       80$
	move    $v0, $0
	b       80$
	nop
80$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_demo_8025A9AC:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0038($sp)
	sw      $s0, 0x0018($sp)
	sw      $0, 0x0024($sp)
	lw      $t6, 0x0038($sp)
	mtc1    $0, $f10
	lwc1    $f4, 0x006C($t6)
	lwc1    $f6, 0x0070($t6)
	sub.s   $f8, $f4, $f6
	c.lt.s  $f8, $f10
	swc1    $f8, 0x002C($sp)
	bc1f    17$
	nop
	mtc1    $0, $f16
	nop
	swc1    $f16, 0x002C($sp)
17$:
	lw      $t7, 0x0038($sp)
	lhu     $s0, 0x0018($t7)
	beqz    $s0, 29$
	nop
	li      $at, 0x0001
	beq     $s0, $at, 115$
	nop
	li      $at, 0x0002
	beq     $s0, $at, 127$
	nop
	b       164$
	nop
29$:
	li      $at, 0x43200000
	mtc1    $at, $f4
	lwc1    $f18, 0x002C($sp)
	c.lt.s  $f4, $f18
	nop
	bc1f    45$
	nop
	lw      $t8, 0x0038($sp)
	sb      $0, 0x00B4($t8)
	li.u    $a1, 0x0C400201
	li.l    $a1, 0x0C400201
	lw      $a0, 0x0038($sp)
	jal     pl_set_state
	move    $a2, $0
	b       275$
	nop
45$:
	lw      $t0, 0x0038($sp)
	li      $t9, 0x00FF
	sb      $t9, 0x00B4($t0)
	lui     $at, %hi(pl_demo_803366E8)
	lwc1    $f8, %lo(pl_demo_803366E8)($at)
	lwc1    $f6, 0x002C($sp)
	c.le.s  $f8, $f6
	nop
	bc1f    76$
	nop
	li      $at, 0x43200000
	mtc1    $at, $f16
	lwc1    $f10, 0x002C($sp)
	div.s   $f18, $f10, $f16
	swc1    $f18, 0x0030($sp)
	li      $at, 0x40000000
	lwc1    $f6, 0x0030($sp)
	mtc1    $at, $f4
	mtc1    $at, $f10
	lw      $t1, 0x0038($sp)
	sub.s   $f8, $f4, $f6
	mfc1    $a2, $f6
	lw      $a0, 0x0088($t1)
	sub.s   $f16, $f10, $f6
	mfc1    $a1, $f8
	addiu   $a0, $a0, 0x002C
	mfc1    $a3, $f16
	jal     vecf_set
	nop
	b       113$
	nop
76$:
	lw      $t2, 0x0038($sp)
	lw      $t3, 0x0004($t2)
	andi    $t4, $t3, 0x0004
	bnez    $t4, 101$
	nop
	lh      $t5, 0x0026($t2)
	bnez    $t5, 101$
	nop
	lw      $t6, 0x0038($sp)
	lw      $t7, 0x0004($t6)
	andi    $t8, $t7, 0x0010
	beqz    $t8, 91$
	nop
	b       92$
	li      $s0, 0x000C
91$:
	li      $s0, 0x0012
92$:
	lw      $t9, 0x0038($sp)
	lbu     $t0, 0x00B2($t9)
	addu    $t1, $t0, $s0
	sb      $t1, 0x00B2($t9)
	li.u    $a1, 0x240AFF81
	li.l    $a1, 0x240AFF81
	lw      $a0, 0x0038($sp)
	jal     player_80251120
	li      $a2, 0x00020000
101$:
	lw      $t3, 0x0038($sp)
	li.u    $a1, 0x3FE66666
	li.l    $a1, 0x3FE66666
	lw      $a0, 0x0088($t3)
	li.u    $a2, 0x3D4CCCCD
	li.l    $a2, 0x3D4CCCCD
	addu    $a3, $a1, $0
	jal     vecf_set
	addiu   $a0, $a0, 0x002C
	lw      $t2, 0x0038($sp)
	li      $t4, 0x0001
	sh      $t4, 0x0018($t2)
113$:
	b       164$
	nop
115$:
	li      $at, 0x41F00000
	mtc1    $at, $f4
	lwc1    $f18, 0x002C($sp)
	c.le.s  $f4, $f18
	nop
	bc1f    125$
	nop
	lw      $t6, 0x0038($sp)
	li      $t5, 0x0002
	sh      $t5, 0x0018($t6)
125$:
	b       164$
	nop
127$:
	lw      $t7, 0x0038($sp)
	lhu     $t8, 0x001A($t7)
	addiu   $t0, $t8, 0x0001
	sh      $t0, 0x001A($t7)
	lw      $t1, 0x0038($sp)
	lhu     $t9, 0x001A($t1)
	slti    $at, $t9, 0x000F
	bnez    $at, 162$
	nop
	lw      $t3, 0x0038($sp)
	lh      $t4, 0x00AE($t3)
	slti    $at, $t4, 0x0100
	beqz    $at, 150$
	nop
	lw      $a0, 0x0038($sp)
	jal     pl_fade
	li      $a1, 0x0012
	lw      $a0, 0x0038($sp)
	li      $a1, 0x1300
	jal     pl_set_state
	move    $a2, $0
	b       162$
	nop
150$:
	lw      $t2, 0x0038($sp)
	lbu     $t5, 0x00B2($t2)
	bnez    $t5, 162$
	nop
	lw      $t8, 0x0038($sp)
	li      $t6, 0x001E
	sb      $t6, 0x00B4($t8)
	li.u    $a1, 0x0C400201
	li.l    $a1, 0x0C400201
	lw      $a0, 0x0038($sp)
	jal     pl_set_state
	move    $a2, $0
162$:
	b       164$
	nop
164$:
	lw      $t0, 0x0038($sp)
	lw      $t7, 0x0068($t0)
	beqz    $t7, 183$
	nop
	li      $at, 0x3F000000
	mtc1    $at, $f10
	lwc1    $f8, 0x0020($t7)
	c.lt.s  $f8, $f10
	nop
	bc1f    183$
	nop
	lw      $t1, 0x0038($sp)
	lw      $t9, 0x0068($t1)
	lwc1    $f12, 0x0024($t9)
	jal     ATAN2
	lwc1    $f14, 0x001C($t9)
	sh      $v0, 0x002A($sp)
	li      $t3, 0x0001
	sw      $t3, 0x0024($sp)
183$:
	lw      $t4, 0x0038($sp)
	lw      $t2, 0x0064($t4)
	beqz    $t2, 202$
	nop
	li      $at, 0xBF000000
	mtc1    $at, $f6
	lwc1    $f16, 0x0020($t2)
	c.lt.s  $f6, $f16
	nop
	bc1f    202$
	nop
	lw      $t5, 0x0038($sp)
	lw      $t6, 0x0064($t5)
	lwc1    $f12, 0x0024($t6)
	jal     ATAN2
	lwc1    $f14, 0x001C($t6)
	sh      $v0, 0x002A($sp)
	li      $t8, 0x0001
	sw      $t8, 0x0024($sp)
202$:
	lw      $t0, 0x0024($sp)
	beqz    $t0, 245$
	nop
	lhu     $t7, 0x002A($sp)
	lui     $at, %hi(math_sin)
	lw      $t3, 0x0038($sp)
	sra     $t1, $t7, 4
	sll     $t9, $t1, 2
	addu    $at, $at, $t9
	lwc1    $f18, %lo(math_sin)($at)
	li      $at, 0x41200000
	mtc1    $at, $f4
	nop
	mul.s   $f8, $f18, $f4
	swc1    $f8, 0x0048($t3)
	lhu     $t4, 0x002A($sp)
	lui     $at, %hi(math_cos)
	lw      $t6, 0x0038($sp)
	sra     $t2, $t4, 4
	sll     $t5, $t2, 2
	addu    $at, $at, $t5
	lwc1    $f10, %lo(math_cos)($at)
	li      $at, 0x41200000
	mtc1    $at, $f6
	nop
	mul.s   $f16, $f10, $f6
	swc1    $f16, 0x0050($t6)
	mtc1    $0, $f18
	lw      $t8, 0x0038($sp)
	swc1    $f18, 0x004C($t8)
	jal     physics_80255D88
	lw      $a0, 0x0038($sp)
	bnez    $v0, 245$
	nop
	lw      $t0, 0x0038($sp)
	sb      $0, 0x00B4($t0)
	li.u    $a1, 0x0C400201
	li.l    $a1, 0x0C400201
	lw      $a0, 0x0038($sp)
	jal     pl_set_state
	move    $a2, $0
	b       275$
	move    $v0, $0
245$:
	lw      $t7, 0x0038($sp)
	li      $at, 0x012C
	lw      $s0, 0x001C($t7)
	lw      $t9, 0x001C($t7)
	sltu    $t1, $at, $s0
	move    $s0, $t1
	addiu   $t3, $t9, 0x0001
	beqz    $s0, 266$
	sw      $t3, 0x001C($t7)
	lw      $t2, 0x0038($sp)
	li      $t4, 0x00FF
	sh      $t4, 0x00AE($t2)
	lw      $t5, 0x0038($sp)
	sb      $0, 0x00B2($t5)
	lw      $a0, 0x0038($sp)
	jal     pl_fade
	li      $a1, 0x0012
	lw      $a0, 0x0038($sp)
	li      $a1, 0x1300
	jal     pl_set_state
	move    $a2, $0
266$:
	jal     physics_802559B0
	lw      $a0, 0x0038($sp)
	lw      $a0, 0x0038($sp)
	jal     pl_set_anime
	li      $a1, 0x000E
	b       275$
	move    $v0, $0
	b       275$
	nop
275$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

pl_demo_8025AE0C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lw      $a0, 0x0020($sp)
	jal     pl_set_anime
	li      $a1, 0x0036
	sw      $v0, 0x001C($sp)
	lw      $t6, 0x001C($sp)
	bnez    $t6, 12$
	nop
	jal     objlib_802A4704
	nop
12$:
	lw      $t7, 0x001C($sp)
	li      $at, 0x001C
	bne     $t7, $at, 18$
	nop
	jal     pl_demo_80257548
	lw      $a0, 0x0020($sp)
18$:
	jal     player_80250940
	lw      $a0, 0x0020($sp)
	beqz    $v0, 29$
	nop
	li.u    $a1, 0x0C400201
	li.l    $a1, 0x0C400201
	lw      $a0, 0x0020($sp)
	jal     pl_set_state
	move    $a2, $0
	jal     objlib_802A4728
	nop
29$:
	jal     physics_80255A34
	lw      $a0, 0x0020($sp)
	b       35$
	move    $v0, $0
	b       35$
	nop
35$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

pl_demo_8025AEA8:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	sw      $a2, 0x0028($sp)
	sw      $a3, 0x002C($sp)
	lw      $a0, 0x0020($sp)
	jal     pl_set_anime
	lw      $a1, 0x0024($sp)
	sw      $v0, 0x001C($sp)
	lw      $t6, 0x0020($sp)
	lhu     $t7, 0x0002($t6)
	andi    $t8, $t7, 0x0002
	beqz    $t8, 36$
	nop
	lw      $t9, 0x0020($sp)
	lhu     $t0, 0x001A($t9)
	addiu   $t1, $t0, 0x0001
	sh      $t1, 0x001A($t9)
	lw      $t2, 0x0020($sp)
	lhu     $t3, 0x001A($t2)
	slti    $at, $t3, 0x0005
	bnez    $at, 36$
	nop
	lw      $t5, 0x0028($sp)
	lw      $t4, 0x001C($sp)
	addiu   $t6, $t5, -0x0001
	slt     $at, $t4, $t6
	beqz    $at, 36$
	nop
	lw      $t7, 0x0028($sp)
	addiu   $t8, $t7, -0x0001
	sw      $t8, 0x001C($sp)
	lw      $a0, 0x0020($sp)
	jal     player_80250C7C
	lw      $a1, 0x001C($sp)
36$:
	jal     physics_802559B0
	lw      $a0, 0x0020($sp)
	lw      $t0, 0x001C($sp)
	li      $at, -0x0001
	bne     $t0, $at, 49$
	nop
	li.u    $a1, 0x04488081
	li.l    $a1, 0x04488081
	lw      $a0, 0x0020($sp)
	jal     player_80251310
	li      $a2, 0x0001
	b       71$
	nop
49$:
	lw      $t1, 0x001C($sp)
	lw      $t9, 0x0028($sp)
	bne     $t1, $t9, 60$
	nop
	li.u    $a1, 0x04438081
	li.l    $a1, 0x04438081
	lw      $a0, 0x0020($sp)
	jal     player_80251310
	li      $a2, 0x0001
	b       71$
	nop
60$:
	lw      $t2, 0x001C($sp)
	lw      $t3, 0x002C($sp)
	beq     $t2, $t3, 67$
	nop
	lw      $t5, 0x0030($sp)
	bne     $t2, $t5, 71$
	nop
67$:
	li.u    $a1, 0x04088081
	li.l    $a1, 0x04088081
	jal     player_802514AC
	lw      $a0, 0x0020($sp)
71$:
	jal     player_80250940
	lw      $a0, 0x0020($sp)
	beqz    $v0, 79$
	nop
	lw      $a0, 0x0020($sp)
	lw      $a1, 0x0034($sp)
	jal     pl_set_state
	move    $a2, $0
79$:
	b       81$
	nop
81$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

pl_demo_8025AFFC:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0020($sp)
	li.u    $t7, 0x0C400201
	li.l    $t7, 0x0C400201
	li      $t6, 0x0087
	sw      $t6, 0x0010($sp)
	sw      $t7, 0x0014($sp)
	lw      $a0, 0x0020($sp)
	li      $a1, 0x0039
	li      $a2, 0x0060
	jal     pl_demo_8025AEA8
	li      $a3, 0x0069
	b       17$
	move    $v0, $0
	b       17$
	nop
17$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

pl_demo_8025B050:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0020($sp)
	li.u    $t7, 0x0080023C
	li.l    $t7, 0x0080023C
	li      $t6, -0x0002
	sw      $t6, 0x0010($sp)
	sw      $t7, 0x0014($sp)
	lw      $a0, 0x0020($sp)
	li      $a1, 0x003E
	li      $a2, 0x007F
	jal     pl_demo_8025AEA8
	li      $a3, 0x0088
	b       17$
	move    $v0, $0
	b       17$
	nop
17$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

pl_demo_8025B0A4:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0020($sp)
	li.u    $t7, 0x0C400201
	li.l    $t7, 0x0C400201
	li      $t6, -0x0002
	sw      $t6, 0x0010($sp)
	sw      $t7, 0x0014($sp)
	lw      $a0, 0x0020($sp)
	li      $a1, 0x0055
	li      $a2, 0x0074
	jal     pl_demo_8025AEA8
	li      $a3, 0x0081
	b       17$
	move    $v0, $0
	b       17$
	nop
17$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

pl_demo_8025B0F8:
	sh      $0, 0x0018($a0)
	sh      $0, 0x001A($a0)
	lw      $t6, 0x001C($a0)
	addiu   $t7, $t6, 0x0001
	sw      $t7, 0x001C($a0)
	jr      $ra
	nop
	jr      $ra
	nop

pl_demo_8025B11C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lui     $at, %hi(hud+0x0A)
	sh      $0, %lo(hud+0x0A)($at)
	lw      $t7, 0x0018($sp)
	li      $t6, 0x0009
	lw      $t8, 0x0094($t7)
	sh      $t6, 0x001E($t8)
	lw      $t9, 0x0018($sp)
	li      $at, -0x0002
	lw      $t0, 0x0088($t9)
	lh      $t1, 0x0002($t0)
	and     $t2, $t1, $at
	sh      $t2, 0x0002($t0)
	jal     pl_demo_8025B0F8
	lw      $a0, 0x0018($sp)
	b       19$
	nop
19$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_demo_8025B178:
	addiu   $sp, $sp, -0x0040
	sw      $ra, 0x0034($sp)
	sw      $a0, 0x0040($sp)
	sw      $s0, 0x0030($sp)
	lw      $t6, 0x0040($sp)
	li      $at, 0x0009
	lw      $t7, 0x0094($t6)
	lh      $t8, 0x001E($t7)
	beq     $t8, $at, 40$
	nop
	lw      $t9, 0x0040($sp)
	lhu     $s0, 0x001A($t9)
	lhu     $t1, 0x001A($t9)
	xori    $t0, $s0, 0x0025
	sltiu   $t0, $t0, 0x0001
	move    $s0, $t0
	addiu   $t2, $t1, 0x0001
	beqz    $s0, 40$
	sh      $t2, 0x001A($t9)
	lui     $a0, %hi(object)
	la.u    $a3, o_13002A48
	li      $t3, -0x0530
	li      $t4, 0x003C
	li      $t5, 0x1238
	li      $t6, 0x00B4
	sw      $t6, 0x0020($sp)
	sw      $t5, 0x0018($sp)
	sw      $t4, 0x0014($sp)
	sw      $t3, 0x0010($sp)
	la.l    $a3, o_13002A48
	lw      $a0, %lo(object)($a0)
	move    $a1, $0
	li      $a2, 0x0016
	sw      $0, 0x001C($sp)
	jal     obj_make_abs
	sw      $0, 0x0024($sp)
	lui     $at, %hi(pl_demo_8033B2A0)
	sw      $v0, %lo(pl_demo_8033B2A0)($at)
	jal     pl_demo_8025B0F8
	lw      $a0, 0x0040($sp)
40$:
	b       42$
	nop
42$:
	lw      $ra, 0x0034($sp)
	lw      $s0, 0x0030($sp)
	addiu   $sp, $sp, 0x0040
	jr      $ra
	nop

pl_demo_8025B234:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(pl_demo_8033B2A0)
	lw      $t6, %lo(pl_demo_8033B2A0)($t6)
	li      $at, 0x43820000
	mtc1    $at, $f14
	li      $a2, 0x41200000
	jal     camera_80289B0C
	lwc1    $f12, 0x00A4($t6)
	lui     $t7, %hi(pl_demo_8033B2A0)
	lw      $t7, %lo(pl_demo_8033B2A0)($t7)
	swc1    $f0, 0x00A4($t7)
	lw      $t8, 0x0028($sp)
	lhu     $t9, 0x001A($t8)
	bnez    $t9, 24$
	nop
	lui     $a1, %hi(pl_demo_8033B2A0)
	lw      $a1, %lo(pl_demo_8033B2A0)($a1)
	li.u    $a0, 0x7017A081
	li.l    $a0, 0x7017A081
	jal     Na_SePlay
	addiu   $a1, $a1, 0x0054
24$:
	lw      $t0, 0x0028($sp)
	lhu     $s0, 0x001A($t0)
	lhu     $t2, 0x001A($t0)
	xori    $t1, $s0, 0x0026
	sltiu   $t1, $t1, 0x0001
	move    $s0, $t1
	addiu   $t3, $t2, 0x0001
	beqz    $s0, 39$
	sh      $t3, 0x001A($t0)
	li      $at, 0x42700000
	mtc1    $at, $f4
	lw      $t4, 0x0028($sp)
	swc1    $f4, 0x004C($t4)
	jal     pl_demo_8025B0F8
	lw      $a0, 0x0028($sp)
39$:
	b       41$
	nop
41$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_demo_8025B2EC:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	li      $at, 0x0019
	lhu     $t7, 0x001A($t6)
	bne     $t7, $at, 12$
	nop
	li      $t8, 0x003F
	lui     $at, %hi(hud+0x0A)
	sh      $t8, %lo(hud+0x0A)($at)
12$:
	lw      $t9, 0x0028($sp)
	lhu     $s0, 0x001A($t9)
	lhu     $t1, 0x001A($t9)
	slti    $t0, $s0, 0x0076
	xori    $t0, $t0, 0x0001
	move    $s0, $t0
	addiu   $t2, $t1, 0x0001
	beqz    $s0, 63$
	sh      $t2, 0x001A($t9)
	lw      $t3, 0x0028($sp)
	lw      $t4, 0x0088($t3)
	lh      $t5, 0x0002($t4)
	ori     $t6, $t5, 0x0001
	sh      $t6, 0x0002($t4)
	li.u    $a1, 0x24048081
	li.l    $a1, 0x24048081
	lw      $a0, 0x0028($sp)
	jal     player_80251120
	li      $a2, 0x00020000
	li.u    $a1, 0x0444A081
	li.l    $a1, 0x0444A081
	lw      $a0, 0x0028($sp)
	jal     player_80251120
	li      $a2, 0x00010000
	lw      $a0, 0x0028($sp)
	jal     pl_set_anime
	li      $a1, 0x004D
	lw      $a0, 0x0028($sp)
	jal     player_80251708
	li      $a1, 0x41200000
	lw      $a0, 0x0028($sp)
	jal     physics_80256B24
	move    $a1, $0
	li      $at, 0x0001
	bne     $v0, $at, 63$
	nop
	li      $a0, 0x0002
	jal     Na_PortUnlock
	li      $a1, 0x0330
	li.u    $a1, 0x04088081
	li.l    $a1, 0x04088081
	jal     player_802514AC
	lw      $a0, 0x0028($sp)
	lw      $t7, 0x0028($sp)
	li.u    $a0, 0x24118081
	li.l    $a0, 0x24118081
	lw      $a1, 0x0088($t7)
	jal     Na_SePlay
	addiu   $a1, $a1, 0x0054
	jal     pl_demo_8025B0F8
	lw      $a0, 0x0028($sp)
63$:
	b       65$
	nop
65$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_demo_8025B404:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	jal     pl_set_anime
	li      $a1, 0x004E
	jal     player_80250940
	lw      $a0, 0x0018($sp)
	beqz    $v0, 12$
	nop
	jal     pl_demo_8025B0F8
	lw      $a0, 0x0018($sp)
12$:
	jal     physics_802559B0
	lw      $a0, 0x0018($sp)
	b       16$
	nop
16$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_demo_8025B454:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	lhu     $s0, 0x001A($t6)
	lhu     $t8, 0x001A($t6)
	sltiu   $t7, $s0, 0x0001
	move    $s0, $t7
	addiu   $t9, $t8, 0x0001
	beqz    $s0, 21$
	sh      $t9, 0x001A($t6)
	lui     $a1, %hi(pl_demo_8033B2A0)
	lw      $a1, %lo(pl_demo_8033B2A0)($a1)
	li.u    $a0, 0x7016A081
	li.l    $a0, 0x7016A081
	jal     Na_SePlay
	addiu   $a1, $a1, 0x0054
	lw      $a0, 0x0028($sp)
	jal     pl_set_anime
	li      $a1, 0x00C2
21$:
	lui     $t0, %hi(pl_demo_8033B2A0)
	lw      $t0, %lo(pl_demo_8033B2A0)($t0)
	li      $at, 0x40A00000
	mtc1    $at, $f6
	lwc1    $f4, 0x00A4($t0)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x00A4($t0)
	lui     $t1, %hi(pl_demo_8033B2A0)
	lw      $t1, %lo(pl_demo_8033B2A0)($t1)
	li      $at, 0x42480000
	mtc1    $at, $f16
	lwc1    $f10, 0x00A4($t1)
	c.le.s  $f10, $f16
	nop
	bc1f    42$
	nop
	lui     $a0, %hi(pl_demo_8033B2A0)
	jal     objlib_802A0568
	lw      $a0, %lo(pl_demo_8033B2A0)($a0)
	jal     pl_demo_8025B0F8
	lw      $a0, 0x0028($sp)
42$:
	jal     physics_802559B0
	lw      $a0, 0x0028($sp)
	b       46$
	nop
46$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_demo_8025B520:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lui     $t6, %hi(camerap)
	lw      $t6, %lo(camerap)($t6)
	lbu     $t7, 0x0030($t6)
	bnez    $t7, 19$
	nop
	lui     $t8, %hi(camera_8033C848)
	lh      $t8, %lo(camera_8033C848)($t8)
	li      $at, -0x2001
	and     $t9, $t8, $at
	lui     $at, %hi(camera_8033C848)
	sh      $t9, %lo(camera_8033C848)($at)
	li.u    $a1, 0x0C400201
	li.l    $a1, 0x0C400201
	lw      $a0, 0x0018($sp)
	jal     pl_set_state
	move    $a2, $0
19$:
	jal     physics_802559B0
	lw      $a0, 0x0018($sp)
	b       23$
	nop
23$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_demo_8025B58C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	lw      $t7, 0x001C($t6)
	sltiu   $at, $t7, 0x0007
	beqz    $at, 42$
	nop
	sll     $t7, $t7, 2
	lui     $at, %hi(pl_demo_803366EC)
	addu    $at, $at, $t7
	lw      $t7, %lo(pl_demo_803366EC)($at)
	jr      $t7
	nop
.globl L8025B5C4
L8025B5C4:
	jal     pl_demo_8025B11C
	lw      $a0, 0x0018($sp)
	b       42$
	nop
.globl L8025B5D4
L8025B5D4:
	jal     pl_demo_8025B178
	lw      $a0, 0x0018($sp)
	b       42$
	nop
.globl L8025B5E4
L8025B5E4:
	jal     pl_demo_8025B234
	lw      $a0, 0x0018($sp)
	b       42$
	nop
.globl L8025B5F4
L8025B5F4:
	jal     pl_demo_8025B2EC
	lw      $a0, 0x0018($sp)
	b       42$
	nop
.globl L8025B604
L8025B604:
	jal     pl_demo_8025B404
	lw      $a0, 0x0018($sp)
	b       42$
	nop
.globl L8025B614
L8025B614:
	jal     pl_demo_8025B454
	lw      $a0, 0x0018($sp)
	b       42$
	nop
.globl L8025B624
L8025B624:
	jal     pl_demo_8025B520
	lw      $a0, 0x0018($sp)
	b       42$
	nop
42$:
	b       46$
	move    $v0, $0
	b       46$
	nop
46$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_demo_8025B654:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	lhu     $t7, 0x0018($t6)
	bnez    $t7, 48$
	nop
	lw      $t8, 0x0018($sp)
	lhu     $t9, 0x0002($t8)
	ori     $t0, $t9, 0x0080
	sh      $t0, 0x0002($t8)
	lw      $t1, 0x0018($sp)
	lw      $t2, 0x0004($t1)
	ori     $t3, $t2, 0x0018
	sw      $t3, 0x0004($t1)
	lw      $t5, 0x0018($sp)
	li      $t4, -0x8000
	sh      $t4, 0x002E($t5)
	mtc1    $0, $f4
	lw      $t6, 0x0018($sp)
	swc1    $f4, 0x003C($t6)
	mtc1    $0, $f6
	lw      $t7, 0x0018($sp)
	swc1    $f6, 0x0044($t7)
	lw      $a0, 0x0018($sp)
	jal     player_80251708
	li      $a1, 0x0000
	lw      $a0, 0x0018($sp)
	jal     pl_set_anime
	li      $a1, 0x0056
	lw      $a0, 0x0018($sp)
	jal     physics_80256B24
	li      $a1, 0x0001
	li      $at, 0x0001
	bne     $v0, $at, 46$
	nop
	jal     bgm_stage_play
	li      $a0, 0x0F1F
	li.u    $a1, 0x04088081
	li.l    $a1, 0x04088081
	jal     player_802514AC
	lw      $a0, 0x0018($sp)
	lw      $t9, 0x0018($sp)
	lhu     $t0, 0x0018($t9)
	addiu   $t8, $t0, 0x0001
	sh      $t8, 0x0018($t9)
46$:
	b       61$
	nop
48$:
	lw      $a0, 0x0018($sp)
	jal     pl_set_anime
	li      $a1, 0x0057
	jal     player_80250940
	lw      $a0, 0x0018($sp)
	beqz    $v0, 61$
	nop
	lw      $t3, 0x0018($sp)
	li      $t2, 0x000A
	lw      $t1, 0x0094($t3)
	sh      $t2, 0x001E($t1)
	jal     pl_demo_8025B0F8
	lw      $a0, 0x0018($sp)
61$:
	b       63$
	nop
63$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_demo_8025B760:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0030($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0030($sp)
	lw      $t7, 0x0088($t6)
	sw      $t7, 0x002C($sp)
	lw      $t8, 0x0030($sp)
	lhu     $t9, 0x0018($t8)
	bnez    $t9, 31$
	nop
	lw      $a0, 0x0030($sp)
	jal     pl_set_anime
	li      $a1, 0x0025
	mtc1    $0, $f4
	lw      $t0, 0x002C($sp)
	swc1    $f4, 0x0110($t0)
	jal     player_8025097C
	lw      $a0, 0x0030($sp)
	beqz    $v0, 29$
	nop
	li.u    $a1, 0x04088081
	li.l    $a1, 0x04088081
	jal     player_802514AC
	lw      $a0, 0x0030($sp)
	lw      $t1, 0x0030($sp)
	lhu     $t2, 0x0018($t1)
	addiu   $t3, $t2, 0x0001
	sh      $t3, 0x0018($t1)
29$:
	b       115$
	nop
31$:
	lw      $a0, 0x0030($sp)
	jal     pl_set_anime
	li      $a1, 0x0026
	sw      $v0, 0x0028($sp)
	lw      $t4, 0x0028($sp)
	li      $at, 0x0003
	beq     $t4, $at, 45$
	nop
	li      $at, 0x001C
	beq     $t4, $at, 45$
	nop
	li      $at, 0x003C
	bne     $t4, $at, 50$
	nop
45$:
	li.u    $a1, 0x04008081
	li.l    $a1, 0x04008081
	lw      $a0, 0x0030($sp)
	jal     player_80251310
	li      $a2, 0x0001
50$:
	lw      $t5, 0x0028($sp)
	slti    $at, $t5, 0x0003
	bnez    $at, 60$
	nop
	lw      $t6, 0x002C($sp)
	li      $at, 0x42000000
	mtc1    $at, $f8
	lwc1    $f6, 0x0110($t6)
	sub.s   $f10, $f6, $f8
	swc1    $f10, 0x0110($t6)
60$:
	lw      $s0, 0x0028($sp)
	li      $at, 0x0003
	beq     $s0, $at, 72$
	nop
	li      $at, 0x001C
	beq     $s0, $at, 89$
	nop
	li      $at, 0x003C
	beq     $s0, $at, 97$
	nop
	b       105$
	nop
72$:
	lui     $a0, %hi(_Na_work_bss+0x5F18)
	lw      $a0, %lo(_Na_work_bss+0x5F18)($a0)
	li      $at, 0x0003
	lw      $t9, 0x0030($sp)
	divu    $0, $a0, $at
	mfhi    $t7
	move    $a0, $t7
	lw      $a1, 0x0088($t9)
	sll     $t8, $a0, 16
	li.u    $at, 0x24008081
	li.l    $at, 0x24008081
	move    $a0, $t8
	addu    $a0, $a0, $at
	jal     Na_SePlay
	addiu   $a1, $a1, 0x0054
	b       105$
	nop
89$:
	lw      $t0, 0x0030($sp)
	li.u    $a0, 0x24038081
	li.l    $a0, 0x24038081
	lw      $a1, 0x0088($t0)
	jal     Na_SePlay
	addiu   $a1, $a1, 0x0054
	b       105$
	nop
97$:
	lw      $t2, 0x0030($sp)
	li.u    $a0, 0x24048081
	li.l    $a0, 0x24048081
	lw      $a1, 0x0088($t2)
	jal     Na_SePlay
	addiu   $a1, $a1, 0x0054
	b       105$
	nop
105$:
	lw      $t3, 0x0030($sp)
	lw      $t1, 0x0008($t3)
	ori     $t4, $t1, 0x0008
	sw      $t4, 0x0008($t3)
	jal     player_8025097C
	lw      $a0, 0x0030($sp)
	beqz    $v0, 115$
	nop
	jal     pl_demo_8025B0F8
	lw      $a0, 0x0030($sp)
115$:
	lw      $a0, 0x0030($sp)
	lw      $t5, 0x002C($sp)
	li.u    $a2, 0x43998000
	li.l    $a2, 0x43998000
	li      $a1, 0x0000
	addiu   $a0, $a0, 0x003C
	jal     vecf_set
	lw      $a3, 0x0110($t5)
	jal     player_80251020
	lw      $a0, 0x0030($sp)
	lw      $a0, 0x002C($sp)
	lw      $a1, 0x0030($sp)
	addiu   $a0, $a0, 0x0020
	jal     vecf_cpy
	addiu   $a1, $a1, 0x003C
	lw      $a0, 0x002C($sp)
	lw      $t6, 0x0030($sp)
	move    $a1, $0
	move    $a3, $0
	addiu   $a0, $a0, 0x001A
	jal     vecs_set
	lh      $a2, 0x002E($t6)
	b       141$
	move    $v0, $0
	b       141$
	nop
141$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

pl_demo_8025B9A8:
	addiu   $sp, $sp, -0x0048
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0048($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0048($sp)
	lw      $t7, 0x0088($t6)
	sw      $t7, 0x0038($sp)
	lw      $t8, 0x0048($sp)
	lhu     $s0, 0x0018($t8)
	beqz    $s0, 19$
	nop
	li      $at, 0x0001
	beq     $s0, $at, 29$
	nop
	li      $at, 0x0002
	beq     $s0, $at, 104$
	nop
	b       111$
	nop
19$:
	lw      $a0, 0x0048($sp)
	jal     pl_set_anime
	li      $a1, 0x002A
	la.u    $a0, pl_demo_8032DB5C
	jal     bspline_init
	la.l    $a0, pl_demo_8032DB5C
	lw      $t9, 0x0048($sp)
	lhu     $t0, 0x0018($t9)
	addiu   $t1, $t0, 0x0001
	sh      $t1, 0x0018($t9)
29$:
	jal     bspline_proc
	addiu   $a0, $sp, 0x003C
	beqz    $v0, 43$
	nop
	li.u    $a1, 0x0100088C
	li.l    $a1, 0x0100088C
	lw      $a0, 0x0048($sp)
	jal     pl_set_state
	move    $a2, $0
	lw      $t2, 0x0048($sp)
	lhu     $t3, 0x0018($t2)
	addiu   $t4, $t3, 0x0001
	b       102$
	sh      $t4, 0x0018($t2)
43$:
	lw      $t6, 0x0048($sp)
	addiu   $t5, $sp, 0x003C
	lwc1    $f4, 0x0000($t5)
	lwc1    $f6, 0x003C($t6)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x0034($sp)
	lw      $t8, 0x0048($sp)
	addiu   $t7, $sp, 0x003C
	lwc1    $f10, 0x0004($t7)
	lwc1    $f16, 0x0040($t8)
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x0030($sp)
	lw      $t1, 0x0048($sp)
	addiu   $t0, $sp, 0x003C
	lwc1    $f4, 0x0008($t0)
	lwc1    $f6, 0x0044($t1)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x002C($sp)
	lwc1    $f10, 0x0034($sp)
	lwc1    $f18, 0x002C($sp)
	mul.s   $f16, $f10, $f10
	nop
	mul.s   $f4, $f18, $f18
	jal     sqrtf
	add.s   $f12, $f16, $f4
	swc1    $f0, 0x0028($sp)
	lwc1    $f12, 0x002C($sp)
	jal     ATAN2
	lwc1    $f14, 0x0034($sp)
	sh      $v0, 0x0026($sp)
	lw      $a0, 0x0048($sp)
	addiu   $a1, $sp, 0x003C
	jal     vecf_cpy
	addiu   $a0, $a0, 0x003C
	lwc1    $f12, 0x0028($sp)
	jal     ATAN2
	lwc1    $f14, 0x0030($sp)
	lw      $t3, 0x0048($sp)
	subu    $t9, $0, $v0
	lw      $t4, 0x0088($t3)
	sh      $t9, 0x001A($t4)
	lw      $t5, 0x0048($sp)
	lh      $t2, 0x0026($sp)
	lw      $t6, 0x0088($t5)
	sh      $t2, 0x001C($t6)
	lw      $t7, 0x0048($sp)
	lh      $t0, 0x0026($sp)
	lh      $t8, 0x002E($t7)
	lw      $t5, 0x0088($t7)
	subu    $t1, $t8, $t0
	sll     $t3, $t1, 16
	sra     $t9, $t3, 16
	sll     $t4, $t9, 2
	addu    $t4, $t4, $t9
	sll     $t4, $t4, 2
	sh      $t4, 0x001E($t5)
	lh      $t2, 0x0026($sp)
	lw      $t6, 0x0048($sp)
	sh      $t2, 0x002E($t6)
102$:
	b       111$
	nop
104$:
	li.u    $a1, 0x0100088C
	li.l    $a1, 0x0100088C
	lw      $a0, 0x0048($sp)
	jal     pl_set_state
	move    $a2, $0
	b       111$
	nop
111$:
	lw      $t0, 0x0048($sp)
	li      $t8, 0x0005
	lw      $t1, 0x0098($t0)
	sb      $t8, 0x0006($t1)
	lw      $t3, 0x0048($sp)
	lw      $a0, 0x0088($t3)
	addiu   $a1, $t3, 0x003C
	jal     vecf_cpy
	addiu   $a0, $a0, 0x0020
	lw      $t9, 0x0048($sp)
	lw      $t7, 0x0008($t9)
	ori     $t4, $t7, 0x0008
	sw      $t4, 0x0008($t9)
	lw      $t5, 0x0048($sp)
	lhu     $s0, 0x001A($t5)
	lhu     $t6, 0x001A($t5)
	xori    $t2, $s0, 0x01F4
	sltiu   $t2, $t2, 0x0001
	move    $s0, $t2
	addiu   $t0, $t6, 0x0001
	beqz    $s0, 136$
	sh      $t0, 0x001A($t5)
	lw      $a0, 0x0048($sp)
	jal     pl_fade
	li      $a1, 0x0017
136$:
	b       140$
	move    $v0, $0
	b       140$
	nop
140$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0048
	jr      $ra
	nop

pl_demo_8025BBEC:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	lw      $s0, 0x001C($t6)
	beqz    $s0, 16$
	nop
	li      $at, 0x0001
	beq     $s0, $at, 20$
	nop
	li      $at, 0x0002
	beq     $s0, $at, 24$
	nop
	b       28$
	nop
16$:
	jal     pl_demo_8025B654
	lw      $a0, 0x0028($sp)
	b       28$
	nop
20$:
	jal     pl_demo_8025B760
	lw      $a0, 0x0028($sp)
	b       28$
	nop
24$:
	jal     pl_demo_8025B9A8
	lw      $a0, 0x0028($sp)
	b       28$
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

pl_demo_8025BC80:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x002C($sp)
	sw      $a0, 0x0038($sp)
	sw      $a1, 0x003C($sp)
	sw      $a2, 0x0040($sp)
	sw      $a3, 0x0044($sp)
	lui     $t6, %hi(pl_demo_8032DC34+2)
	lhu     $t6, %lo(pl_demo_8032DC34+2)($t6)
	lui     $at, %hi(math_cos)
	lwc1    $f4, 0x0044($sp)
	sra     $t7, $t6, 4
	sll     $t8, $t7, 2
	addu    $at, $at, $t8
	lwc1    $f6, %lo(math_cos)($at)
	lui     $t9, %hi(pl_demo_8032DC38+2)
	lhu     $t9, %lo(pl_demo_8032DC38+2)($t9)
	mul.s   $f8, $f4, $f6
	lui     $at, %hi(math_sin)
	sra     $t0, $t9, 4
	sll     $t1, $t0, 2
	addu    $at, $at, $t1
	lwc1    $f10, %lo(math_sin)($at)
	mul.s   $f16, $f10, $f8
	trunc.w.s $f18, $f16
	mfc1    $t3, $f18
	nop
	sh      $t3, 0x0036($sp)
	lui     $t4, %hi(pl_demo_8032DC34+2)
	lhu     $t4, %lo(pl_demo_8032DC34+2)($t4)
	lui     $at, %hi(math_sin)
	lwc1    $f6, 0x0044($sp)
	sra     $t5, $t4, 4
	sll     $t6, $t5, 2
	addu    $at, $at, $t6
	lwc1    $f4, %lo(math_sin)($at)
	mul.s   $f10, $f4, $f6
	trunc.w.s $f8, $f10
	mfc1    $t8, $f8
	nop
	sh      $t8, 0x0034($sp)
	lui     $t9, %hi(pl_demo_8032DC34+2)
	lhu     $t9, %lo(pl_demo_8032DC34+2)($t9)
	la.u    $t2, math_cos
	la.l    $t2, math_cos
	sra     $t0, $t9, 4
	sll     $t1, $t0, 2
	addu    $t3, $t1, $t2
	lwc1    $f18, 0x0000($t3)
	lwc1    $f16, 0x0044($sp)
	lui     $t4, %hi(pl_demo_8032DC38+2)
	lhu     $t4, %lo(pl_demo_8032DC38+2)($t4)
	mul.s   $f4, $f16, $f18
	sra     $t5, $t4, 4
	sll     $t6, $t5, 2
	addu    $t7, $t6, $t2
	lwc1    $f6, 0x0000($t7)
	mul.s   $f10, $f6, $f4
	trunc.w.s $f8, $f10
	mfc1    $t9, $f8
	nop
	sh      $t9, 0x0032($sp)
	lh      $t0, 0x003A($sp)
	lh      $t1, 0x0036($sp)
	lh      $t4, 0x003E($sp)
	lh      $t5, 0x0034($sp)
	lh      $t2, 0x0042($sp)
	lh      $t7, 0x0032($sp)
	lui     $a0, %hi(object)
	la.u    $a3, o_13002AF0
	addu    $t3, $t0, $t1
	addu    $t6, $t4, $t5
	addu    $t8, $t2, $t7
	sw      $t8, 0x0018($sp)
	sw      $t6, 0x0014($sp)
	sw      $t3, 0x0010($sp)
	la.l    $a3, o_13002AF0
	lw      $a0, %lo(object)($a0)
	move    $a1, $0
	move    $a2, $0
	sw      $0, 0x001C($sp)
	sw      $0, 0x0020($sp)
	jal     obj_make_abs
	sw      $0, 0x0024($sp)
	lh      $t9, 0x0036($sp)
	li      $at, 0x0003
	sll     $t0, $t9, 2
	div     $0, $t0, $at
	mflo    $t1
	sh      $t1, 0x0036($sp)
	nop
	lh      $t3, 0x0034($sp)
	li      $at, 0x0003
	sll     $t4, $t3, 2
	div     $0, $t4, $at
	mflo    $t5
	sh      $t5, 0x0036($sp)
	nop
	lh      $t6, 0x0032($sp)
	li      $at, 0x0003
	sll     $t2, $t6, 2
	div     $0, $t2, $at
	mflo    $t7
	sh      $t7, 0x0036($sp)
	nop
	lh      $t8, 0x003A($sp)
	lh      $t9, 0x0036($sp)
	lh      $t1, 0x003E($sp)
	lh      $t3, 0x0034($sp)
	lh      $t5, 0x0042($sp)
	lh      $t6, 0x0032($sp)
	lui     $a0, %hi(object)
	la.u    $a3, o_13002AF0
	subu    $t0, $t8, $t9
	subu    $t4, $t1, $t3
	subu    $t2, $t5, $t6
	sw      $t2, 0x0018($sp)
	sw      $t4, 0x0014($sp)
	sw      $t0, 0x0010($sp)
	la.l    $a3, o_13002AF0
	lw      $a0, %lo(object)($a0)
	move    $a1, $0
	move    $a2, $0
	sw      $0, 0x001C($sp)
	sw      $0, 0x0020($sp)
	jal     obj_make_abs
	sw      $0, 0x0024($sp)
	lui     $t7, %hi(pl_demo_8032DC34)
	lw      $t7, %lo(pl_demo_8032DC34)($t7)
	lui     $at, %hi(pl_demo_8032DC34)
	addiu   $t8, $t7, 0x3800
	sw      $t8, %lo(pl_demo_8032DC34)($at)
	lui     $t9, %hi(pl_demo_8032DC38)
	lw      $t9, %lo(pl_demo_8032DC38)($t9)
	lui     $at, %hi(pl_demo_8032DC38)
	addiu   $t0, $t9, 0x6000
	sw      $t0, %lo(pl_demo_8032DC38)($at)
	b       138$
	nop
138$:
	lw      $ra, 0x002C($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

pl_demo_8025BEB8:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0030($sp)
	lw      $t6, 0x0030($sp)
	addiu   $a2, $sp, 0x0024
	move    $a0, $t6
	jal     player_80250E54
	lh      $a1, 0x001C($t6)
	addiu   $t7, $sp, 0x0024
	lh      $t8, 0x0000($t7)
	lw      $t9, 0x0030($sp)
	mtc1    $t8, $f4
	lwc1    $f8, 0x0020($t9)
	cvt.s.w $f6, $f4
	add.s   $f10, $f6, $f8
	swc1    $f10, 0x0020($sp)
	lw      $t0, 0x0030($sp)
	li      $at, 0x41200000
	mtc1    $at, $f18
	lwc1    $f16, 0x0024($t0)
	add.s   $f4, $f16, $f18
	swc1    $f4, 0x001C($sp)
	addiu   $t1, $sp, 0x0024
	lh      $t2, 0x0004($t1)
	lw      $t3, 0x0030($sp)
	mtc1    $t2, $f6
	lwc1    $f10, 0x0028($t3)
	cvt.s.w $f8, $f6
	add.s   $f16, $f8, $f10
	swc1    $f16, 0x0018($sp)
	lwc1    $f12, 0x0020($sp)
	lwc1    $f14, 0x001C($sp)
	lw      $a2, 0x0018($sp)
	jal     bg_check_ground
	addiu   $a3, $sp, 0x002C
	b       39$
	nop
	b       39$
	nop
39$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

pl_demo_8025BF64:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	li      $at, 0x0001
	lhu     $t7, 0x001A($t6)
	bne     $t7, $at, 12$
	nop
	lw      $t9, 0x0018($sp)
	li      $t8, 0x000B
	lw      $t0, 0x0094($t9)
	sh      $t8, 0x001E($t0)
12$:
	lw      $t1, 0x0018($sp)
	lhu     $t2, 0x0002($t1)
	ori     $t3, $t2, 0x0080
	sh      $t3, 0x0002($t1)
	lw      $t4, 0x0018($sp)
	lw      $t5, 0x0004($t4)
	ori     $t6, $t5, 0x0018
	sw      $t6, 0x0004($t4)
	lw      $a0, 0x0018($sp)
	jal     pl_set_anime
	li      $a1, 0x0056
	lw      $a0, 0x0018($sp)
	jal     player_80251708
	li      $a1, 0x0000
	lw      $a0, 0x0018($sp)
	jal     physics_80256B24
	move    $a1, $0
	li      $at, 0x0001
	bne     $v0, $at, 38$
	nop
	li.u    $a1, 0x04088081
	li.l    $a1, 0x04088081
	jal     player_802514AC
	lw      $a0, 0x0018($sp)
	jal     pl_demo_8025B0F8
	lw      $a0, 0x0018($sp)
38$:
	b       40$
	nop
40$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_demo_8025C014:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x002C($sp)
	sw      $a0, 0x0030($sp)
	lw      $a0, 0x0030($sp)
	jal     pl_set_anime
	li      $a1, 0x0057
	jal     physics_802559B0
	lw      $a0, 0x0030($sp)
	jal     player_80250940
	lw      $a0, 0x0030($sp)
	beqz    $v0, 38$
	nop
	lw      $t7, 0x0030($sp)
	li      $t6, 0x003C
	sh      $t6, 0x00B6($t7)
	lui     $a0, %hi(object)
	la.u    $a3, o_13002A48
	li      $t8, 0x09E0
	li      $t9, -0x0708
	sw      $t9, 0x0018($sp)
	sw      $t8, 0x0014($sp)
	la.l    $a3, o_13002A48
	lw      $a0, %lo(object)($a0)
	move    $a1, $0
	li      $a2, 0x007A
	sw      $0, 0x0010($sp)
	sw      $0, 0x001C($sp)
	sw      $0, 0x0020($sp)
	jal     obj_make_abs
	sw      $0, 0x0024($sp)
	lui     $at, %hi(pl_demo_8033B2B0)
	sw      $v0, %lo(pl_demo_8033B2B0)($at)
	lui     $a0, %hi(pl_demo_8033B2B0)
	lw      $a0, %lo(pl_demo_8033B2B0)($a0)
	jal     obj_set_scale
	li      $a1, 0x40400000
	jal     pl_demo_8025B0F8
	lw      $a0, 0x0030($sp)
38$:
	b       40$
	nop
40$:
	lw      $ra, 0x002C($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

pl_demo_8025C0C4:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	lhu     $t7, 0x0018($t6)
	bnez    $t7, 10$
	nop
	b       11$
	li      $s0, 0x0020
10$:
	li      $s0, 0x0021
11$:
	lw      $a0, 0x0028($sp)
	jal     pl_set_anime
	move    $a1, $s0
	lw      $t8, 0x0028($sp)
	lhu     $t9, 0x0018($t8)
	bnez    $t9, 26$
	nop
	jal     player_8025097C
	move    $a0, $t8
	beqz    $v0, 26$
	nop
	lw      $t0, 0x0028($sp)
	lhu     $t1, 0x0018($t0)
	addiu   $t2, $t1, 0x0001
	sh      $t2, 0x0018($t0)
26$:
	lw      $t3, 0x0028($sp)
	li      $at, 0x005A
	lhu     $t4, 0x001A($t3)
	bne     $t4, $at, 33$
	nop
	jal     bgm_stage_play
	li      $a0, 0x0020
33$:
	lw      $t5, 0x0028($sp)
	li      $at, 0x00FF
	lhu     $t6, 0x001A($t5)
	bne     $t6, $at, 40$
	nop
	jal     pl_demo_8025B0F8
	lw      $a0, 0x0028($sp)
40$:
	lui     $t7, %hi(pl_demo_8033B2B0)
	lw      $t7, %lo(pl_demo_8033B2B0)($t7)
	lw      $t9, 0x00D4($t7)
	addiu   $t8, $t9, 0x0400
	sw      $t8, 0x00D4($t7)
	move    $a0, $0
	li      $a1, 0x09E0
	li      $a2, -0x0708
	jal     pl_demo_8025BC80
	li      $a3, 0x437A0000
	lui     $a1, %hi(pl_demo_8033B2B0)
	lw      $a1, %lo(pl_demo_8033B2B0)($a1)
	li.u    $a0, 0x600B4001
	li.l    $a0, 0x600B4001
	jal     Na_SePlay
	addiu   $a1, $a1, 0x0054
	b       58$
	nop
58$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_demo_8025C1C0:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x002C($sp)
	sw      $a0, 0x0030($sp)
	lw      $t6, 0x0030($sp)
	li      $at, 0x0001
	lhu     $t7, 0x001A($t6)
	bne     $t7, $at, 15$
	nop
	li      $t8, 0x00FF
	sw      $t8, 0x0010($sp)
	li      $a0, 0x0001
	li      $a1, 0x000E
	li      $a2, 0x00FF
	jal     scene_wipe
	li      $a3, 0x00FF
15$:
	lw      $t9, 0x0030($sp)
	li      $at, 0x0002
	lhu     $t0, 0x001A($t9)
	bne     $t0, $at, 25$
	nop
	li.u    $a0, 0x701EFF81
	la.u    $a1, Na_0
	la.l    $a1, Na_0
	jal     Na_SePlay
	li.l    $a0, 0x701EFF81
25$:
	lw      $t1, 0x0030($sp)
	li      $at, 0x002C
	lhu     $t2, 0x001A($t1)
	bne     $t2, $at, 37$
	nop
	li      $t3, 0x00FF
	sw      $t3, 0x0010($sp)
	move    $a0, $0
	li      $a1, 0x00C0
	li      $a2, 0x00FF
	jal     scene_wipe
	li      $a3, 0x00FF
37$:
	lw      $t4, 0x0030($sp)
	li      $at, 0x0028
	lhu     $t5, 0x001A($t4)
	bne     $t5, $at, 128$
	nop
	lui     $a0, %hi(pl_demo_8033B2B0)
	jal     objlib_802A0568
	lw      $a0, %lo(pl_demo_8033B2B0)($a0)
	lui     $a0, %hi(object)
	la.u    $a3, o_13000EAC
	li      $t6, 0x097C
	li      $t7, -0x0514
	sw      $t7, 0x0018($sp)
	sw      $t6, 0x0014($sp)
	la.l    $a3, o_13000EAC
	lw      $a0, %lo(object)($a0)
	move    $a1, $0
	li      $a2, 0x00DE
	sw      $0, 0x0010($sp)
	sw      $0, 0x001C($sp)
	sw      $0, 0x0020($sp)
	jal     obj_make_abs
	sw      $0, 0x0024($sp)
	lui     $at, %hi(pl_demo_8033B2A4)
	sw      $v0, %lo(pl_demo_8033B2A4)($at)
	lui     $t8, %hi(pl_demo_8033B2A4)
	lw      $t8, %lo(pl_demo_8033B2A4)($t8)
	lui     $at, %hi(camera_8032DF24)
	sw      $t8, %lo(camera_8032DF24)($at)
	lui     $a0, %hi(object)
	la.u    $a3, o_13000E88
	li      $t9, 0x00C8
	li      $t0, 0x038A
	li      $t1, -0x050A
	sw      $t1, 0x0018($sp)
	sw      $t0, 0x0014($sp)
	sw      $t9, 0x0010($sp)
	la.l    $a3, o_13000E88
	lw      $a0, %lo(object)($a0)
	move    $a1, $0
	li      $a2, 0x00DD
	sw      $0, 0x001C($sp)
	sw      $0, 0x0020($sp)
	jal     obj_make_abs
	sw      $0, 0x0024($sp)
	lui     $at, %hi(pl_demo_8033B2A8)
	sw      $v0, %lo(pl_demo_8033B2A8)($at)
	lui     $a0, %hi(object)
	la.u    $a3, o_13000E88
	li      $t2, -0x00C8
	li      $t3, 0x038A
	li      $t4, -0x050A
	sw      $t4, 0x0018($sp)
	sw      $t3, 0x0014($sp)
	sw      $t2, 0x0010($sp)
	la.l    $a3, o_13000E88
	lw      $a0, %lo(object)($a0)
	move    $a1, $0
	li      $a2, 0x00DD
	sw      $0, 0x001C($sp)
	sw      $0, 0x0020($sp)
	jal     obj_make_abs
	sw      $0, 0x0024($sp)
	lui     $at, %hi(pl_demo_8033B2AC)
	sw      $v0, %lo(pl_demo_8033B2AC)($at)
	lui     $t6, %hi(pl_demo_8033B2A4)
	lw      $t6, %lo(pl_demo_8033B2A4)($t6)
	li      $t5, 0x007F
	sw      $t5, 0x017C($t6)
	lui     $t8, %hi(pl_demo_8033B2A8)
	lw      $t8, %lo(pl_demo_8033B2A8)($t8)
	li      $t7, 0x00FF
	sw      $t7, 0x017C($t8)
	lui     $t0, %hi(pl_demo_8033B2AC)
	lw      $t0, %lo(pl_demo_8033B2AC)($t0)
	li      $t9, 0x00FF
	sw      $t9, 0x017C($t0)
	li      $t1, 0x0004
	lui     $at, %hi(pl_demo_8032DB44)
	sb      $t1, %lo(pl_demo_8032DB44)($at)
	li      $t2, 0x0004
	lui     $at, %hi(pl_demo_8033B2B8)
	sh      $t2, %lo(pl_demo_8033B2B8)($at)
	la.u    $t4, pl_demo_8033B2BC
	la.l    $t4, pl_demo_8033B2BC
	li      $t3, 0x0004
	sh      $t3, 0x0000($t4)
	la.u    $t6, pl_demo_8033B2BC
	la.l    $t6, pl_demo_8033B2BC
	li      $t5, 0x0005
	sh      $t5, 0x0002($t6)
128$:
	lw      $t7, 0x0030($sp)
	lhu     $t8, 0x001A($t7)
	slti    $at, $t8, 0x0114
	bnez    $at, 148$
	nop
	lui     $t9, %hi(pl_demo_8033B2A4)
	lw      $t9, %lo(pl_demo_8033B2A4)($t9)
	li      $at, 0x437F0000
	mtc1    $at, $f14
	lw      $t0, 0x017C($t9)
	li      $a2, 0x40000000
	mtc1    $t0, $f4
	jal     camera_80289B0C
	cvt.s.w $f12, $f4
	trunc.w.s $f6, $f0
	lui     $t3, %hi(pl_demo_8033B2A4)
	lw      $t3, %lo(pl_demo_8033B2A4)($t3)
	mfc1    $t2, $f6
	nop
	sw      $t2, 0x017C($t3)
148$:
	lw      $t4, 0x0030($sp)
	lhu     $t5, 0x001A($t4)
	slti    $at, $t5, 0x0028
	bnez    $at, 158$
	nop
	move    $a0, $0
	li      $a1, 0x0A44
	li      $a2, -0x0514
	jal     pl_demo_8025BC80
	li      $a3, 0x43160000
158$:
	lw      $t6, 0x0030($sp)
	li      $at, 0x0163
	lhu     $t7, 0x001A($t6)
	bne     $t7, $at, 165$
	nop
	jal     pl_demo_8025B0F8
	lw      $a0, 0x0030($sp)
165$:
	lw      $t8, 0x0030($sp)
	lhu     $t9, 0x001A($t8)
	slti    $at, $t9, 0x0028
	bnez    $at, 176$
	nop
	lui     $a1, %hi(pl_demo_8033B2A4)
	lw      $a1, %lo(pl_demo_8033B2A4)($a1)
	li.u    $a0, 0x600B4001
	li.l    $a0, 0x600B4001
	jal     Na_SePlay
	addiu   $a1, $a1, 0x0054
176$:
	b       178$
	nop
178$:
	lw      $ra, 0x002C($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

pl_demo_8025C498:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lui     $t6, %hi(pl_demo_8033B2A4)
	lw      $t6, %lo(pl_demo_8033B2A4)($t6)
	move    $a0, $0
	li      $a2, -0x0514
	lwc1    $f4, 0x00A4($t6)
	li      $a3, 0x43160000
	trunc.w.s $f6, $f4
	mfc1    $a1, $f6
	jal     pl_demo_8025BC80
	nop
	lui     $t8, %hi(pl_demo_8033B2A4)
	lw      $t8, %lo(pl_demo_8033B2A4)($t8)
	lui     $at, %hi(pl_demo_80336708)
	lwc1    $f10, %lo(pl_demo_80336708)($at)
	lwc1    $f8, 0x00A4($t8)
	c.le.s  $f10, $f8
	nop
	bc1f    33$
	nop
	lw      $t9, 0x0018($sp)
	lhu     $t0, 0x0018($t9)
	slti    $at, $t0, 0x003C
	beqz    $at, 31$
	nop
	lw      $t1, 0x0018($sp)
	lhu     $t2, 0x0018($t1)
	addiu   $t3, $t2, 0x0005
	sh      $t3, 0x0018($t1)
31$:
	b       45$
	nop
33$:
	lw      $t4, 0x0018($sp)
	lhu     $t5, 0x0018($t4)
	slti    $at, $t5, 0x001B
	bnez    $at, 42$
	nop
	lw      $t6, 0x0018($sp)
	lhu     $t7, 0x0018($t6)
	addiu   $t8, $t7, -0x0002
	sh      $t8, 0x0018($t6)
42$:
	lw      $a0, 0x0018($sp)
	jal     pl_set_anime
	li      $a1, 0x001F
45$:
	lw      $t0, 0x0018($sp)
	li      $at, 0x000A
	lui     $t9, %hi(pl_demo_8033B2A4)
	lhu     $t2, 0x0018($t0)
	lw      $t9, %lo(pl_demo_8033B2A4)($t9)
	lui     $t1, %hi(pl_demo_8033B2A4)
	div     $0, $t2, $at
	mflo    $t3
	mtc1    $t3, $f18
	lwc1    $f16, 0x00A4($t9)
	lui     $at, %hi(pl_demo_8033670C)
	cvt.s.w $f4, $f18
	sub.s   $f6, $f16, $f4
	swc1    $f6, 0x00A4($t9)
	lw      $t1, %lo(pl_demo_8033B2A4)($t1)
	lwc1    $f10, %lo(pl_demo_8033670C)($at)
	lwc1    $f8, 0x00A4($t1)
	c.le.s  $f8, $f10
	nop
	bc1f    71$
	nop
	lui     $at, %hi(pl_demo_80336710)
	lui     $t4, %hi(pl_demo_8033B2A4)
	lw      $t4, %lo(pl_demo_8033B2A4)($t4)
	lwc1    $f18, %lo(pl_demo_80336710)($at)
	swc1    $f18, 0x00A4($t4)
71$:
	lui     $a1, %hi(pl_demo_8033B2A4)
	lw      $a1, %lo(pl_demo_8033B2A4)($a1)
	li.u    $a0, 0x600B4001
	li.l    $a0, 0x600B4001
	jal     Na_SePlay
	addiu   $a1, $a1, 0x0054
	lw      $t5, 0x0018($sp)
	lhu     $t7, 0x001A($t5)
	slti    $at, $t7, 0x0248
	bnez    $at, 84$
	nop
	jal     pl_demo_8025B0F8
	lw      $a0, 0x0018($sp)
84$:
	b       86$
	nop
86$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_demo_8025C600:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lw      $t6, 0x0020($sp)
	li      $at, 0x0016
	lhu     $t7, 0x001A($t6)
	bne     $t7, $at, 11$
	nop
	li      $t8, 0x0005
	lui     $at, %hi(pl_demo_8033B2B8)
	sh      $t8, %lo(pl_demo_8033B2B8)($at)
11$:
	lw      $t9, 0x0020($sp)
	li      $at, 0x41A00000
	mtc1    $at, $f6
	lwc1    $f4, 0x0044($t9)
	lui     $at, %hi(pl_demo_80336714)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x0044($t9)
	lw      $t0, 0x0020($sp)
	lwc1    $f16, %lo(pl_demo_80336714)($at)
	lwc1    $f10, 0x0044($t0)
	c.le.s  $f10, $f16
	nop
	bc1f    31$
	nop
	lui     $at, %hi(pl_demo_80336718)
	lwc1    $f18, %lo(pl_demo_80336718)($at)
	lw      $t1, 0x0020($sp)
	swc1    $f18, 0x0044($t1)
	jal     pl_demo_8025B0F8
	lw      $a0, 0x0020($sp)
31$:
	lw      $t2, 0x0020($sp)
	addiu   $a3, $sp, 0x001C
	lwc1    $f12, 0x003C($t2)
	lwc1    $f14, 0x0040($t2)
	jal     bg_check_ground
	lw      $a2, 0x0044($t2)
	lw      $t3, 0x0020($sp)
	swc1    $f0, 0x0040($t3)
	lw      $a0, 0x0020($sp)
	li      $a1, 0x0072
	jal     player_80250B04
	li      $a2, 0x00080000
	lw      $a0, 0x0020($sp)
	li      $a1, 0x0009
	jal     pl_move_80263EE4
	li      $a2, 0x002D
	lw      $t4, 0x0020($sp)
	lw      $a0, 0x0088($t4)
	addiu   $a1, $t4, 0x003C
	jal     vecf_cpy
	addiu   $a0, $a0, 0x0020
	lw      $t5, 0x0020($sp)
	lw      $t6, 0x0008($t5)
	ori     $t7, $t6, 0x0001
	sw      $t7, 0x0008($t5)
	b       58$
	nop
58$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

pl_demo_8025C6F8:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	lhu     $t7, 0x0018($t6)
	bnez    $t7, 10$
	nop
	b       11$
	li      $s0, 0x0022
10$:
	li      $s0, 0x001E
11$:
	lw      $a0, 0x0028($sp)
	jal     pl_set_anime
	move    $a1, $s0
	sw      $v0, 0x0024($sp)
	lw      $t8, 0x0028($sp)
	lhu     $t9, 0x0018($t8)
	bnez    $t9, 33$
	nop
	lw      $t0, 0x0024($sp)
	li      $at, 0x0008
	bne     $t0, $at, 25$
	nop
	jal     pl_demo_802574E8
	lw      $a0, 0x0028($sp)
25$:
	jal     player_80250940
	lw      $a0, 0x0028($sp)
	beqz    $v0, 33$
	nop
	lw      $t1, 0x0028($sp)
	lhu     $t2, 0x0018($t1)
	addiu   $t3, $t2, 0x0001
	sh      $t3, 0x0018($t1)
33$:
	lw      $t4, 0x0028($sp)
	li      $at, 0x0050
	lhu     $s0, 0x001A($t4)
	beq     $s0, $at, 61$
	nop
	li      $at, 0x0051
	beq     $s0, $at, 66$
	nop
	li      $at, 0x0091
	beq     $s0, $at, 71$
	nop
	li      $at, 0x00E4
	beq     $s0, $at, 76$
	nop
	li      $at, 0x00E6
	beq     $s0, $at, 84$
	nop
	li      $at, 0x0113
	beq     $s0, $at, 101$
	nop
	li      $at, 0x0122
	beq     $s0, $at, 107$
	nop
	li      $at, 0x01E0
	beq     $s0, $at, 120$
	nop
	b       124$
	nop
61$:
	li      $t5, 0x0006
	lui     $at, %hi(pl_demo_8033B2B8)
	sh      $t5, %lo(pl_demo_8033B2B8)($at)
	b       124$
	nop
66$:
	li      $t6, 0x0003
	lui     $at, %hi(pl_demo_8032DB44)
	sb      $t6, %lo(pl_demo_8032DB44)($at)
	b       124$
	nop
71$:
	li      $t7, 0x0002
	lui     $at, %hi(pl_demo_8032DB44)
	sb      $t7, %lo(pl_demo_8032DB44)($at)
	b       124$
	nop
76$:
	li      $t8, 0x0001
	lui     $at, %hi(pl_demo_8032DB44)
	sb      $t8, %lo(pl_demo_8032DB44)($at)
	li      $t9, 0x0001
	lui     $at, %hi(pl_demo_8032DB48)
	sb      $t9, %lo(pl_demo_8032DB48)($at)
	b       124$
	nop
84$:
	li      $a0, 0x00A0
	li      $a1, 0x00E3
	move    $a2, $0
	jal     caption_open
	li      $a3, 0x001E
	move    $a0, $0
	li      $a1, 0x003C
	jal     Na_SeqMute
	li      $a2, 0x0028
	lui     $a1, %hi(pl_demo_8033B2A4)
	lw      $a1, %lo(pl_demo_8033B2A4)($a1)
	li.u    $a0, 0x2438FF81
	li.l    $a0, 0x2438FF81
	jal     Na_SePlay
	addiu   $a1, $a1, 0x0054
	b       124$
	nop
101$:
	lui     $at, %hi(pl_demo_8032DB44)
	sb      $0, %lo(pl_demo_8032DB44)($at)
	lui     $at, %hi(pl_demo_8032DB48)
	sb      $0, %lo(pl_demo_8032DB48)($at)
	b       124$
	nop
107$:
	li      $a0, 0x00A0
	li      $a1, 0x00E3
	li      $a2, 0x0001
	jal     caption_open
	li      $a3, 0x003C
	lui     $a1, %hi(pl_demo_8033B2A4)
	lw      $a1, %lo(pl_demo_8033B2A4)($a1)
	li.u    $a0, 0x2439FF81
	li.l    $a0, 0x2439FF81
	jal     Na_SePlay
	addiu   $a1, $a1, 0x0054
	b       124$
	nop
120$:
	jal     pl_demo_8025B0F8
	lw      $a0, 0x0028($sp)
	b       124$
	nop
124$:
	b       126$
	nop
126$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_demo_8025C904:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	li      $t6, 0x0009
	lui     $at, %hi(pl_demo_8033B2B8)
	sh      $t6, %lo(pl_demo_8033B2B8)($at)
	lw      $t7, 0x0028($sp)
	li      $at, 0x001D
	lhu     $s0, 0x001A($t7)
	beq     $s0, $at, 26$
	nop
	li      $at, 0x002D
	beq     $s0, $at, 39$
	nop
	li      $at, 0x004B
	beq     $s0, $at, 44$
	nop
	li      $at, 0x0082
	beq     $s0, $at, 57$
	nop
	li      $at, 0x00C8
	beq     $s0, $at, 70$
	nop
	b       74$
	nop
26$:
	li      $a0, 0x00A0
	li      $a1, 0x00E3
	li      $a2, 0x0002
	jal     caption_open
	li      $a3, 0x001E
	lui     $a1, %hi(pl_demo_8033B2A4)
	lw      $a1, %lo(pl_demo_8033B2A4)($a1)
	li.u    $a0, 0x243AFF81
	li.l    $a0, 0x243AFF81
	jal     Na_SePlay
	addiu   $a1, $a1, 0x0054
	b       74$
	nop
39$:
	li      $t8, 0x0001
	lui     $at, %hi(pl_demo_8032DB48)
	sb      $t8, %lo(pl_demo_8032DB48)($at)
	b       74$
	nop
44$:
	li      $a0, 0x00A0
	li      $a1, 0x00E3
	li      $a2, 0x0003
	jal     caption_open
	li      $a3, 0x001E
	lui     $a1, %hi(pl_demo_8033B2A4)
	lw      $a1, %lo(pl_demo_8033B2A4)($a1)
	li.u    $a0, 0x243BFF81
	li.l    $a0, 0x243BFF81
	jal     Na_SePlay
	addiu   $a1, $a1, 0x0054
	b       74$
	nop
57$:
	li      $a0, 0x00A0
	li      $a1, 0x00E3
	li      $a2, 0x0004
	jal     caption_open
	li      $a3, 0x0028
	lui     $a1, %hi(pl_demo_8033B2A4)
	lw      $a1, %lo(pl_demo_8033B2A4)($a1)
	li.u    $a0, 0x243CFF81
	li.l    $a0, 0x243CFF81
	jal     Na_SePlay
	addiu   $a1, $a1, 0x0054
	b       74$
	nop
70$:
	jal     pl_demo_8025B0F8
	lw      $a0, 0x0028($sp)
	b       74$
	nop
74$:
	b       76$
	nop
76$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_demo_8025CA48:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	li      $t6, 0x000A
	lui     $at, %hi(pl_demo_8033B2B8)
	sh      $t6, %lo(pl_demo_8033B2B8)($at)
	lw      $t7, 0x0028($sp)
	lhu     $t8, 0x001A($t7)
	slti    $at, $t8, 0x005A
	bnez    $at, 27$
	nop
	lw      $t9, 0x0028($sp)
	lhu     $t0, 0x001A($t9)
	slti    $at, $t0, 0x006E
	beqz    $at, 23$
	nop
	lui     $t1, %hi(pl_demo_8032DC3C-1*90)
	addu    $t1, $t1, $t0
	lbu     $t1, %lo(pl_demo_8032DC3C-1*90)($t1)
	lw      $t2, 0x0098($t9)
	b       27$
	sb      $t1, 0x0005($t2)
23$:
	lw      $t4, 0x0028($sp)
	li      $t3, 0x0002
	lw      $t5, 0x0098($t4)
	sb      $t3, 0x0005($t5)
27$:
	lw      $t6, 0x0028($sp)
	li      $at, 0x0008
	lhu     $s0, 0x001A($t6)
	beq     $s0, $at, 55$
	nop
	li      $at, 0x000A
	beq     $s0, $at, 59$
	nop
	li      $at, 0x0032
	beq     $s0, $at, 64$
	nop
	li      $at, 0x004B
	beq     $s0, $at, 69$
	nop
	li      $at, 0x004C
	beq     $s0, $at, 75$
	nop
	li      $at, 0x0064
	beq     $s0, $at, 81$
	nop
	li      $at, 0x0088
	beq     $s0, $at, 86$
	nop
	li      $at, 0x008C
	beq     $s0, $at, 90$
	nop
	b       94$
	nop
55$:
	lui     $at, %hi(pl_demo_8032DB48)
	sb      $0, %lo(pl_demo_8032DB48)($at)
	b       94$
	nop
59$:
	li      $t7, 0x0003
	lui     $at, %hi(pl_demo_8032DB44)
	sb      $t7, %lo(pl_demo_8032DB44)($at)
	b       94$
	nop
64$:
	li      $t8, 0x0004
	lui     $at, %hi(pl_demo_8032DB44)
	sb      $t8, %lo(pl_demo_8032DB44)($at)
	b       94$
	nop
69$:
	lw      $t9, 0x0028($sp)
	li      $t0, 0x0002
	lw      $t1, 0x0098($t9)
	sb      $t0, 0x0005($t1)
	b       94$
	nop
75$:
	lw      $t4, 0x0028($sp)
	li      $t2, 0x0003
	lw      $t3, 0x0098($t4)
	sb      $t2, 0x0005($t3)
	b       94$
	nop
81$:
	li      $t5, 0x0003
	lui     $at, %hi(pl_demo_8032DB44)
	sb      $t5, %lo(pl_demo_8032DB44)($at)
	b       94$
	nop
86$:
	lui     $at, %hi(pl_demo_8032DB44)
	sb      $0, %lo(pl_demo_8032DB44)($at)
	b       94$
	nop
90$:
	jal     pl_demo_8025B0F8
	lw      $a0, 0x0028($sp)
	b       94$
	nop
94$:
	b       96$
	nop
96$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_demo_8025CBDC:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lw      $a0, 0x0028($sp)
	jal     pl_set_anime
	li      $a1, 0x0027
	sw      $v0, 0x0024($sp)
	lw      $t6, 0x0024($sp)
	li      $at, 0x004D
	bne     $t6, $at, 14$
	nop
	jal     pl_demo_80257548
	lw      $a0, 0x0028($sp)
14$:
	lw      $t7, 0x0024($sp)
	li      $at, 0x0058
	bne     $t7, $at, 24$
	nop
	lw      $t8, 0x0028($sp)
	li.u    $a0, 0x240C8081
	li.l    $a0, 0x240C8081
	lw      $a1, 0x0088($t8)
	jal     Na_SePlay
	addiu   $a1, $a1, 0x0054
24$:
	lw      $t9, 0x0024($sp)
	slti    $at, $t9, 0x0062
	bnez    $at, 32$
	nop
	lw      $t1, 0x0028($sp)
	li      $t0, 0x0002
	lw      $t2, 0x0098($t1)
	sb      $t0, 0x0006($t2)
32$:
	lw      $t3, 0x0028($sp)
	lhu     $t4, 0x001A($t3)
	slti    $at, $t4, 0x0034
	beqz    $at, 41$
	nop
	lw      $t6, 0x0028($sp)
	li      $t5, 0x0002
	lw      $t7, 0x0098($t6)
	sb      $t5, 0x0005($t7)
41$:
	lw      $t8, 0x0028($sp)
	li      $at, 0x0046
	lhu     $s0, 0x001A($t8)
	beq     $s0, $at, 63$
	nop
	li      $at, 0x0056
	beq     $s0, $at, 68$
	nop
	li      $at, 0x005A
	beq     $s0, $at, 73$
	nop
	li      $at, 0x0078
	beq     $s0, $at, 78$
	nop
	li      $at, 0x008C
	beq     $s0, $at, 82$
	nop
	li      $at, 0x008E
	beq     $s0, $at, 89$
	nop
	b       93$
	nop
63$:
	li      $t9, 0x0001
	lui     $at, %hi(pl_demo_8032DB44)
	sb      $t9, %lo(pl_demo_8032DB44)($at)
	b       93$
	nop
68$:
	li      $t1, 0x0002
	lui     $at, %hi(pl_demo_8032DB44)
	sb      $t1, %lo(pl_demo_8032DB44)($at)
	b       93$
	nop
73$:
	li      $t0, 0x0003
	lui     $at, %hi(pl_demo_8032DB44)
	sb      $t0, %lo(pl_demo_8032DB44)($at)
	b       93$
	nop
78$:
	lui     $at, %hi(pl_demo_8032DB44)
	sb      $0, %lo(pl_demo_8032DB44)($at)
	b       93$
	nop
82$:
	move    $a0, $0
	jal     Na_SeqUnmute
	li      $a1, 0x003C
	jal     bgm_stage_play
	li      $a0, 0x0F1A
	b       93$
	nop
89$:
	jal     pl_demo_8025B0F8
	lw      $a0, 0x0028($sp)
	b       93$
	nop
93$:
	b       95$
	nop
95$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_demo_8025CD6C:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lw      $a0, 0x0028($sp)
	jal     pl_set_anime
	li      $a1, 0x00C2
	lui     $a0, %hi(pl_demo_8033B2A4)
	jal     pl_demo_8025BEB8
	lw      $a0, %lo(pl_demo_8033B2A4)($a0)
	lui     $t6, %hi(pl_demo_8033B2A4)
	lw      $t6, %lo(pl_demo_8033B2A4)($t6)
	swc1    $f0, 0x00A4($t6)
	lui     $a0, %hi(pl_demo_8033B2A8)
	jal     pl_demo_8025BEB8
	lw      $a0, %lo(pl_demo_8033B2A8)($a0)
	lui     $t7, %hi(pl_demo_8033B2A8)
	lw      $t7, %lo(pl_demo_8033B2A8)($t7)
	swc1    $f0, 0x00A4($t7)
	lui     $a0, %hi(pl_demo_8033B2AC)
	jal     pl_demo_8025BEB8
	lw      $a0, %lo(pl_demo_8033B2AC)($a0)
	lui     $t8, %hi(pl_demo_8033B2AC)
	lw      $t8, %lo(pl_demo_8033B2AC)($t8)
	swc1    $f0, 0x00A4($t8)
	lw      $t9, 0x0028($sp)
	li      $at, 0x0001
	lhu     $s0, 0x001A($t9)
	beq     $s0, $at, 38$
	nop
	li      $at, 0x0037
	beq     $s0, $at, 63$
	nop
	li      $at, 0x0082
	beq     $s0, $at, 70$
	nop
	b       83$
	nop
38$:
	lui     $at, %hi(pl_demo_8033B2B8)
	sh      $0, %lo(pl_demo_8033B2B8)($at)
	la.u    $t0, pl_demo_8033B2BC
	la.l    $t0, pl_demo_8033B2BC
	sh      $0, 0x0000($t0)
	la.u    $t2, pl_demo_8033B2BC
	la.l    $t2, pl_demo_8033B2BC
	li      $t1, 0x0002
	sh      $t1, 0x0002($t2)
	li      $t3, 0x0001
	lui     $at, %hi(pl_demo_8032DB48)
	sb      $t3, %lo(pl_demo_8032DB48)($at)
	li      $a0, 0x00A0
	li      $a1, 0x00E3
	li      $a2, 0x0005
	jal     caption_open
	li      $a3, 0x001E
	lui     $a1, %hi(pl_demo_8033B2A4)
	lw      $a1, %lo(pl_demo_8033B2A4)($a1)
	li.u    $a0, 0x243DFF81
	li.l    $a0, 0x243DFF81
	jal     Na_SePlay
	addiu   $a1, $a1, 0x0054
	b       83$
	nop
63$:
	li      $a0, 0x00A0
	li      $a1, 0x00E3
	li      $a2, 0x0006
	jal     caption_open
	li      $a3, 0x0028
	b       83$
	nop
70$:
	li      $a0, 0x00A0
	li      $a1, 0x00E3
	li      $a2, 0x0007
	jal     caption_open
	li      $a3, 0x0032
	lui     $a1, %hi(pl_demo_8033B2A4)
	lw      $a1, %lo(pl_demo_8033B2A4)($a1)
	li.u    $a0, 0x243EFF81
	li.l    $a0, 0x243EFF81
	jal     Na_SePlay
	addiu   $a1, $a1, 0x0054
	b       83$
	nop
83$:
	lw      $t4, 0x0028($sp)
	li      $at, 0x015E
	lhu     $t5, 0x001A($t4)
	bne     $t5, $at, 90$
	nop
	jal     pl_demo_8025B0F8
	lw      $a0, 0x0028($sp)
90$:
	b       92$
	nop
92$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_demo_8025CEF0:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	lhu     $t7, 0x0018($t6)
	bnez    $t7, 10$
	nop
	b       11$
	li      $s0, 0x0023
10$:
	li      $s0, 0x0024
11$:
	lw      $a0, 0x0028($sp)
	jal     pl_set_anime
	move    $a1, $s0
	lw      $t8, 0x0028($sp)
	jal     pl_demo_8025BEB8
	lw      $a0, 0x0088($t8)
	lw      $t9, 0x0028($sp)
	lw      $t0, 0x0088($t9)
	swc1    $f0, 0x0024($t0)
	lw      $t1, 0x0028($sp)
	lhu     $t2, 0x0018($t1)
	bnez    $t2, 31$
	nop
	jal     player_8025097C
	move    $a0, $t1
	beqz    $v0, 31$
	nop
	lw      $t4, 0x0028($sp)
	li      $t3, 0x0001
	sh      $t3, 0x0018($t4)
31$:
	lw      $t5, 0x0028($sp)
	li      $at, 0x005F
	lhu     $t6, 0x001A($t5)
	bne     $t6, $at, 47$
	nop
	li      $a0, 0x00A0
	li      $a1, 0x00E3
	move    $a2, $0
	jal     caption_open
	li      $a3, 0x0028
	lui     $a1, %hi(pl_demo_8033B2A4)
	lw      $a1, %lo(pl_demo_8033B2A4)($a1)
	li.u    $a0, 0x243FFF81
	li.l    $a0, 0x243FFF81
	jal     Na_SePlay
	addiu   $a1, $a1, 0x0054
47$:
	lw      $t7, 0x0028($sp)
	li      $at, 0x0185
	lhu     $t8, 0x001A($t7)
	bne     $t8, $at, 54$
	nop
	jal     pl_demo_8025B0F8
	lw      $a0, 0x0028($sp)
54$:
	b       56$
	nop
56$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_demo_8025CFE4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	lhu     $t7, 0x0018($t6)
	bnez    $t7, 17$
	nop
	lw      $a0, 0x0018($sp)
	jal     pl_fade
	li      $a1, 0x0018
	lui     $at, %hi(pl_demo_8033671C)
	lwc1    $f4, %lo(pl_demo_8033671C)($at)
	lui     $at, %hi(water_80330F3C)
	swc1    $f4, %lo(water_80330F3C)($at)
	lw      $t9, 0x0018($sp)
	li      $t8, 0x0001
	sh      $t8, 0x0018($t9)
17$:
	b       19$
	nop
19$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_demo_8025D040:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0020($sp)
	lw      $t6, 0x0020($sp)
	lw      $t7, 0x001C($t6)
	sltiu   $at, $t7, 0x000D
	beqz    $at, 66$
	nop
	sll     $t7, $t7, 2
	lui     $at, %hi(pl_demo_80336720)
	addu    $at, $at, $t7
	lw      $t7, %lo(pl_demo_80336720)($at)
	jr      $t7
	nop
.globl L8025D078
L8025D078:
	jal     pl_demo_8025BF64
	lw      $a0, 0x0020($sp)
	b       66$
	nop
.globl L8025D088
L8025D088:
	jal     pl_demo_8025C014
	lw      $a0, 0x0020($sp)
	b       66$
	nop
.globl L8025D098
L8025D098:
	jal     pl_demo_8025C0C4
	lw      $a0, 0x0020($sp)
	b       66$
	nop
.globl L8025D0A8
L8025D0A8:
	jal     pl_demo_8025C1C0
	lw      $a0, 0x0020($sp)
	b       66$
	nop
.globl L8025D0B8
L8025D0B8:
	jal     pl_demo_8025C498
	lw      $a0, 0x0020($sp)
	b       66$
	nop
.globl L8025D0C8
L8025D0C8:
	jal     pl_demo_8025C600
	lw      $a0, 0x0020($sp)
	b       66$
	nop
.globl L8025D0D8
L8025D0D8:
	jal     pl_demo_8025C6F8
	lw      $a0, 0x0020($sp)
	b       66$
	nop
.globl L8025D0E8
L8025D0E8:
	jal     pl_demo_8025C904
	lw      $a0, 0x0020($sp)
	b       66$
	nop
.globl L8025D0F8
L8025D0F8:
	jal     pl_demo_8025CA48
	lw      $a0, 0x0020($sp)
	b       66$
	nop
.globl L8025D108
L8025D108:
	jal     pl_demo_8025CBDC
	lw      $a0, 0x0020($sp)
	b       66$
	nop
.globl L8025D118
L8025D118:
	jal     pl_demo_8025CD6C
	lw      $a0, 0x0020($sp)
	b       66$
	nop
.globl L8025D128
L8025D128:
	jal     pl_demo_8025CEF0
	lw      $a0, 0x0020($sp)
	b       66$
	nop
.globl L8025D138
L8025D138:
	jal     pl_demo_8025CFE4
	lw      $a0, 0x0020($sp)
	b       66$
	nop
66$:
	lw      $t8, 0x0020($sp)
	lhu     $t9, 0x001A($t8)
	addiu   $t0, $t9, 0x0001
	sh      $t0, 0x001A($t8)
	la.u    $t2, vp_pl_demo
	la.l    $t2, vp_pl_demo
	li      $t1, 0x0280
	sh      $t1, 0x0000($t2)
	la.u    $t4, vp_pl_demo
	la.l    $t4, vp_pl_demo
	li      $t3, 0x0168
	sh      $t3, 0x0002($t4)
	la.u    $t6, vp_pl_demo
	la.l    $t6, vp_pl_demo
	li      $t5, 0x0280
	sh      $t5, 0x0008($t6)
	la.u    $t9, vp_pl_demo
	la.l    $t9, vp_pl_demo
	li      $t7, 0x01E0
	sh      $t7, 0x000A($t9)
	la.u    $a1, vp_pl_demo
	la.l    $a1, vp_pl_demo
	move    $a0, $0
	move    $a2, $0
	move    $a3, $0
	jal     scene_set_vp
	sw      $0, 0x0010($sp)
	b       97$
	move    $v0, $0
	b       97$
	nop
97$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

pl_demo_8025D1D4:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x0024($sp)
	sw      $a0, 0x0038($sp)
	sw      $s0, 0x0020($sp)
	lw      $t7, 0x0038($sp)
	li      $t6, 0x000D
	lw      $t8, 0x0094($t7)
	sh      $t6, 0x001E($t8)
	lw      $t9, 0x0038($sp)
	lh      $t0, 0x0076($t9)
	lwc1    $f4, 0x0040($t9)
	addiu   $t1, $t0, -0x0064
	mtc1    $t1, $f6
	nop
	cvt.s.w $f8, $f6
	c.lt.s  $f4, $f8
	nop
	bc1f    50$
	nop
	lw      $t2, 0x0038($sp)
	li      $at, 0x0003
	lw      $t3, 0x0090($t2)
	lw      $t4, 0x0024($t3)
	lbu     $t5, 0x0000($t4)
	beq     $t5, $at, 32$
	nop
	lw      $t7, 0x0038($sp)
	li      $a1, 0x0003
	li      $a2, 0x0001
	lw      $t6, 0x0090($t7)
	jal     camera_80286188
	lw      $a0, 0x0024($t6)
32$:
	lw      $a0, 0x0038($sp)
	jal     pl_set_anime
	li      $a1, 0x00B2
	lw      $t8, 0x0038($sp)
	lw      $a0, 0x0088($t8)
	addiu   $a1, $t8, 0x003C
	jal     vecf_cpy
	addiu   $a0, $a0, 0x0020
	lw      $t9, 0x0038($sp)
	lw      $a0, 0x0088($t9)
	addiu   $a1, $t9, 0x002C
	jal     vecs_cpy
	addiu   $a0, $a0, 0x001A
	lw      $t0, 0x0038($sp)
	lw      $t1, 0x0008($t0)
	ori     $t2, $t1, 0x0020
	b       59$
	sw      $t2, 0x0008($t0)
50$:
	lw      $a0, 0x0038($sp)
	jal     pl_set_anime
	li      $a1, 0x00C2
	lw      $t3, 0x0038($sp)
	lhu     $t4, 0x001A($t3)
	blez    $t4, 59$
	nop
	jal     physics_802559B0
	lw      $a0, 0x0038($sp)
59$:
	lw      $t5, 0x0038($sp)
	lhu     $t7, 0x001A($t5)
	slti    $at, $t7, 0x003D
	bnez    $at, 152$
	nop
	lw      $t6, 0x0038($sp)
	lhu     $t8, 0x0018($t6)
	slti    $at, $t8, 0x0028
	beqz    $at, 73$
	nop
	lw      $t9, 0x0038($sp)
	lhu     $t1, 0x0018($t9)
	addiu   $t2, $t1, 0x0002
	sh      $t2, 0x0018($t9)
73$:
	lw      $t0, 0x0038($sp)
	li      $at, 0x0064
	lhu     $t3, 0x0018($t0)
	sll     $t4, $t3, 2
	addu    $t4, $t4, $t3
	sll     $t4, $t4, 7
	div     $0, $t4, $at
	mflo    $t5
	sw      $t5, 0x0034($sp)
	nop
	lw      $t7, 0x0038($sp)
	li      $at, 0x0064
	lhu     $t6, 0x0018($t7)
	sll     $t8, $t6, 4
	subu    $t8, $t8, $t6
	sll     $t8, $t8, 5
	div     $0, $t8, $at
	mflo    $t1
	sw      $t1, 0x0030($sp)
	nop
	lw      $t2, 0x0034($sp)
	li      $t9, 0x0280
	la.u    $t3, vp_pl_demo
	la.l    $t3, vp_pl_demo
	subu    $t0, $t9, $t2
	sh      $t0, 0x0000($t3)
	lw      $t4, 0x0030($sp)
	li      $t5, 0x01E0
	la.u    $t6, vp_pl_demo
	la.l    $t6, vp_pl_demo
	subu    $t7, $t5, $t4
	sh      $t7, 0x0002($t6)
	lui     $t8, %hi(staffp)
	lw      $t8, %lo(staffp)($t8)
	lbu     $t1, 0x0002($t8)
	andi    $t9, $t1, 0x0010
	beqz    $t9, 113$
	nop
	b       115$
	lw      $s0, 0x0034($sp)
113$:
	lw      $s0, 0x0034($sp)
	subu    $s0, $0, $s0
115$:
	sll     $t2, $s0, 3
	subu    $t2, $t2, $s0
	sll     $t2, $t2, 3
	li      $at, 0x0064
	div     $0, $t2, $at
	mflo    $t0
	la.u    $t5, vp_pl_demo
	la.l    $t5, vp_pl_demo
	addiu   $t3, $t0, 0x0280
	sh      $t3, 0x0008($t5)
	lui     $t4, %hi(staffp)
	lw      $t4, %lo(staffp)($t4)
	lbu     $t7, 0x0002($t4)
	andi    $t6, $t7, 0x0020
	beqz    $t6, 133$
	nop
	b       135$
	lw      $s0, 0x0030($sp)
133$:
	lw      $s0, 0x0030($sp)
	subu    $s0, $0, $s0
135$:
	sll     $t8, $s0, 5
	addu    $t8, $t8, $s0
	sll     $t8, $t8, 1
	li      $at, 0x0064
	div     $0, $t8, $at
	mflo    $t1
	la.u    $t2, vp_pl_demo
	la.l    $t2, vp_pl_demo
	addiu   $t9, $t1, 0x01E0
	sh      $t9, 0x000A($t2)
	la.u    $a0, vp_pl_demo
	la.l    $a0, vp_pl_demo
	move    $a1, $0
	move    $a2, $0
	move    $a3, $0
	jal     scene_set_vp
	sw      $0, 0x0010($sp)
152$:
	lw      $t0, 0x0038($sp)
	li      $at, 0x005A
	lhu     $t3, 0x001A($t0)
	bne     $t3, $at, 159$
	nop
	jal     staff_clear
	nop
159$:
	lw      $t5, 0x0038($sp)
	lhu     $t4, 0x001A($t5)
	slti    $at, $t4, 0x005A
	bnez    $at, 168$
	nop
	lui     $t7, %hi(staffp)
	lw      $t7, %lo(staffp)($t7)
	lui     $at, %hi(pl_demo_staff)
	sw      $t7, %lo(pl_demo_staff)($at)
168$:
	lw      $t6, 0x0038($sp)
	lhu     $s0, 0x001A($t6)
	lhu     $t1, 0x001A($t6)
	xori    $t8, $s0, 0x00C8
	sltiu   $t8, $t8, 0x0001
	move    $s0, $t8
	addiu   $t9, $t1, 0x0001
	beqz    $s0, 180$
	sh      $t9, 0x001A($t6)
	lw      $a0, 0x0038($sp)
	jal     pl_fade
	li      $a1, 0x0018
180$:
	lw      $t2, 0x0038($sp)
	lui     $t5, %hi(staffp)
	lw      $t5, %lo(staffp)($t5)
	lw      $t0, 0x0088($t2)
	lbu     $t4, 0x0002($t5)
	lh      $t3, 0x001C($t0)
	andi    $t7, $t4, 0x00C0
	sll     $t8, $t7, 8
	addu    $t1, $t3, $t8
	sh      $t1, 0x001C($t0)
	b       194$
	move    $v0, $0
	b       194$
	nop
194$:
	lw      $ra, 0x0024($sp)
	lw      $s0, 0x0020($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

pl_demo_8025D4F0:
	addiu   $sp, $sp, -0x0040
	sw      $ra, 0x0034($sp)
	sw      $a0, 0x0040($sp)
	sw      $s0, 0x0030($sp)
	lw      $t6, 0x0040($sp)
	lhu     $t7, 0x0018($t6)
	bnez    $t7, 92$
	nop
	lw      $t9, 0x0040($sp)
	li      $t8, 0x000C
	lw      $t0, 0x0094($t9)
	sh      $t8, 0x001E($t0)
	lui     $a0, %hi(object)
	la.u    $a3, o_13000EAC
	li      $t1, 0x003C
	li      $t2, 0x038A
	li      $t3, -0x049C
	sw      $t3, 0x0018($sp)
	sw      $t2, 0x0014($sp)
	sw      $t1, 0x0010($sp)
	la.l    $a3, o_13000EAC
	lw      $a0, %lo(object)($a0)
	move    $a1, $0
	li      $a2, 0x00DE
	sw      $0, 0x001C($sp)
	sw      $0, 0x0020($sp)
	jal     obj_make_abs
	sw      $0, 0x0024($sp)
	lui     $at, %hi(pl_demo_8033B2A4)
	sw      $v0, %lo(pl_demo_8033B2A4)($at)
	lui     $a0, %hi(object)
	la.u    $a3, o_13000E88
	li      $t4, 0x00B4
	li      $t5, 0x038A
	li      $t6, -0x0492
	sw      $t6, 0x0018($sp)
	sw      $t5, 0x0014($sp)
	sw      $t4, 0x0010($sp)
	la.l    $a3, o_13000E88
	lw      $a0, %lo(object)($a0)
	move    $a1, $0
	li      $a2, 0x00DD
	sw      $0, 0x001C($sp)
	sw      $0, 0x0020($sp)
	jal     obj_make_abs
	sw      $0, 0x0024($sp)
	lui     $at, %hi(pl_demo_8033B2A8)
	sw      $v0, %lo(pl_demo_8033B2A8)($at)
	lui     $a0, %hi(object)
	la.u    $a3, o_13000E88
	li      $t7, -0x00B4
	li      $t9, 0x038A
	li      $t8, -0x0492
	sw      $t8, 0x0018($sp)
	sw      $t9, 0x0014($sp)
	sw      $t7, 0x0010($sp)
	la.l    $a3, o_13000E88
	lw      $a0, %lo(object)($a0)
	move    $a1, $0
	li      $a2, 0x00DD
	sw      $0, 0x001C($sp)
	sw      $0, 0x0020($sp)
	jal     obj_make_abs
	sw      $0, 0x0024($sp)
	lui     $at, %hi(pl_demo_8033B2AC)
	sw      $v0, %lo(pl_demo_8033B2AC)($at)
	lui     $t1, %hi(pl_demo_8033B2A4)
	lw      $t1, %lo(pl_demo_8033B2A4)($t1)
	li      $t0, 0x00FF
	sw      $t0, 0x017C($t1)
	lui     $t3, %hi(pl_demo_8033B2A8)
	lw      $t3, %lo(pl_demo_8033B2A8)($t3)
	li      $t2, 0x00FF
	sw      $t2, 0x017C($t3)
	lui     $t5, %hi(pl_demo_8033B2AC)
	lw      $t5, %lo(pl_demo_8033B2AC)($t5)
	li      $t4, 0x00FF
	sw      $t4, 0x017C($t5)
	li      $t6, 0x000B
	lui     $at, %hi(pl_demo_8033B2B8)
	sh      $t6, %lo(pl_demo_8033B2B8)($at)
	la.u    $t9, pl_demo_8033B2BC
	la.l    $t9, pl_demo_8033B2BC
	li      $t7, 0x0006
	sh      $t7, 0x0000($t9)
	la.u    $t0, pl_demo_8033B2BC
	la.l    $t0, pl_demo_8033B2BC
	li      $t8, 0x0007
	sh      $t8, 0x0002($t0)
	lw      $t2, 0x0040($sp)
	li      $t1, 0x0001
	sh      $t1, 0x0018($t2)
92$:
	lw      $a0, 0x0040($sp)
	jal     pl_set_anime
	li      $a1, 0x001D
	jal     physics_802559B0
	lw      $a0, 0x0040($sp)
	lw      $t3, 0x0040($sp)
	li      $at, 0x8000
	lw      $t4, 0x0088($t3)
	lh      $t5, 0x001C($t4)
	addu    $t6, $t5, $at
	sh      $t6, 0x001C($t4)
	lw      $t7, 0x0040($sp)
	li      $at, 0x42700000
	mtc1    $at, $f6
	lw      $t9, 0x0088($t7)
	lwc1    $f4, 0x0020($t9)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x0020($t9)
	lw      $t0, 0x0040($sp)
	li      $t8, 0x0005
	lw      $t1, 0x0098($t0)
	sb      $t8, 0x0006($t1)
	lw      $t2, 0x0040($sp)
	lhu     $s0, 0x001A($t2)
	lhu     $t5, 0x001A($t2)
	xori    $t3, $s0, 0x012C
	sltiu   $t3, $t3, 0x0001
	move    $s0, $t3
	addiu   $t6, $t5, 0x0001
	beqz    $s0, 126$
	sh      $t6, 0x001A($t2)
	lw      $a0, 0x0040($sp)
	jal     pl_fade
	li      $a1, 0x0015
126$:
	b       130$
	move    $v0, $0
	b       130$
	nop
130$:
	lw      $ra, 0x0034($sp)
	lw      $s0, 0x0030($sp)
	addiu   $sp, $sp, 0x0040
	jr      $ra
	nop

pl_demo_8025D70C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	li      $at, 0x0023
	lw      $t7, 0x0068($t6)
	lh      $t8, 0x0000($t7)
	bne     $t8, $at, 27$
	nop
	lw      $t9, 0x000C($t6)
	li      $at, 0x00020000
	and     $t0, $t9, $at
	beqz    $t0, 27$
	nop
	li.u    $at, 0x00021312
	li.l    $at, 0x00021312
	beq     $t9, $at, 27$
	nop
	jal     player_802521A0
	lw      $a0, 0x0018($sp)
	li.u    $a1, 0x00021312
	li.l    $a1, 0x00021312
	lw      $a0, 0x0018($sp)
	jal     player_80253178
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

.globl pl_demo_exec
pl_demo_exec:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	jal     pl_demo_8025D70C
	lw      $a0, 0x0028($sp)
	beqz    $v0, 10$
	nop
	b       367$
	li      $v0, 0x0001
10$:
	lw      $t6, 0x0028($sp)
	li.u    $at, 0x0002033D
	li.l    $at, 0x0002033D
	lw      $s0, 0x000C($t6)
	sltu    $at, $s0, $at
	bnez    $at, 55$
	nop
	li.u    $at, 0x04001302
	li.l    $at, 0x04001302
	sltu    $at, $s0, $at
	bnez    $at, 32$
	nop
	li.u    $at, 0x20001305
	li.l    $at, 0x20001305
	beq     $s0, $at, 131$
	nop
	li.u    $at, 0x20001306
	li.l    $at, 0x20001306
	beq     $s0, $at, 136$
	nop
	b       L8025DD14
	nop
32$:
	li.u    $at, 0x00021318
	li.l    $at, 0x00021318
	sltu    $at, $s0, $at
	bnez    $at, 43$
	nop
	li.u    $at, 0x04001301
	li.l    $at, 0x04001301
	beq     $s0, $at, 106$
	nop
	b       L8025DD14
	nop
43$:
	li.u    $at, 0xFFFDECEF
	li.l    $at, 0xFFFDECEF
	addu    $t7, $s0, $at
	sltiu   $at, $t7, 0x0007
	beqz    $at, L8025DD14
	nop
	sll     $t7, $t7, 2
	lui     $at, %hi(pl_demo_80336754)
	addu    $at, $at, $t7
	lw      $t7, %lo(pl_demo_80336754)($at)
	jr      $t7
	nop
55$:
	sltiu   $at, $s0, 0x1536
	bnez    $at, 83$
	nop
	sltiu   $at, $s0, 0x1935
	bnez    $at, 73$
	nop
	li.u    $at, 0xFFFDFCC8
	li.l    $at, 0xFFFDFCC8
	addu    $t8, $s0, $at
	sltiu   $at, $t8, 0x0005
	beqz    $at, L8025DD14
	nop
	sll     $t8, $t8, 2
	lui     $at, %hi(pl_demo_80336770)
	addu    $at, $at, $t8
	lw      $t8, %lo(pl_demo_80336770)($at)
	jr      $t8
	nop
73$:
	addiu   $t9, $s0, -0x1904
	sltiu   $at, $t9, 0x0031
	beqz    $at, L8025DD14
	nop
	sll     $t9, $t9, 2
	lui     $at, %hi(pl_demo_80336784)
	addu    $at, $at, $t9
	lw      $t9, %lo(pl_demo_80336784)($at)
	jr      $t9
	nop
83$:
	sltiu   $at, $s0, 0x133E
	bnez    $at, 91$
	nop
	li      $at, 0x1535
	beq     $s0, $at, 306$
	nop
	b       L8025DD14
	nop
91$:
	addiu   $t0, $s0, -0x1300
	sltiu   $at, $t0, 0x003E
	beqz    $at, L8025DD14
	nop
	sll     $t0, $t0, 2
	lui     $at, %hi(pl_demo_80336848)
	addu    $at, $at, $t0
	lw      $t0, %lo(pl_demo_80336848)($at)
	jr      $t0
	nop
.globl L8025D92C
L8025D92C:
	jal     pl_demo_80257A0C
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L8025DD14
	nop
106$:
	jal     pl_demo_8025B58C
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L8025DD14
	nop
.globl L8025D954
L8025D954:
	jal     pl_demo_80258420
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L8025DD14
	nop
.globl L8025D968
L8025D968:
	jal     pl_demo_80258420
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L8025DD14
	nop
.globl L8025D97C
L8025D97C:
	jal     pl_demo_802584DC
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L8025DD14
	nop
.globl L8025D990
L8025D990:
	jal     pl_demo_802585C0
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L8025DD14
	nop
131$:
	jal     pl_demo_80257AB0
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L8025DD14
	nop
136$:
	jal     pl_demo_80257748
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L8025DD14
	nop
.globl L8025D9CC
L8025D9CC:
	jal     pl_demo_80257EAC
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L8025DD14
	nop
.globl L8025D9E0
L8025D9E0:
	jal     pl_demo_80257CE4
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L8025DD14
	nop
.globl L8025D9F4
L8025D9F4:
	jal     pl_demo_8025BBEC
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L8025DD14
	nop
.globl L8025DA08
L8025DA08:
	jal     pl_demo_80257980
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L8025DD14
	nop
.globl L8025DA1C
L8025DA1C:
	jal     pl_demo_80258744
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L8025DD14
	nop
.globl L8025DA30
L8025DA30:
	jal     pl_demo_80258964
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L8025DD14
	nop
.globl L8025DA44
L8025DA44:
	jal     pl_demo_802587EC
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L8025DD14
	nop
.globl L8025DA58
L8025DA58:
	jal     pl_demo_8025883C
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L8025DD14
	nop
.globl L8025DA6C
L8025DA6C:
	jal     pl_demo_802588F8
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L8025DD14
	nop
.globl L8025DA80
L8025DA80:
	jal     pl_demo_8025888C
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L8025DD14
	nop
.globl L8025DA94
L8025DA94:
	jal     pl_demo_80258A7C
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L8025DD14
	nop
.globl L8025DAA8
L8025DAA8:
	jal     pl_demo_8025D040
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L8025DD14
	nop
.globl L8025DABC
L8025DABC:
	jal     pl_demo_8025D1D4
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L8025DD14
	nop
.globl L8025DAD0
L8025DAD0:
	jal     pl_demo_8025D4F0
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L8025DD14
	nop
.globl L8025DAE4
L8025DAE4:
	jal     pl_demo_80259264
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L8025DD14
	nop
.globl L8025DAF8
L8025DAF8:
	jal     pl_demo_802593CC
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L8025DD14
	nop
.globl L8025DB0C
L8025DB0C:
	jal     pl_demo_802594D4
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L8025DD14
	nop
.globl L8025DB20
L8025DB20:
	jal     pl_demo_80259608
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L8025DD14
	nop
.globl L8025DB34
L8025DB34:
	jal     pl_demo_80259740
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L8025DD14
	nop
.globl L8025DB48
L8025DB48:
	jal     pl_demo_802597AC
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L8025DD14
	nop
.globl L8025DB5C
L8025DB5C:
	jal     pl_demo_802598D0
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L8025DD14
	nop
.globl L8025DB70
L8025DB70:
	jal     pl_demo_80259C30
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L8025DD14
	nop
.globl L8025DB84
L8025DB84:
	jal     pl_demo_80259CE8
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L8025DD14
	nop
.globl L8025DB98
L8025DB98:
	jal     pl_demo_80259D74
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L8025DD14
	nop
.globl L8025DBAC
L8025DBAC:
	jal     pl_demo_80259E00
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L8025DD14
	nop
.globl L8025DBC0
L8025DBC0:
	jal     pl_demo_80259EF8
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L8025DD14
	nop
.globl L8025DBD4
L8025DBD4:
	jal     pl_demo_80259854
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L8025DD14
	nop
.globl L8025DBE8
L8025DBE8:
	jal     pl_demo_80258BA8
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L8025DD14
	nop
.globl L8025DBFC
L8025DBFC:
	jal     pl_demo_80258DAC
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L8025DD14
	nop
.globl L8025DC10
L8025DC10:
	jal     pl_demo_80258F94
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L8025DD14
	nop
.globl L8025DC24
L8025DC24:
	jal     pl_demo_80259FCC
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L8025DD14
	nop
.globl L8025DC38
L8025DC38:
	jal     pl_demo_8025A040
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L8025DD14
	nop
.globl L8025DC4C
L8025DC4C:
	jal     pl_demo_8025A494
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L8025DD14
	nop
306$:
	jal     pl_demo_8025A0BC
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L8025DD14
	nop
.globl L8025DC74
L8025DC74:
	jal     pl_demo_8025A610
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L8025DD14
	nop
.globl L8025DC88
L8025DC88:
	jal     pl_demo_8025A6FC
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L8025DD14
	nop
.globl L8025DC9C
L8025DC9C:
	jal     pl_demo_8025A858
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L8025DD14
	nop
.globl L8025DCB0
L8025DCB0:
	jal     pl_demo_8025A9AC
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L8025DD14
	nop
.globl L8025DCC4
L8025DCC4:
	jal     pl_demo_8025AFFC
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L8025DD14
	nop
.globl L8025DCD8
L8025DCD8:
	jal     pl_demo_8025B050
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L8025DD14
	nop
.globl L8025DCEC
L8025DCEC:
	jal     pl_demo_8025B0A4
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L8025DD14
	nop
.globl L8025DD00
L8025DD00:
	jal     pl_demo_8025AE0C
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L8025DD14
	nop
.globl L8025DD14
L8025DD14:
	lw      $t1, 0x0024($sp)
	bnez    $t1, 363$
	nop
	lw      $t2, 0x0028($sp)
	lhu     $t3, 0x0002($t2)
	andi    $t4, $t3, 0x0200
	beqz    $t4, 363$
	nop
	lw      $t5, 0x0028($sp)
	lw      $t6, 0x0008($t5)
	ori     $t7, $t6, 0x0080
	sw      $t7, 0x0008($t5)
363$:
	b       367$
	lw      $v0, 0x0024($sp)
	b       367$
	nop
367$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop
