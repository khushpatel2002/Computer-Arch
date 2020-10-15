.text
.globl main
main :
      li $v0, 5
      syscall 
      li $a0, 1
      bgtz  $v0,skip
      addi $a0, $a0, -1
      bgez $v0, skip
      addi $a0, $a0, -1
skip:
      li $v0, 1 
      syscall
      li $v0, 10 
      syscall
