.data	
secreta:	.byte	58,112,94,99,101,97
length:		.word	0
txtlen:		.asciiz	"\nLongitud: "
txtsec:		.asciiz	"\nPalabra secreta: "
claves:		.word	11,8,3,10,0,13,2,5,7,8
palabra:	.space	10
fincad:		.byte	'\0'
txtsecdes:	.asciiz	"\nPalabra Secreta Descifrada: "
	.text
	lw	$s0,length($zero)
	add	$s1,$zero,$zero

while:	lb	$s0,secreta($s1)	
	beq	$s0,$zero,fin
	sll	$t0,$s1,2
	
	lw	$s2,claves($t0)
	add	$s3,$s2,$s0
	
	sb	$s3,palabra($s1)
	addi 	$s1,$s1,1
	j	while

fin:	la	$a0,txtsec($zero)
	addi	$v0,$zero,4
	syscall

	la	$a0,secreta($zero)
	addi	$v0,$zero,4
	syscall
	
	la	$a0,txtsecdes($zero)
	addi	$v0,$zero,4
	syscall
	
	la	$a0,palabra($zero)
	addi	$v0,$zero,4
	syscall
	
	
