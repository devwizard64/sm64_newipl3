#include <asm.h>
#include <regdef.h>
#include <PR/R4300.h>
#include <PR/rcp.h>

bulk_rom = 0xA600
cart_rom = 0xB000
clear_rsp = \
	SP_SET_HALT|SP_CLR_BROKE|SP_CLR_INTR|SP_CLR_SSTEP|SP_CLR_INTR_BREAK | \
	SP_CLR_SIG0|SP_CLR_SIG1|SP_CLR_SIG2|SP_CLR_SIG3 | \
	SP_CLR_SIG4|SP_CLR_SIG5|SP_CLR_SIG6|SP_CLR_SIG7
clear_in_mask = \
	MI_INTR_MASK_CLR_SP | \
	MI_INTR_MASK_CLR_SI | \
	MI_INTR_MASK_CLR_AI | \
	MI_INTR_MASK_CLR_VI | \
	MI_INTR_MASK_CLR_PI | \
	MI_INTR_MASK_CLR_DP

LEAF(IPL3)
.set noreorder
	mtc0    zero, C0_CAUSE
	mtc0    zero, C0_COUNT
	mtc0    zero, C0_COMPARE

	la      t0, PHYS_TO_K1(RI_BASE_REG)
	lw      t1, 0x0C(t0)
	bnez    t1, nmi
	nop

	/* init RDRAM */
	subu    sp, 24
	sw      s3, 0(sp)
	sw      s4, 4(sp)
	sw      s5, 8(sp)
	sw      s6, 12(sp)
	sw      s7, 16(sp)
	la      t0, PHYS_TO_K1(RI_BASE_REG)
	lui     t2, 0xA3F8
	lui     t3, 0xA3F0
	la      t4, PHYS_TO_K1(MI_BASE_REG)
	ori     t1, zero, 0x40
	sw      t1, 0x04(t0)
	li      s1, 8000
wait_rac:
	nop
	sub     s1, 1
	bnez    s1, wait_rac
	nop
	sw      zero, 0x08(t0)
	ori     t1, zero, 0x14
	sw      t1, 0x0C(t0)
	sw      zero, 0x00(t0)
	li      s1, 4
wait_rac1:
	nop
	sub     s1, 1
	bnez    s1, wait_rac1
	nop
	ori     t1, zero, 0x000E
	sw      t1, 0x00(t0)
	li      s1, 32
wait_rdram:
	sub     s1, 1
	bnez    s1, wait_rdram
	ori     t1, zero, 0x010F
	sw      t1, 0x00(t4)
	li      t1, 0x18082838
	sw      t1, 0x08(t2)
	sw      zero, 0x14(t2)
	li      t1, 0x80000000
	sw      t1, 0x04(t2)
	move    t5, zero
	move    t6, zero
	lui     t7, 0xA3F0
	move    t8, zero
	lui     t9, 0xA3F0
	lui     s6, 0xA000
	move    s7, zero
	lui     a2, 0xA3F0
	lui     a3, 0xA000
	move    s2, zero
	lui     s4, 0xA000
	subu    sp, 72
	move    fp, sp
	lw      s0, PHYS_TO_K1(MI_VERSION_REG)
	la      s1, 0x01010101
	bne     s0, s1, rcp2
	nop
	li      s0, 0x200
	ori     s1, t3, 0x4000
	b       loop1
	nop
rcp2:
	li      s0, 0x400
	ori     s1, t3, 0x8000
loop1:
	sw      t6, 4(s1)
	addu    s5, t7, 0x0C
	jal     InitCCValue
	nop
	beqz    v0, done_loop1
	nop
	sw      v0, 0(sp)
	li      t1, 0x2000
	sw      t1, 0x00(t4)
	lw      t3, 0x00(t7)
	li      t0, 0xF0FF0000
	and     t3, t0
	sw      t3, 4(sp)
	add     sp, 8
	li      t1, 0x1000
	sw      t1, 0x00(t4)
	li      t0, 0xB0190000
	bne     t3, t0, SM
	nop
	li      t0, 0x08000000
	add     t8, t0
	add     t9, s0
	add     t9, s0
	li      t0, 0x00200000
	add     s6, t0
	add     s4, t0
	sll     s2, 1
	add     s2, 1
	b       LM
	nop
SM:
	li      t0, 0x00100000
	add     s4, t0
