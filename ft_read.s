bits 64

section .text
	global ft_read

	ft_read:
		xor rax, rax
		mov rbx, rdi
		mov rcx, rsi
		mov rdx, rdx
		syscall
		cmp rax, 0 ; si rax < 0 (erreur), on ne touche pas au buffer
		jl .syserr
		cmp rax, rdx ; si rax >= rdx (count fourni), pas d'espace pour '\0'
		jae .done
		mov byte [rsi + rax], 0 ; écrire le terminator nul à buf + rax
	
	.done:
		ret

	.syserr:
        push rax                 ; sauver -errno
        extern __errno_location
        call [rel __errno_location  wrt ..got]    ; rax <- adresse d_errno
        pop rcx                  ; rcx <- -errno
        neg rcx                  ; rcx <- errno (positif)
        mov dword [rax], ecx     ; *errno = rcx (32 bits)
        mov rax, -1              ; valeur de retour standard en cas d'erreur
        ret

