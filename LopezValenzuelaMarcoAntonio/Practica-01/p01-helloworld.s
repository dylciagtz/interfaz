# Title: Hello world            					Filename: p1-helloworld.s
# Author: Lopez Valenzuela Marco Antonio					Date: 2 / Feb / 2017
# Description: Mostrar HELLO WORLD
# Input: -
# Output: HELLO WORLD.

.global _start
############################# Code segment ####################################
_start:
  MOV R7, #4
  MOV R0, #1
  MOV R2, #12
  LDR R1, =string 
  SWI 0
  MOV R7,
  SWI 0
############################# Data segment ###################################
  .data
string:
  .ascii "HOLA MUNDO"
  
### http://goodmath.scientopia.org/2014/02/11/hello-world-in-arm-assembly-language/