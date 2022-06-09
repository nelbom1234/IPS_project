	.text	0x00400000
	.globl	main
	la	$28, _heap_
	la	$4, _a__str__8_
# was:	la	_a__str__8__addr, _a__str__8_
	ori	$3, $0, 1
# was:	ori	_a__str__8__init, $0, 1
	sw	$3, 0($4)
# was:	sw	_a__str__8__init, 0(_a__str__8__addr)
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
# Function write_nl
write_nl:
	sw	$31, -4($29)
	sw	$16, -8($29)
	addi	$29, $29, -12
# 	ori	_param_b_1_,$2,0
	ori	$16, $2, 0
# was:	ori	_tmp_4_, _param_b_1_, 0
# 	ori	_letBind_3_,_tmp_4_,0
	la	$2, _true
# was:	la	$2, _true
	bne	$16, $0, _wBoolF_5_
# was:	bne	_letBind_3_, $0, _wBoolF_5_
	la	$2, _false
# was:	la	$2, _false
_wBoolF_5_:
	jal	putstring
# was:	jal	putstring, $2
	la	$2, _a__str__8_
# was:	la	_tmp_7_, _a__str__8_
# _a__str__8_: string "\n"
# 	ori	_letBind_6_,_tmp_7_,0
# 	ori	$2,_tmp_7_,0
	jal	putstring
# was:	jal	putstring, $2
	ori	$2, $16, 0
# was:	ori	_write_nlres_2_, _letBind_3_, 0
# 	ori	$2,_write_nlres_2_,0
	addi	$29, $29, 12
	lw	$16, -8($29)
	lw	$31, -4($29)
	jr	$31
# Function main
main:
	sw	$31, -4($29)
	sw	$18, -16($29)
	sw	$17, -12($29)
	sw	$16, -8($29)
	addi	$29, $29, -20
	ori	$3, $0, 3
# was:	ori	_divide_L_14_, $0, 3
	ori	$2, $0, 2
# was:	ori	_divide_R_15_, $0, 2
	div	$4, $3, $2
# was:	div	_eq_L_12_, _divide_L_14_, _divide_R_15_
	ori	$2, $0, 1
# was:	ori	_eq_R_13_, $0, 1
	ori	$3, $0, 0
# was:	ori	_arg_11_, $0, 0
	bne	$4, $2, _false_16_
# was:	bne	_eq_L_12_, _eq_R_13_, _false_16_
	ori	$3, $0, 1
# was:	ori	_arg_11_, $0, 1
_false_16_:
	ori	$2, $3, 0
# was:	ori	$2, _arg_11_, 0
	jal	write_nl
# was:	jal	write_nl, $2
	ori	$18, $2, 0
# was:	ori	_letBind_10_, $2, 0
	ori	$2, $0, 3
# was:	ori	_negate_23_, $0, 3
	sub	$3, $0, $2
# was:	sub	_divide_L_21_, $0, _negate_23_
	ori	$2, $0, 2
# was:	ori	_divide_R_22_, $0, 2
	div	$3, $3, $2
# was:	div	_eq_L_19_, _divide_L_21_, _divide_R_22_
	ori	$2, $0, 2
# was:	ori	_negate_24_, $0, 2
	sub	$2, $0, $2
# was:	sub	_eq_R_20_, $0, _negate_24_
	ori	$4, $0, 0
# was:	ori	_arg_18_, $0, 0
	bne	$3, $2, _false_25_
# was:	bne	_eq_L_19_, _eq_R_20_, _false_25_
	ori	$4, $0, 1
# was:	ori	_arg_18_, $0, 1
_false_25_:
	ori	$2, $4, 0
# was:	ori	$2, _arg_18_, 0
	jal	write_nl
# was:	jal	write_nl, $2
	ori	$16, $2, 0
# was:	ori	_letBind_17_, $2, 0
	ori	$2, $0, 3
# was:	ori	_divide_L_30_, $0, 3
	ori	$3, $0, 2