LM:
	li      t0, 0x2000
	sw      t0, 0x00(t4)
	lw      t1, 0x24(t7)
	lw      k0, 0x00(t7)
	li      t0, 0x1000
	sw      t0, 0x00(t4)
	and     t1, 0xFFFF
	li      t0, 0x0500
	bne     t1, t0, toshiba
	nop
	li      k1, 0x01000000
	and     k0, k1
	bnez    k0, toshiba
	nop
	li      t0, 0x101C0A04
	sw      t0, 0x18(t7)
	b       done_manufacture
toshiba:
	li      t0, 0x080C1204
	sw      t0, 0x18(t7)
done_manufacture:
	li      t0, 0x08000000
	add     t6, t0
	add     t7, s0
	add     t7, s0
	addu    t5, 1
	sltu    t0, t5, 8
	bnez    t0, loop1
	nop
done_loop1:
	li      t0, 0xC4000000
	sw      t0, 0x0C(t2)
	li      t0, 0x80000000
	sw      t0, 0x04(t2)
	move    sp, fp
	move    v1, zero
loop2:
	lw      t1, 4(sp)
	li      t0, 0xB0090000
	bne     t1, t0, HM
	nop
	sw      t8, 4(s1)
	addu    s5, t9, 0x0C
	lw      a0, 0(sp)
	add     sp, 8
	li      a1, 1
	jal     WriteCC
	nop
	lw      t0, (s6)
	li      t0, 0x00080000
	add     t0, s6
	lw      t1, (t0)
	lw      t0, (s6)
	li      t0, 0x00080000
	add     t0, s6
	lw      t1, (t0)
	li      t0, 0x04000000
	add     t6, t0
	add     t9, s0
	li      t0, 0x00100000
	add     s6, t0
	b       done_loop2
HM:
	sw      s7, 4(s1)
	addu    s5, a2, 0x0C
	lw      a0, 0(sp)
	add     sp, 8
	li      a1, 1
	jal     WriteCC
	nop
	lw      t0, (a3)
	li      t0, 0x00080000
	add     t0, a3
	lw      t1, (t0)
	li      t0, 0x00100000
	add     t0, a3
	lw      t1, (t0)
	li      t0, 0x00180000
	add     t0, a3
	lw      t1, (t0)
	lw      t0, (a3)
	li      t0, 0x00080000
	add     t0, a3
	lw      t1, (t0)
	li      t0, 0x00100000
	add     t0, a3
	lw      t1, (t0)
	li      t0, 0x00180000
	add     t0, a3
	lw      t1, (t0)
	li      t0, 0x08000000
	add     s7, t0
	add     a2, s0
	add     a2, s0
	li      t0, 0x00200000
	add     a3, t0
done_loop2:
	addu    v1, 1
	slt     t0, v1, t5
	bnez    t0, loop2
	nop
	lui     t2, 0xA470
	sll     s2, 19
	li      t1, 0x63634
	or      t1, s2
	sw      t1, 0x10(t2)
	lw      t1, 0x10(t2)
	li      t0, 0xA0000300
	li      t1, 0x0FFFFFFF
	and     s6, t1
	sw      s6, 0x18(t0)
	move    sp, fp
	addu    sp, 72
	lw      s3, 0(sp)
	lw      s4, 4(sp)
	lw      s5, 8(sp)
	lw      s6, 12(sp)
	lw      s7, 16(sp)
	addu    sp, 24

	la      t0, K0BASE
	addu    t1, t0, 0x4000
	subu    t1, 32
	mtc0    zero, C0_TAGLO
	mtc0    zero, C0_TAGHI
init_icache:
	cache   CACH_PI|C_IST, (t0)
	bltu    t0, t1, init_icache
	addu    t0, 32

	la      t0, K0BASE
	addu    t1, t0, 0x2000
	subu    t1, 16
init_dcache:
	cache   CACH_PD|C_IST, (t0)
	bltu    t0, t1, init_dcache
	addu    t0, 16

	b       load_ipl3
	nop

nmi:

	la      t0, K0BASE
	addu    t1, t0, 0x4000
	subu    t1, 32
	mtc0    zero, C0_TAGLO
	mtc0    zero, C0_TAGHI
ninit_icache:
	cache   CACH_PI|C_IST, (t0)
	bltu    t0, t1, ninit_icache
	addu    t0, 32

	la      t0, K0BASE
	addu    t1, t0, 0x2000
	subu    t1, 16
