bits 64

section .text
	global ft_strcpy

	ft_strcpy:
		xor rax, rax

	.next_char:
		cmp byte [rdi + rax], 0 ; Compare current byte with 0
		je .done               ; If 0, jump to done
		inc rax                ; Increment RAX
		jmp .next_char         ; Repeat

	.done:
		ret
