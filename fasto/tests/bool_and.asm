	.text	0x00400000
	.globl	main
	la	$28, _heap_
	la	$4, _true
# was:	la	_true_addr, _true
	ori	$3, $0, 4
# was:	ori	_true_init, $0, 4
	sw	$3, 0($4)
# was:	sw	_true_init, 0(_true_addr)
	la	$3, _false
# was:	la	_false_addr, _false
	ori	$4, $0, 5
# was:	ori	_false_init, $0, 5
	sw	$4, 0($3)
# was:	sw	_false_init, 0(_false_addr)
	jal	main
_stop_:
	ori	$2, $0, 10
	syscall
# Function main
main:
	sw	$31, -4($29)
	addi	$29, $29, -8
	ori	$2, $0, 0
# was:	ori	_and_L_4_, $0, 0
	ori	$3, $0, 0
# was:	ori	_tmp_3_, $0, 0
	beq	$3, $2, _false_6_
# was:	beq	_tmp_3_, _and_L_4_, _false_6_
	ori	$2, $0, 0
# was:	ori	_and_R_5_, $0, 0
	beq	$3, $2, _false_6_
# was:	beq	_tmp_3_, _and_R_5_, _false_6_
	ori	$3, $0, 1
# was:	ori	_tmp_3_, $0, 1
_false_6_:
# 	ori	_letBind_2_,_tmp_3_,0
	la	$2, _true
# was:	la	$2, _true
	bne	$3, $0, _wBoolF_7_
# was:	bne	_letBind_2_, $0, _wBoolF_7_
	la	$2, _false
# was:	la	$2, _false
_wBoolF_7_:
	jal	putstring
# was:	jal	putstring, $2
	ori	$3, $0, 1
# was:	ori	_and_L_10_, $0, 1
	ori	$2, $0, 0
# was:	ori	_tmp_9_, $0, 0
	beq	$2, $3, _false_12_
# was:	beq	_tmp_9_, _and_L_10_, _false_12_
	ori	$3, $0, 0
# was:	ori	_and_R_11_, $0, 0
	beq	$2, $3, _false_12_
# was:	beq	_tmp_9_, _and_R_11_, _false_12_
	ori	$2, $0, 1
# was:	ori	_tmp_9_, $0, 1
_false_12_:
	ori	$3, $2, 0
# was:	ori	_letBind_8_, _tmp_9_, 0
	la	$2, _true
# was:	la	$2, _true
	bne	$3, $0, _wBoolF_13_
# was:	bne	_letBind_8_, $0, _wBoolF_13_
	la	$2, _false
# was:	la	$2, _false
_wBoolF_13_:
	jal	putstring
# was:	jal	putstring, $2
	ori	$3, $0, 0
# was:	ori	_and_L_16_, $0, 0
	ori	$2, $0, 0
# was:	ori	_tmp_15_, $0, 0
	beq	$2, $3, _false_18_
# was:	beq	_tmp_15_, _and_L_16_, _false_18_
	ori	$3, $0, 1
# was:	ori	_and_R_17_, $0, 1
	beq	$2, $3, _false_18_
# was:	beq	_tmp_15_, _and_R_17_, _false_18_
	ori	$2, $0, 1
# was:	ori	_tmp_15_, $0, 1
_false_18_:
	ori	$3, $2, 0
# was:	ori	_letBind_14_, _tmp_15_, 0
	la	$2, _true
# was:	la	$2, _true
	bne	$3, $0, _wBoolF_19_
# was:	bne	_letBind_14_, $0, _wBoolF_19_
	la	$2, _false
# was:	la	$2, _false
_wBoolF_19_:
	jal	putstring
# was:	jal	putstring, $2
	ori	$3, $0, 1
# was:	ori	_and_L_22_, $0, 1
	ori	$2, $0, 0
# was:	ori	_tmp_21_, $0, 0
	beq	$2, $3, _false_24_
# was:	beq	_tmp_21_, _and_L_22_, _false_24_
	ori	$3, $0, 1
