	global strncmp

strncmp:
	push rbp
	mov rbp, rsp

	xor rcx, rcx

boucle_strncmp:
	mov al, [rdi + rcx]
	mov r8b, [rsi + rcx]
	cmp al, 0
	je fin_fct
	cmp r8b, 0
	je fin_fct
	cmp al, r8b
	jne fin_fct
	inc rcx
	cmp rcx, rdx
	je fin_fct
	jmp boucle_strncmp

fin_fct:
	sub al, r8b
	movsx rax, al

	mov rsp, rbp
	pop rbp
	ret
