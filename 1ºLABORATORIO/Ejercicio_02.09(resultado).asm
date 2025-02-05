		.data
vecA:	.word	0,1,2
vecB:	.word	3,4,5
vecC: 	.word	0,0,0
veclon:	.word	3
esp:		.byte	' '

		.text
		add	$s0,$zero,$zero     
main:	lw	$s1,veclon($zero)	
while:	bge	$s0,$s1,finwh	
		sll	$t0,$s0,2	
		lw	$s2,vecA($t0)	
		lw	$s3,vecB($t0)
		
		mult	$s2,$s3
		mflo	$s4
		sw	$s4,vecC($t0)
		
		move	$a0+,$s4
		li	$v0,1
		syscall
		
		li	$v0,11
		lb	$a0,esp($zero)
		syscall
		
		addi	$s0,$s0,1			
		j	while
finwh:	nop		

