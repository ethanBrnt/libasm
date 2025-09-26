bits 64
section .bss
	buffer resb 100    ; réserve 100 octets pour stocker une chaîne

section .text
	global ft_strcpy

	ft_strcpy:
		xor rax, rax

	.next_char:
		mov al, [rdi + rax] ; al = registre tampon 
		mov [buffer + rax], al
		cmp byte [rdi + rax], 0 ; Compare current byte with 0
		je .done               ; If 0, jump to done
		inc rax                ; Increment RAX
		jmp .next_char         ; Repeat

	.done:
		ret
