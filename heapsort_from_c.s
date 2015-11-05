	.file	1 "heapsort.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.gnu_attribute 4, 1
	.text
	.align	2
	.globl	bubble_down
	.set	nomips16
	.set	nomicromips
	.ent	bubble_down
	.type	bubble_down, @function
bubble_down:
	.frame	$fp,24,$31		# vars= 16, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-24
	sw	$fp,20($sp)
	move	$fp,$sp
	sw	$4,24($fp)
	sw	$5,28($fp)
	sw	$6,32($fp)
	lw	$2,28($fp)
	nop
	sw	$2,0($fp)
	lw	$2,0($fp)
	nop
	sll	$2,$2,1
	addiu	$2,$2,1
	sw	$2,4($fp)
	lw	$3,4($fp)
	lw	$2,32($fp)
	nop
	slt	$2,$2,$3
	beq	$2,$0,$L2
	nop

	j	$L1
	nop

$L2:
	lw	$3,4($fp)
	lw	$2,32($fp)
	nop
	slt	$2,$3,$2
	beq	$2,$0,$L4
	nop

	lw	$2,4($fp)
	nop
	sll	$2,$2,2
	lw	$3,24($fp)
	nop
	addu	$2,$3,$2
	lw	$3,0($2)
	lw	$2,4($fp)
	nop
	addiu	$2,$2,1
	sll	$2,$2,2
	lw	$4,24($fp)
	nop
	addu	$2,$4,$2
	lw	$2,0($2)
	nop
	slt	$2,$3,$2
	beq	$2,$0,$L4
	nop

	lw	$2,4($fp)
	nop
	addiu	$2,$2,1
	sw	$2,4($fp)
$L4:
	lw	$2,0($fp)
	nop
	sll	$2,$2,2
	lw	$3,24($fp)
	nop
	addu	$2,$3,$2
	lw	$3,0($2)
	lw	$2,4($fp)
	nop
	sll	$2,$2,2
	lw	$4,24($fp)
	nop
	addu	$2,$4,$2
	lw	$2,0($2)
	nop
	slt	$2,$3,$2
	beq	$2,$0,$L5
	nop

	lw	$2,0($fp)
	nop
	sll	$2,$2,2
	lw	$3,24($fp)
	nop
	addu	$2,$3,$2
	lw	$2,0($2)
	nop
	sw	$2,8($fp)
	lw	$2,0($fp)
	nop
	sll	$2,$2,2
	lw	$3,24($fp)
	nop
	addu	$2,$3,$2
	lw	$3,4($fp)
	nop
	sll	$3,$3,2
	lw	$4,24($fp)
	nop
	addu	$3,$4,$3
	lw	$3,0($3)
	nop
	sw	$3,0($2)
	lw	$2,4($fp)
	nop
	sll	$2,$2,2
	lw	$3,24($fp)
	nop
	addu	$2,$3,$2
	lw	$3,8($fp)
	nop
	sw	$3,0($2)
	lw	$2,4($fp)
	nop
	sw	$2,0($fp)
	j	$L7
	nop

$L5:
	j	$L1
	nop

$L7:
	lw	$2,0($fp)
	nop
	sll	$2,$2,1
	addiu	$2,$2,1
	sw	$2,4($fp)
	lw	$3,4($fp)
	lw	$2,32($fp)
	nop
	slt	$2,$2,$3
	beq	$2,$0,$L2
	nop

	nop
$L1:
	move	$sp,$fp
	lw	$fp,20($sp)
	addiu	$sp,$sp,24
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	bubble_down
	.size	bubble_down, .-bubble_down
	.align	2
	.globl	make_heap
	.set	nomips16
	.set	nomicromips
	.ent	make_heap
	.type	make_heap, @function
make_heap:
	.frame	$fp,32,$31		# vars= 8, regs= 2/0, args= 16, gp= 0
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-32
	sw	$31,28($sp)
	sw	$fp,24($sp)
	move	$fp,$sp
	sw	$4,32($fp)
	sw	$5,36($fp)
	lw	$2,36($fp)
	nop
	addiu	$2,$2,-1
	srl	$3,$2,31
	addu	$2,$3,$2
	sra	$2,$2,1
	sw	$2,16($fp)
	lw	$2,16($fp)
	nop
	bgez	$2,$L9
	nop

	j	$L8
	nop

$L9:
	lw	$2,36($fp)
	nop
	addiu	$2,$2,-1
	lw	$4,32($fp)
	lw	$5,16($fp)
	move	$6,$2
	jal	bubble_down
	nop

	lw	$2,16($fp)
	nop
	addiu	$2,$2,-1
	sw	$2,16($fp)
	lw	$2,16($fp)
	nop
	bgez	$2,$L9
	nop

	nop
