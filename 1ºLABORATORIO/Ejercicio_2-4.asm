	.data
h:	.word	4
i:	.word	3
j:	.word	5
A:	.word	19,11,02,20,18,5,-3,6,452,0

	.text
	lw	$s1,	h($zero)	#Guardamos los valores en registros
	lw	$t1,	i($zero)	#"	"	"	"	"
	lw	$t2,	j($zero)	#"	"	"	"	"
	
	sll	$t0,$t1,2	#Buscamos la posicion del conjunto i
	lw	$s0,A($t0)	#y la guardamos
	
	sll	$t3,$t2,2	#Buscamos la posicion del conjunto j
	lw	$s4,A($t3)	#y la guardamos
	
	add	$s4,$s1,$s0
	sw	$s1,A($t0)
	nop