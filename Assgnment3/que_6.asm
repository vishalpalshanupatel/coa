.data
    string: .asciiz "vishal"
    char:   .byte 'a'
    found:  .word 0
    index:  .word -1

.text
.globl main
main:
    la   $t0, string
    lb   $t1, char
    li   $t2, 0

char_search_loop:
    lb   $t3, 0($t0)
    beq  $t3, $zero, char_not_found
    beq  $t3, $t1, char_found
    addi $t0, $t0, 1
    addi $t2, $t2, 1
    j    char_search_loop

char_not_found:
    li   $t4, 2
    sw   $t4, found
    jr   $ra

char_found:
    li   $t4, 1
    sw   $t4, found
    sw   $t2, index
    jr   $ra
