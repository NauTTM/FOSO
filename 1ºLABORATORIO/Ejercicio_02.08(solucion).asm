	.data
h:	.word	4
i:	.word	3
j:	.word	5
A:	.word	10,11,02,20,18,5,-3,6,452,0
info1:	.asciiz	"\nIntroduce i: "
info2:	.asciiz	"\nResultado: "	
	.text
main:	lw	$s0,h($zero)
	
	addi	$v0,$zero,4	
	la	$a0,info1($zero)
	syscall
	
	#lw	$s1,i($zero) -> Lo comento para hacer "read int"
	addi	$v0,$zero,5
	syscall
	add	$s1,$zero,$v0	#Vuelvo a colocar i en $s1	
				
	sll	$t0,$s1,2
	lw	$s3,A($t0)	#Cargar A[i] en $s3 
	add	$s3,$s0,$s3	#Actualizar $s3
	
	sw	$s3,A($t0)	#Almacenar $s3 en A[i]
	
	addi	$v0,$zero,4	
	la	$a0,info2($zero)
	syscall
	
	addi	$v0,$zero,1	#"print int" 
	add	$a0,$zero,$s3
	syscall
	
fin:	nop