ninit_dcache:
	cache   CACH_PD|C_IWBINV, (t0)
	bltu    t0, t1, ninit_dcache
	addu    t0, 16

load_ipl3:
.set reorder

	la      t0, block17s
	la      t1, 0x000FFFFF
	and     t0, t1
	la      t2, PHYS_TO_K1(SP_DMEM_START)
	li      t3, 0xFFF00000
	and     t2, t3
	or      t0, t2
	la      t3, pifipl3e
	and     t3, t1
	or      t3, t2
	la      t1, K0_TO_K1(0x80000000)
send2:
	lw      t5, (t0)
	sw      t5, (t1)
	addu    t0, 4
	addu    t1, 4
	bltu    t0, t3, send2

	la      t4, 0x80000000
	j       t4

block17s:

	lui     t3, cart_rom
cart:

	lw      t1, 0x08(t3)
	li      t2, 0x1FFFFFFF
	and     t1, t2
	sw      t1, PHYS_TO_K1(PI_DRAM_ADDR_REG)

waitread:
	lw      t0, PHYS_TO_K1(PI_STATUS_REG)
	and     t0, PI_STATUS_IO_BUSY
	bnez    t0, waitread

	li      t0, 0x1000
	add     t0, t3
	and     t0, t2
	sw      t0, PHYS_TO_K1(PI_CART_ADDR_REG)
	la      t2, 0x100000-1
	sw      t2, PHYS_TO_K1(PI_WR_LEN_REG)

waitdma:
.set noreorder
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
.set reorder
	lw      t3, PHYS_TO_K1(PI_STATUS_REG)
	and     t3, PI_STATUS_DMA_BUSY
	bnez    t3, waitdma

	/* checksum */

	lui     t3, cart_rom
1: # cart

	lw      a0, 8(t3)
	move    a1, s6

1: # checksum
	subu    sp, 32
	sw      ra, 28(sp)
	sw      s0, 20(sp)

	li      ra, 0x100000
	move    v1, zero
	move    t0, zero
	move    t1, a0
	mul     v0, a1, 0x5D588B65
	addu    v0, 1
	move    a3, v0
	move    t2, v0
	move    t3, v0
	move    s0, v0
	move    a2, v0
	move    t4, v0
	li      t5, 32

3:
	lw      v0, (t1)
	addu    v1, a3, v0
	move    a1, v1
	bgeu    v1, a3, 1f
	addu    t2, 1
1:
	and     v1, v0, 31
	subu    t7, t5, v1
	srlv    t8, v0, t7
	sllv    t6, v0, v1
	or      a0, t6, t8
	move    a3, a1
	xor     t3, v0
	addu    s0, a0
	bgeu    a2, v0, 1f
	xor     t9, a3, v0
	xor     a2, t9, a2
	b       2f
1:
	xor     a2, a0
2:
	addu    t0, 4
	addu    t1, 4
	xor     t7, v0, s0
	addu    t4, t7, t4
	bne     t0, ra, 3b

	xor     t6, a3, t2
	xor     a3, t6, t3
	xor     t8, s0, a2
	xor     s0, t8, t4

	lui     t3, cart_rom
1: # cart

	lw      t0, 0x10(t3)
	bne     a3, t0, 1f
	lw      t0, 0x14(t3)
	bne     s0, t0, 1f
	bal     2f
1:
	bal     1b
2:
	lw      s0, 20(sp)
	lw      ra, 28(sp)
	addu    sp, 32

	lw      t1, PHYS_TO_K1(SP_PC_REG)
	beqz    t1, skip
	li      t2, SP_CLR_HALT|SP_SET_SSTEP
	sw      t2, PHYS_TO_K1(SP_STATUS_REG)
	sw      zero, PHYS_TO_K1(SP_PC_REG)
skip:
	li      t3, clear_rsp
	sw      t3, PHYS_TO_K1(SP_STATUS_REG)
	li      t0, clear_in_mask; \
	sw      t0, PHYS_TO_K1(MI_INTR_MASK_REG)
	sw      zero, PHYS_TO_K1(SI_STATUS_REG)
	sw      zero, PHYS_TO_K1(AI_STATUS_REG)
	li      t1, MI_CLR_DP_INTR; \
	sw      t1, PHYS_TO_K1(MI_MODE_REG)
	li      t1, PI_STATUS_CLR_INTR
	sw      t1, PHYS_TO_K1(PI_STATUS_REG); \
	li      t0, 0xA0000300
	sw      s4, 0x00(t0); \
	sw      s3, 0x04(t0); \
	sw      s5, 0x0C(t0); \
	sw      s7, 0x14(t0)
	beqz    s3, rom
	la      t1, PHYS_TO_K1(PI_DOM1_ADDR1)
	b       1f
