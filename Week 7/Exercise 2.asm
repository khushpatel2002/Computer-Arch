.data 
          main: .asciiz "There are some problems with your code!!!"
.text
          li $t3, -1
          li $t4, 1 
          la $t0, main 
          li $t1, 0 
str:      
          lbu $t1, ($t0)  
          addi $t0, $t0, 1 
          addi $t3, $t3, 1  
          bne $t1, 32, ln
          addi $t4, $t4, 1 
ln: 
          bne $t1, 0, str  
          la $a0, ($t4)  
          li $v0, 1  
          syscall 
          li $v0, 10  
          syscall
