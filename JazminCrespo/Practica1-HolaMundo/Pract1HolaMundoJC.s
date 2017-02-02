# Title: Practica 1 Hola mundo en ensamblador		Filename: Pract1HolaMundoJC.s
# Author: Pasillas Luis Miguel Angel					Date: Jueves 2 / Feb / 2017
# Description: Hola Mundo en ARM
# Input: -
# Output: hello world

.text           
##### Code segment ############################################################ 
.global _start
_start:
    mov r0, #1
    ldr r1, =message
    ldr r2, =len
    mov r7, #4
    swi 0 #avisando al sistema

    mov r7, #1
    swi 0 #re avisando al sistema
####### Data segment ##########################################################
.data
message:
    .asciz "hello world\n" #mensaje
len = .-message                  
            