		.data
file:	.asciiz	"Asimov.txt"
idfile:	.word	-1
txterr:	.asciiz	"Error al abrir el archivo"
buffer:	.space	1
fincad:	.byte	'\0'
indexcar:	.word	0,0,0,0,0,0,0 #Suponemos que archivo no tiene más de 7 líneas
ncarlin:	.word	0,0,0,0,0,0,0
nlin:	.word	0
ncar:	.word	0