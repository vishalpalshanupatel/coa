.data
array: .word 1, 12, 15, 18, 22, 26, 31, 35, 37, 41, 56, 67, 87, 89, 95
length: .word 15
sum: .word 0
average: .word 0

.text
main:
    la $t0, array
    lw $t2, length
    li $t1, 0
    li $t3, 0

loop:
    lw $t4, ($t0)
    add $t3, $t3, $t4
    add $t1, $t1, 1
    add $t0, $t0, 4
    blt $t1, $t2, loop

    sw $t3, sum
    div $t5, $t3, $t2
    mflo $t5
    sw $t5, average

    li $v0, 1
    move $a0, $t5
    syscall

    li $v0, 10
    syscall
