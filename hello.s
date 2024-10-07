.global _start

_start:
	MOV R3, #5 @numero a = 5
	MOV R4, #4 @numero b = 4
	ADD R5, R3, R4 @soma a + b
	ADD R5, R5, #48 @soma o resultado com 48, para converter de inteiro para ascii
	LDR R6, =var1 @ pega o endereco da variavel
	STR R5, [R6] @ deposita o valor de R5 na variavel
	LDR R1, =var1
	MOV R0, #1  @ 1 = stdout
	MOV R2, #2  @tamanho string
	MOV R7, #4
	SVC 0      @ chama o linux para printar

	MOV R0, #0
	MOV R7, #1
	SVC 0
.data
helloworld: .ascii  "\n"
var1: .word 