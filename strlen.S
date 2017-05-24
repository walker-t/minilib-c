	global strlen

strlen:
	push rbp		;on met le contenu de rbp dans la pile
	mov rbp, rsp 		;fonction header // prologue

	xor rcx, rcx		;initialisation du compteur a 0

boucle_strlen:
	cmp BYTE [rdi + rcx], 0		;check si on est a la fin de la chaine
	je fin_strlen		;aller a la fin de la chaine si c'est vrai
	inc rcx			;inc permet d'incrementer le registre
	jmp boucle_strlen	; on va a l'adresse de boucle_strlen

fin_strlen:
	mov rax, rcx		;assigne la longueur a rax, et returnla value

	mov rsp, rbp 		;epilogue
	pop rbp			;recupere le contenu de la pile et le stock dans le registre
	ret 
