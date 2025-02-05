	.data
radio:	.float	0
pi:	.float	3.14
area:	.float	0
texto: .asciiz "\nArea: "
	.text	
inicio:	addi	$v0,$zero,6
	syscall
	s.s	$f0,radio($zero)
	
	l.s	$f1,pi($zero)
	mul.s	$f0,$f0,$f0
	mul.s	$f2,$f0,$f1
	s.s	$f2,area($zero)
	
	la	$a0,texto($zero)
	addi	$v0,$zero,4
	syscall			#Imprime "area: "
	
	mov.s	$f12,$f2
	addi	$v0,$zero,2	#Imprime valor area
	syscall
	
	nop