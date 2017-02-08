#Title: Hola Mundo                                 #Filename:Eric
#Author: Eric Harim Hernandez Barrios              #Date 07/02/2017     
#Descrption: Hola mundo
#Input
#output

#########Code Segment##################
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
#########Data Segment##################
.data
message:
    .asciz "Hola Mundo\n" 
len = .-message  