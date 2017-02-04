Title: Hola Mundo

Filename:Hola Mundo-00

Date: 31/01/17

Description: Mostrar mensaje Hello, World

Santillan Gil Saul Ivan

################ Code segment #############

.global main
main:
push {ip, lr}					# @ Pila de la dirección de retorno (RL) de Además de un registro simulado (ip) a
						# @ mantener la pila 8 bytes alineados.

ldr r0, =message				# @ Cargar el argumento
bl printf					# @ Realizar la llamada. Esto es como 'printf ( "...") "en C.
mov r0, #0 @ Return 0.				# @ Salir del " Main ". Esto es como 'devolver 0' en C.
pop {ip, pc}					# @ Pop el IP ficticia para revertir nuestra solución de alineación, y hacer estallar el original lr
						# @ valor directamente en la PC - el contador de programa - para volver.

message:
.asciz "Hello, world.\n"			# @ Los datos para las llamadas printf. El ensamblador de GNU ".asciz" directiva
						# @ añade automáticamente un carácter nulo de terminación.