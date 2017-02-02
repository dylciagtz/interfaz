# Title: Practica 1, Hola mundo en Simulador ARM		Filename: p0-holam.s
# Author: Chipres Castellanos Ana Maria 				Date: 2 - Feb - 2017
# Description: HOLA MUNDO
# Input: -
# Output: HOLA MUNDO

.global _start
##############################################Code segment###################
    _start:         
        adr r1, hello
        b test
    loop:   ldr r12, =0x16000000 #tiempo
        str r0, [r12]
##############################################Data segment###################
    test:   ldrb r0, [r1], #1
        cmp r0,#0
        bne loop
    forever: b forever
hello: .asciz "Hello world.\n\r" # Mensaje