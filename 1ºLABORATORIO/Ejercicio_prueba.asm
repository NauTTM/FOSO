	.data
cadena:	.space	64

	.text
main:
	#scanf
	addi $v0, $zero, 8	#li	$v0,8
	la	$a0,cadena
	addi	$a1, $zero, 64
	syscall
	
	#printf
	addi	$v0, $zero, 4
	syscall
end:	nop