# was:	ori	_negate_32_, $0, 2
	sub	$3, $0, $3
# was:	sub	_divide_R_31_, $0, _negate_32_
	div	$3, $2, $3
# was:	div	_eq_L_28_, _divide_L_30_, _divide_R_31_
	ori	$2, $0, 2
# was:	ori	_negate_33_, $0, 2
	sub	$2, $0, $2
# was:	sub	_eq_R_29_, $0, _negate_33_
	ori	$4, $0, 0
# was:	ori	_arg_27_, $0, 0
	bne	$3, $2, _false_34_
# was:	bne	_eq_L_28_, _eq_R_29_, _false_34_
	ori	$4, $0, 1
# was:	ori	_arg_27_, $0, 1
_false_34_:
	ori	$2, $4, 0
# was:	ori	$2, _arg_27_, 0
	jal	write_nl
# was:	jal	write_nl, $2
	ori	$17, $2, 0
# was:	ori	_letBind_26_, $2, 0
	ori	$2, $0, 3
# was:	ori	_negate_41_, $0, 3
	sub	$2, $0, $2
# was:	sub	_divide_L_39_, $0, _negate_41_
	ori	$3, $0, 2
# was:	ori	_negate_42_, $0, 2
	sub	$3, $0, $3
# was:	sub	_divide_R_40_, $0, _negate_42_
	div	$4, $2, $3
# was:	div	_eq_L_37_, _divide_L_39_, _divide_R_40_
	ori	$2, $0, 1
# was:	ori	_eq_R_38_, $0, 1
	ori	$3, $0, 0
# was:	ori	_arg_36_, $0, 0
	bne	$4, $2, _false_43_
# was:	bne	_eq_L_37_, _eq_R_38_, _false_43_
	ori	$3, $0, 1
# was:	ori	_arg_36_, $0, 1
_false_43_:
	ori	$2, $3, 0
# was:	ori	$2, _arg_36_, 0
	jal	write_nl
# was:	jal	write_nl, $2
# 	ori	_letBind_35_,$2,0
# 	ori	_and_L_49_,_letBind_10_,0
	ori	$3, $0, 0
# was:	ori	_and_L_47_, $0, 0
	beq	$3, $18, _false_51_
# was:	beq	_and_L_47_, _and_L_49_, _false_51_
# 	ori	_and_R_50_,_letBind_17_,0
	beq	$3, $16, _false_51_
# was:	beq	_and_L_47_, _and_R_50_, _false_51_
	ori	$3, $0, 1
# was:	ori	_and_L_47_, $0, 1
_false_51_:
	ori	$4, $0, 0
# was:	ori	_and_L_45_, $0, 0
	beq	$4, $3, _false_52_
# was:	beq	_and_L_45_, _and_L_47_, _false_52_
# 	ori	_and_R_48_,_letBind_26_,0
	beq	$4, $17, _false_52_
# was:	beq	_and_L_45_, _and_R_48_, _false_52_
	ori	$4, $0, 1
# was:	ori	_and_L_45_, $0, 1
_false_52_:
	ori	$3, $0, 0
# was:	ori	_arg_44_, $0, 0
	beq	$3, $4, _false_53_
# was:	beq	_arg_44_, _and_L_45_, _false_53_
# 	ori	_and_R_46_,_letBind_35_,0
	beq	$3, $2, _false_53_
# was:	beq	_arg_44_, _and_R_46_, _false_53_
	ori	$3, $0, 1
# was:	ori	_arg_44_, $0, 1
_false_53_:
	ori	$2, $3, 0
# was:	ori	$2, _arg_44_, 0
	jal	write_nl
# was:	jal	write_nl, $2
# 	ori	_mainres_9_,$2,0
# 	ori	$2,_mainres_9_,0
	addi	$29, $29, 20
	lw	$18, -16($29)
	lw	$17, -12($29)
	lw	$16, -8($29)
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
_a__str__8_:
	.space	4
	.asciiz	"\n"
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