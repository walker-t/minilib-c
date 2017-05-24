	global memcpy
memcpy:
	push rbp		;on met le contenu de rbp dans la pile
	mov rbp, rsp

	xor rcx, rcx		;initialisation du compteur à 0

boucle_memcpy:
	cmp rdx, rcx 		; compare les contenues des 2 registres
	jz end			; si c'est == envoie a la fct end
	mov r8b, [rsi + rcx]	; stockage du contenu à l'adresse [...] dans r8b
	mov [rdi + rcx], r8b
	inc rcx			; on incremente rcx
	jmp boucle_memcpy

end:
	mov rax, rdi

	mov rsp, rbp
	pop rbp
	ret
