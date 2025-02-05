	.data
h:	.word	4
i:	.word	0
j:	.word	5
A:	.word	10,11,02,20,18,5,-3,6,452,0
	.text
main:	lw	$s0,h($zero)

	addi	$v0,$zero,5
	syscall
	add	$s1,$zero,$v0
	
	sll	$t0,$s1,2
	lw	$s3,A($t0)
	add	$s3,$s0,$s3
	
	sw	$s3,A($t0)
	
	addi	$v0,$zero,1
	add	$a0,$zero,$s3
	syscall
fin:	nop