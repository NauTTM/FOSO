	.data	
secreta:	.byte	58,112,94,99,101,97
length:		.word	0
txtlen:		.asciiz	"\nLongitud: "
txtsec:		.asciiz	"\nPalabra secreta: "
	.text
	lw	$s0,length($zero)
	add	$t0,$zero,$zero

while:	lb	$t0,secreta($s0)	
	beq	$t0,$zero,fin
	
	addi 	$s0,$s0,1
	j	while
	sw	$s0,length($zero)
	
	
fin:	la	$a0,txtlen($zero)
	addi	$v0,$zero,4
	syscall
	
	addi	$v0,$zero,1
	add	$a0,$zero,$s0
	syscall	
	
	la	$a0,txtsec($zero)
	addi	$v0,$zero,4
	syscall
	
	la	$a0,secreta($zero)
	addi	$v0,$zero,4
	syscall