# was:	ori	_and_R_23_, $0, 1
	beq	$2, $3, _false_24_
# was:	beq	_tmp_21_, _and_R_23_, _false_24_
	ori	$2, $0, 1
# was:	ori	_tmp_21_, $0, 1
_false_24_:
	ori	$3, $2, 0
# was:	ori	_letBind_20_, _tmp_21_, 0
	la	$2, _true
# was:	la	$2, _true
	bne	$3, $0, _wBoolF_25_
# was:	bne	_letBind_20_, $0, _wBoolF_25_
	la	$2, _false
# was:	la	$2, _false
_wBoolF_25_:
	jal	putstring
# was:	jal	putstring, $2
	ori	$2, $0, 0
# was:	ori	_mainres_1_, $0, 0
# 	ori	$2,_mainres_1_,0
	addi	$29, $29, 8
	lw	$31, -4($29)
	jr	$31
ord:
	jr	$31
chr:
	andi	$2, $2, 255
	jr	$31
putint:
	addi	$29, $29, -8
	sw	$2, 0($29)
	sw	$4, 4($29)
	ori	$4, $2, 0
	ori	$2, $0, 1
	syscall
	ori	$2, $0, 4
	la	$4, _space_
	syscall
	lw	$2, 0($29)
	lw	$4, 4($29)
	addi	$29, $29, 8
	jr	$31
getint:
	ori	$2, $0, 5
	syscall
	jr	$31
putchar:
	addi	$29, $29, -8
	sw	$2, 0($29)
	sw	$4, 4($29)
	ori	$4, $2, 0
	ori	$2, $0, 11
	syscall
	ori	$2, $0, 4
	la	$4, _space_
	syscall
	lw	$2, 0($29)
	lw	$4, 4($29)
	addi	$29, $29, 8
	jr	$31
getchar:
	addi	$29, $29, -8
	sw	$4, 0($29)
	sw	$5, 4($29)
	ori	$2, $0, 12
	syscall
	ori	$5, $2, 0
	ori	$2, $0, 4
	la	$4, _cr_
	syscall
	ori	$2, $5, 0
	lw	$4, 0($29)
	lw	$5, 4($29)
	addi	$29, $29, 8
	jr	$31
putstring:
	addi	$29, $29, -16
	sw	$2, 0($29)
	sw	$4, 4($29)
	sw	$5, 8($29)
	sw	$6, 12($29)
	lw	$4, 0($2)
	addi	$5, $2, 4
	add	$6, $5, $4
	ori	$2, $0, 11
putstring_begin:
	sub	$4, $5, $6
	bgez	$4, putstring_done
	lb	$4, 0($5)
	syscall
	addi	$5, $5, 1
	j	putstring_begin
putstring_done:
	lw	$2, 0($29)
	lw	$4, 4($29)
	lw	$5, 8($29)
	lw	$6, 12($29)
	addi	$29, $29, 16
	jr	$31
_RuntimeError_:
	la	$4, _ErrMsg_
	ori	$2, $0, 4
	syscall
	ori	$4, $5, 0
	ori	$2, $0, 1
	syscall
	la	$4, _colon_space_
	ori	$2, $0, 4
	syscall
	ori	$4, $6, 0
	ori	$2, $0, 4
	syscall
	la	$4, _cr_
	ori	$2, $0, 4
	syscall
	j	_stop_
	.data	
# Fixed strings for I/O
_ErrMsg_:
	.asciiz	"Runtime error at line "
_colon_space_:
	.asciiz	": "
_cr_:
	.asciiz	"\n"
_space_:
	.asciiz	" "
# Message strings for specific errors
_Msg_IllegalArraySize_:
	.asciiz	"negative array size"
_Msg_IllegalIndex_:
	.asciiz	"array index out of bounds"
_Msg_DivZero_:
	.asciiz	"division by zero"
# String Literals
	.align	2
_true:
	.space	4
	.asciiz	"true"
	.align	2
_false:
	.space	4
	.asciiz	"false"
	.align	2
_heap_:
	.space	100000