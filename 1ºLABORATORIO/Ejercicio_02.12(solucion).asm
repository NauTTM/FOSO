	.data
A:	.word	20,11,02,20,18,5,-3,6,452,0
resul:	.word	37

	.text
main:	lw	$s0,resul($zero)
	
	la	$s1,A($zero)	#Argumentos e invocaci'on de la funci'on
	lw	$a0,0($s1)
	lw	$a1,4($s1)
	lw	$a2,8($s1)
	lw	$a3,12($s1)
	jal	func
		
	add	$s0,$s0,$v0	  #Calcular y almacenar el resultado
	sw	$s0,resul($zero)
	
	j	fin		  #Salir de main sin ejecutar func
	
#func: Realizar la operacion $v0 = ($a0+$a1)-($a2+$a3)
func:	addi $sp, $sp,-4	  #Almacenar en la pila registros $s usados en la funci'on
	sw   $s0, 0($sp)	
	addi $sp, $sp,-4
	sw   $s1, 0($sp)
	
	add  $s0, $a0, $a1	  #Operar con los argumentos de entrada
	add  $s1, $a2, $a3	
	sub  $v0, $s0, $s1        #Calcular valor de retorno
	
	lw   $s1, 0($sp)	  #Restaurar el contenido de los registros $s
	addi $sp, $sp, 4	
	lw   $s0, 0($sp)
	addi $sp, $sp, 4
	jr   $ra		#Devolver control a invocador
fin:	nop


#func2: Realizar la operacion $v0 = ($a0+$a1)-($a2+$a3) -> COMPARAR GESTION PILA con func
#func2:	addi	$sp,$sp,-8	#Almacenar en la pila registros $s usados en la funci'on
#	sw	$s0,4($sp)
#	sw	$s1,0($sp)
#	
#	add  	$s0, $a0, $a1	#Operar con los argumentos de entrada
#	add  	$s1, $a2, $a3	
#	sub  	$v0, $s0, $s1   #Calcular valor de retorno
#	
#	lw	$s1,0($sp)
#	lw	$s0,4($sp)
#	addi	$sp,$sp,8	#Restaurar el contenido de los registros $s
#	jr   	$ra		#Devolver control a invocador
	
