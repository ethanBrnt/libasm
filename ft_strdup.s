bits 64

section .text
	global ft_strdup

	ft_strdup:
		push rdi
		extern ft_strlen
		call ft_strlen
		mov rdi, rax
		inc rdi
		extern malloc
		call [rel malloc wrt ..got]
		cmp rax, 0
		je .malloc_err
		pop rdi
		mov rsi, rdi
		mov rdi, rax
		extern ft_strcpy
		call ft_strcpy
		ret

	.malloc_err:
        extern __errno_location
		call [rel __errno_location  wrt ..got]; rax <- adresse d_errno
        mov rcx, 12              ; rcx <- ENOMEM(12)
        mov dword [rax], ecx     ; *errno = rcx (32 bits)
        mov rax, -1              ; valeur de retour standard en cas d'erreur
        ret