rom:
	la      t1, PHYS_TO_K1(PI_DOM1_ADDR2)
1:
	sw      t1, 0x08(t0)

	la      t0, PHYS_TO_K1(SP_DMEM_START)
	add     t1, t0, 0x1000
del_dmem:
	sw      zero, (t0)
	addu    t0, 4
	bne     t0, t1, del_dmem

	la      t0, PHYS_TO_K1(SP_IMEM_START)
	add     t1, t0, 0x1000
del_imem:
	sw      zero, (t0)
	addu    t0, 4
	bne     t0, t1, del_imem

	lui     t3, cart_rom
game:

	lw      t1, 8(t3)
	j       t1

pifipl3e:
.set noreorder
	nop
.set reorder
END(IPL3)

LEAF(InitCCValue)
	subu    sp, 160
	sw      v0, 0(sp); \
	sw      v1, 4(sp); \
	sw      a0, 8(sp); \
	sw      a1, 12(sp); \
	sw      a2, 16(sp); \
	sw      a3, 20(sp); \
	sw      t0, 24(sp); \
	sw      t1, 28(sp); \
	sw      t2, 32(sp); \
	sw      t3, 36(sp); \
	sw      t4, 40(sp); \
	sw      t5, 44(sp); \
	sw      t6, 48(sp); \
	sw      t7, 52(sp); \
	sw      t8, 56(sp); \
	sw      t9, 60(sp); \
	sw      s0, 64(sp); \
	sw      s1, 68(sp); \
	sw      s2, 72(sp); \
	sw      s3, 76(sp); \
	sw      s4, 80(sp); \
	sw      s5, 84(sp); \
	sw      s6, 88(sp); \
	sw      s7, 92(sp); \
	sw      s8, 96(sp); \
	sw      ra, 100(sp); \
	move    s0, zero; \
	move    s1, zero
CCloop1:
	jal     FindCC
	addu    s0, 1
	addu    s1, v0
	slt     t1, s0, 4
	bnez    t1, CCloop1
	srl     a0, s1, 2
	li      a1, 1
	jal     WriteCC
	srl     v0, s1, 2
	lw      v1, 4(sp); \
	lw      a0, 8(sp); \
	lw      a1, 12(sp); \
	lw      a2, 16(sp); \
	lw      a3, 20(sp); \
	lw      t0, 24(sp); \
	lw      t1, 28(sp); \
	lw      t2, 32(sp); \
	lw      t3, 36(sp); \
	lw      t4, 40(sp); \
	lw      t5, 44(sp); \
	lw      t6, 48(sp); \
	lw      t7, 52(sp); \
	lw      t8, 56(sp); \
	lw      t9, 60(sp); \
	lw      s0, 64(sp); \
	lw      s1, 68(sp); \
	lw      s2, 72(sp); \
	lw      s3, 76(sp); \
	lw      s4, 80(sp); \
	lw      s5, 84(sp); \
	lw      s6, 88(sp); \
	lw      s7, 92(sp); \
	lw      s8, 96(sp); \
	lw      ra, 100(sp)
	addu    sp, 160
	j       ra
END(InitCCValue)

LEAF(FindCC)
	subu    sp, 32
	sw      ra, 28(sp)
	move    t1, zero
	move    t3, zero
	move    t4, zero
prepass_loop:
	slt     k0, t4, 64
	beqz    k0, done_findcc
	move    a0, t4
	jal     TestCCValue
	blez    v0, next_pass
	subu    k0, v0, t1
	multu   k0, t4
	mflo    k0
	addu    t3, k0
	move    t1, v0
next_pass:
	addu    t4, 1
	slt     k0, t1, 80
	bnez    k0, prepass_loop
	sll     a0, t3, 2
	subu    a0, t3
	sll     a0, 2
	subu    a0, t3
	sll     a0, 1
	subu    a0, 880
	jal     ConvertManualToAuto
	b       return_findcc
done_findcc:
	move    v0, zero
return_findcc:
	lw      ra, 28(sp)
	addu    sp, 32
	j       ra
END(FindCC)

