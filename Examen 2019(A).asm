	.data
vec:	.float	3.2,0.5,6.7,2.4
veclen:	.word	4
max:	.float	0.0
esp:	.byte	' '
texto:	.asciiz	"Maximo: "
	.text
	lw	$s0,veclen($zero)
	l.s	$f1,vec($zero)
	l.s	$f2,max($zero)
	add	$t2,$zero,$zero
while:	bge	$t2,$s0,Exit
	sll	$t0,$t2,2
	l.s	$f1,vec($t0)
	
	mov.s	$f12,$f1
	addi	$v0,$zero,2	
	syscall	
	
	addi	$v0,$zero,11
	lb	$a0,esp($zero)
	syscall
	
	addi	$t2,$t2,1
	j	while
Exit:	nop
	
