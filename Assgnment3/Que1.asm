.data
num1: .word 0x0812
num2: .word 0x5421
output: .word 0

.text
la $t0, num1
la $t1, num2
la $t2, out

not $t1, $t1
addi $t1, $t1, 1

add $t2, $t0, $t1
sw $t2, output

li $v0, 1
lw $a0, $t2
syscall

