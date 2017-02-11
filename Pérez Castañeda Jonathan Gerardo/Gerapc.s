
# Title: Hola mundo
# Author: Pérez Castañeda Jonathan Gerardo 
# Description: Programa para imprimir Hola Mundo 
# Input:--
# Output: Hola Mundo 
# Filename: Gerapc
# Date: 10/02/17
       
 ############## Code Segment #######################
.text
 .global _start
_start:
    mov r0, #1
    ldr r1, =message
    ldr r2, =len
    mov r7, #4
    swi 0 

    mov r7, #1
    swi 0 

	############### Date segment #####################
.data
message:
    .asciz "Hola Mundo\n" 
len = .-message  