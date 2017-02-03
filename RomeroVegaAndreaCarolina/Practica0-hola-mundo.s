# Title: Hola mundo en Simulador ARM					Filename: p0-holamundo.s
# Author: Romero Vega Andrea Carolina					Date: 2 / Feb / 2017
# Description: Mostrar HOLA MUNDO
# Input: -
# Output: HOLA MUNDO

.global _start
############################# Code segment ####################################
_start:
  MOV R7, #4 
  MOV R0, #1 
  MOV R2, #12
  LDR R1, #10
  SWI R0 , #8
  MOV R7, #14
  SWI R0   #2
############################# Data segment ###################################
  .data
string:
  .ascii "HOLA MUNDO"
  
### http://goodmath.scientopia.org/2014/02/11/hello-world-in-arm-assembly-language/