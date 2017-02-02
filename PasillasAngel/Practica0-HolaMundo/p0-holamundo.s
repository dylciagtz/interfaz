# Title: Hola mundo en Simulador ARM					Filename: p0-holamundo.s
# Author: Pasillas Luis Miguel Angel					Date: 2 / Feb / 2017
# Description: Mostrar HOLA MUNDO
# Input: -
# Output: HOLA MUNDO

.global _start
############################# Code segment ####################################
_start:
  MOV R7, #4 ###;- cargar el valor de datos que esta en esta posicion en la secuencia de instrucciones
  MOV R0, #1 ###;- cargar el valor de datos que esta en esta posicion en la secuencia de instrucciones
  MOV R2, #12 ###;- parametro
  LDR R1, =string ###parametro y direccion de la cadena
  SWI 0 ### señal de interrupcion al O.S.
  MOV R7, #1 ### salir del programa y matar el proceso
  SWI 0 ### señal de interrupcion al O.S. para la terminacion
############################# Data segment ###################################
  .data
string:
  .ascii "HOLA MUNDO"
  
### http://goodmath.scientopia.org/2014/02/11/hello-world-in-arm-assembly-language/