$L8:
	move	$sp,$fp
	lw	$31,28($sp)
	lw	$fp,24($sp)
	addiu	$sp,$sp,32
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	make_heap
	.size	make_heap, .-make_heap
	.align	2
	.globl	heapsort
	.set	nomips16
	.set	nomicromips
	.ent	heapsort
	.type	heapsort, @function
heapsort:
	.frame	$fp,32,$31		# vars= 8, regs= 2/0, args= 16, gp= 0
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-32
	sw	$31,28($sp)
	sw	$fp,24($sp)
	move	$fp,$sp
	sw	$4,32($fp)
	sw	$5,36($fp)
	lw	$2,36($fp)
	nop
	addiu	$2,$2,-1
	sw	$2,16($fp)
	lw	$2,16($fp)
	nop
	bgtz	$2,$L12
	nop

	j	$L11
	nop

$L12:
	lw	$4,32($fp)
	lw	$5,36($fp)
	jal	make_heap
	nop

$L14:
	lw	$2,32($fp)
	nop
	lw	$2,0($2)
	nop
	sw	$2,20($fp)
	lw	$2,16($fp)
	nop
	sll	$2,$2,2
	lw	$3,32($fp)
	nop
	addu	$2,$3,$2
	lw	$3,0($2)
	lw	$2,32($fp)
	nop
	sw	$3,0($2)
	lw	$2,16($fp)
	nop
	sll	$2,$2,2
	lw	$3,32($fp)
	nop
	addu	$2,$3,$2
	lw	$3,20($fp)
	nop
	sw	$3,0($2)
	lw	$2,16($fp)
	nop
	addiu	$2,$2,-1
	sw	$2,16($fp)
	lw	$4,32($fp)
	move	$5,$0
	lw	$6,16($fp)
	jal	bubble_down
	nop

	lw	$2,16($fp)
	nop
	bgtz	$2,$L14
	nop

	nop
$L11:
	move	$sp,$fp
	lw	$31,28($sp)
	lw	$fp,24($sp)
	addiu	$sp,$sp,32
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	heapsort
	.size	heapsort, .-heapsort
	.rdata
	.align	2
$LC1:
	.ascii	"%d\012\000"
	.align	2
$LC0:
	.word	54
	.word	23
	.word	56
	.word	32
	.word	99
	.word	7
	.word	4
	.word	2
	.word	88
	.word	9
	.word	11
	.word	21
	.word	39
	.word	55
	.word	100
	.word	101
	.word	43
	.word	1
	.word	3
	.word	69
	.word	-5
	.word	-24
	.word	-17
	.word	0
	.text
	.align	2
	.globl	main
	.set	nomips16
	.set	nomicromips
	.ent	main
	.type	main, @function
main:
	.frame	$fp,128,$31		# vars= 104, regs= 2/0, args= 16, gp= 0
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-128
	sw	$31,124($sp)
	sw	$fp,120($sp)
	move	$fp,$sp
	sw	$4,128($fp)
	sw	$5,132($fp)
	lui	$2,%hi($LC0)
	addiu	$4,$fp,20
	addiu	$3,$2,%lo($LC0)
	li	$2,96			# 0x60
	move	$5,$3
	move	$6,$2
	jal	memcpy
	nop

	addiu	$2,$fp,20
	move	$4,$2
	li	$5,24			# 0x18
	jal	heapsort
	nop

	sw	$0,16($fp)
	j	$L16
	nop

$L17:
	lw	$2,16($fp)
	nop
	sll	$2,$2,2
	addiu	$3,$fp,16
	addu	$2,$3,$2
	lw	$3,4($2)
	lui	$2,%hi($LC1)
	addiu	$4,$2,%lo($LC1)
	move	$5,$3
	jal	printf
	nop

	lw	$2,16($fp)
	nop
	addiu	$2,$2,1
	sw	$2,16($fp)
$L16:
	lw	$2,16($fp)
	nop
	slt	$2,$2,24
	bne	$2,$0,$L17
	nop

	move	$2,$0
	move	$sp,$fp
	lw	$31,124($sp)
	lw	$fp,120($sp)
	addiu	$sp,$sp,128
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	main
	.size	main, .-main
	.ident	"GCC: (GNU) 4.9.2 20141030 (RTEMS 4.11, RSB dbb78dc8549af5bbc029ea0049f5cb45be239951-modified, Newlib b75c57950318ed657807f87a4c694e7b8d68fcae)"
