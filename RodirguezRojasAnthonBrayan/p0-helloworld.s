;Title: HELLOWORLD en Simulador ARM					;Filename: p0-HELLOWORLD.s
; Author: Rodriguez Rojas Anthon Brayan					;Date: 2 / Feb / 2017
; Description: Mostrar HELLOWOLD
; Input: -
; Output: HELLOWORLD

.global _start
; Code segment 
_start:
  MOV R7, 
  MOV R5, 
  MOV R2, 
  LDR R1, 
  SWI R0 ,
  MOV R7, 
  SWI R0 ,
; Data segment 
  .data
string:
  .ascii "HELLOWORLD"
  
;