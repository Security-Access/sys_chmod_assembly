BITS 64

global _start

section .rodata

	file_to_chmod db "file", 0

_start:
	mov rax, 0x5A
	mov rdi, file_to_chmod
	mov rsi, 777
	syscall
	jmp _exit

_exit:
	mov rax, 0x3C
	mov rdi, 0x0
	syscall
