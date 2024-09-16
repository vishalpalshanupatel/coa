.data
  num1;;24
  num2;; 2
  lcm: .word 0

.text
  main: 
    lw $t1, num1
    lw $t2, num2

    gcd:
      beq  $t2, $zero, gcd_done
      rem $t3, $t1, $t2
      move $t1, $t2
      move $t2, $t3
      j gcd

    gcd_done:
      mul  $t5, $t1, $t2
      div  $t5, $t5, $t4
      sw $t5, lcm

    li $v0, 1
    lw $a0, $t3
    syscall

    li $v0, 10
    syscall