LEAF(TestCCValue)
	subu    sp, 40
	sw      ra, 28(sp)
	move    v0, zero
	li      a1, 2
	jal     WriteCC
	move    fp, zero
jloop:
	li      k0, -1
	sw      k0, 0x0000(s4)
	sw      k0, 0x0000(s4)
	sw      k0, 0x0004(s4)
	lw      v1, 0x0004(s4)
	srl     v1, 16
	move    gp, zero
kloop:
	and     k0, v1, 1
	beqz    k0, no_passcount
	addu    v0, 1
no_passcount:
	srl     v1, 1
	addu    gp, 1
	slt     k0, gp, 8
	bnez    k0, kloop
	addu    fp, 1
	slt     k0, fp, 10
	bnez    k0, jloop
	lw      ra, 28(sp)
	addu    sp, 40
	j       ra
END(TestCCValue)

LEAF(ConvertManualToAuto)
	subu    sp, 40
	sw      ra, 28(sp)
	sw      a0, 32(sp)
	move    t0, zero; \
	move    t2, zero; \
	li      t5, 51200; \
	sb      zero, 39(sp)
	move    t6, zero
big_loop:
	slt     k0, t6, 64
	bnez    k0, coverloop
	move    v0, zero
	b       convert_done
coverloop:
	move    a0, t6
	li      a1, 1
	jal     WriteCC
	addu    a0, sp, 39
	jal     ReadCC
	addu    a0, sp, 39
	jal     ReadCC
	lbu     k0, 39(sp)
	li      k1, 800
	multu   k0, k1
	mflo    t0
	lw      a0, 32(sp)
	subu    k0, t0, a0
	bgez    k0, pos
	subu    k0, a0, t0
pos:
	slt     k1, k0, t5
	beqz    k1, compare_done
	move    t5, k0
	move    t2, t6
compare_done:
	lw      a0, 32(sp)
	slt     k1, t0, a0
	beqz    k1, return_value
	addu    t6, 1
	slt     k1, t6, 65
	bnez    k1, big_loop
return_value:
	addu    v0, t2, t6
	srl     v0, 1
convert_done:
	lw      ra, 28(sp)
	addu    sp, 40
	j       ra
END(ConvertManualToAuto)

LEAF(WriteCC)
	subu    sp, 40
	sw      ra, 28(sp); \
	li      t7, 0x46000000; \
	and     a0, 0xFF; \
	xori    a0, 0x3F
	li      k1, 1
	bne     a1, k1, non_auto
	li      k0, 0x80000000
	or      t7, k0
non_auto:
	and     k0, a0, 1 << 0
	sll     k0, 6
	or      t7, k0
	and     k0, a0, 1 << 1
	sll     k0, 13
	or      t7, k0
	and     k0, a0, 1 << 2
	sll     k0, 20
	or      t7, k0
	and     k0, a0, 1 << 3
	sll     k0, 4
	or      t7, k0
	and     k0, a0, 1 << 4
	sll     k0, 11
	or      t7, k0
	and     k0, a0, 1 << 5
	sll     k0, 18
	or      t7, k0
	sw      t7, (s5)
	li      k1, 1
	bne     a1, k1, write_done
	lui     k0, 0xA430
	sw      zero, 0x00(k0)
write_done:
	lw      ra, 28(sp)
	addu    sp, 40
	j       ra
END(WriteCC)

LEAF(ReadCC)
	subu    sp, 40
	sw      ra, 28(sp)
	move    fp, zero; \
	li      k0, 0x2000; \
	lui     k1, 0xA430; \
	sw      k0, 0x00(k1)
	lw      fp, (s5)
	li      k0, 0x1000
	sw      k0, 0(k1)
	move    k0, zero; \
	li      k1, 1 << 6; \
	and     k1, fp; \
	srl     k1, 6
	or      k0, k1
	li      k1, 1 << 14
	and     k1, fp
	srl     k1, 13
	or      k0, k1
	li      k1, 1 << 22
	and     k1, fp
	srl     k1, 20
	or      k0, k1
	li      k1, 1 << 7
	and     k1, fp
	srl     k1, 4
	or      k0, k1
	li      k1, 1 << 15
	and     k1, fp
	srl     k1, 11
	or      k0, k1
	li      k1, 1 << 23
	and     k1, fp
	srl     k1, 18
	or      k0, k1
	sb      k0, (a0)
	lw      ra, 28(sp)
	addu    sp, 40
	j       ra
END(ReadCC)
