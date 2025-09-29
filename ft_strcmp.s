bits 64
section .text
	global ft_strcmp

	ft_strcmp:
		xor rdx, rdx

	.next_char:
		mov al, [rdi + rdx]
		mov cl, [rsi + rdx]
		cmp al, cl
		jne .done
		test al, al
		je .done
		inc rdx
		jmp .next_char

	.done:
		movzx eax, al
		movzx ecx, cl
		sub eax, ecx
		ret