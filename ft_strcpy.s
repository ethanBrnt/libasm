bits 64
section .text
	global ft_strcpy

	ft_strcpy:
		xor rax, rax

	.next_char:
		mov cl, [rsi + rax]
		mov [rdi + rax], cl
		cmp byte [rsi + rax], 0
		je .done
		inc rax
		jmp .next_char

	.done:
		mov rax, rdi
		ret
