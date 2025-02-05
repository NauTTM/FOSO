	.data
vec:	.double	3.2,0.5,6.7,2.4
veclen:	.word	4
max:	.double	0.0
esp:	.byte	' '
texto:	.asciiz	"Maximo: "
	.text
	lw	$s0,veclen($zero)
	l.d	$f0,vec($zero)
	l.d	$f2,max($zero)
	add	$t2,$zero,$zero
	
while:	bge	$t2,$s0,Exit
	sll	$t0,$t2,2
	l.d	$f0,vec($t0)
	
	mov.d	$f12,$f0
	addi	$v0,$zero,2	
	syscall	
	
	addi	$v0,$zero,11
	lb	$a0,esp($zero)
	syscall
	
	c.lt.d	$f2,$f0
	bc1t	maxi
	
compa:	addi	$t2,$t2,1
	j	while
maxi:	mov.d	$f2,$f0
	j	compa
Exit:	la	$a0,texto($zero)
	addi	$v0,$zero,4
	syscall	
	
	mov.d	$f12,$f2
	addi	$v0,$zero,2	
	syscall	
	nop
