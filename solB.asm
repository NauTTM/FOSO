		.data
secreta:	.byte	58,112,94,99,101,97  
length:		.word	6
txtlen:		.asciiz	"\nLongitud: "
txtsec:		.asciiz	"\nPalabra secreta: "
claves:		.word	11,8,3,10,0,13,2,5,7,8
palabra:	.space	10
fincad:		.byte	'\0'
txtsecdes:	.asciiz	"\nPalabra secreta descifrada: "
		.text
		lw	$s1,length($zero)
		add	$s0,$zero,$zero
buc:		lb	$s1,secreta($s0)
		beq	$s1,$zero,finbuc	
		sll	$t0,$s0,2
		lw	$s2,claves($t0)
		add	$s3,$s1,$s2
		sb	$s3,palabra($s0)
		addi	$s0,$s0,1		
		j	buc								
finbuc:		li	$v0,4
		la	$a0,txtsec
		syscall
		la	$a0,secreta
		syscall
		la	$a0,txtsec
		syscall
		la	$a0,palabra
		syscall
		
