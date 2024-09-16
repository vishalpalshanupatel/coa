.data
 num1: .word 8
 num2: .word 24
 mul: .word 0

.text
 main: 
    lw $t0, number1
    lw $t1, number2
    li $t2, 0
    li $t3, 0
    lw $t5, mul

 loop:
    add $t3, $t3, $t0
    blt $t2, $t1, loop

    sw $t3, mul

    li $v0, 1
    lw $a0, $t3
    syscall

    li $v0, 10
    syscall
