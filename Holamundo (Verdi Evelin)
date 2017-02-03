# Title: Hola mundo Practica 01        				      	Filename: p0-holamundo.s
# Author: Verdi Vega Evelin       					           Date: 2 / Feb / 2017
# Description: Mostrar HOLA MUNDO
# Input: -
# Output: HOLA MUNDO

.global _start

_start:
  MOV R7, #4 ###;- cargar el valor de datos que esta en esta posicion en la secuencia de instrucciones
  MOV R0, #1 ###;- cargar el valor de datos que esta en esta posicion en la secuencia de instrucciones
  MOV R2, #12 ###;- parametro
  LDR R1, =string ###parametro y direccion de la cadena
  SWI 0 ### señal de interrupcion al O.S.
  MOV R7, #1 ### salir del programa y matar el proceso
  SWI 0 ### señal de interrupcion al O.S. para la terminacion

  .data
string:
  .ascii "HOLA MUNDO"
