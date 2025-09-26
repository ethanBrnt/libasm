bits 64

%include "ft_strlen.s"

;; Definition of the `data` section
section .data
	;; String variable with the value `hello world!`
	msg db "coucou", 10

;; Definition of the text section
section .text
	global _start
	_start:
		mov rdi, msg
		call ft_strlen
		add al, '0'       ; convertit 5 → '5'
		mov [res], al     ; stocke dans un buffer

		mov rax, 1
		mov rdi, 1
		
		lea rsi, [res]    ; adresse du buffer
		mov rdx, 1        ; longueur = 1
		syscall
		;; Specify the number of the system call (60 is `sys_exit`).
		mov rax, 60
		;; Set the first argument of `sys_exit` to 0. The 0 status code is success.
		mov rdi, 0
		;; Call the `sys_exit` system call.
		syscall