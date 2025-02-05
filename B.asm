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