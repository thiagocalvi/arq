.global main

.bss
	resp:	.quad


.text
main:
	mov $5, %rax
	mov $8, %rbx
	mov $9, %rcx

	add $2, %rax
	mul %rbx
	sub %rcx, %rax
	
	mov $resp, %rax
	mov %rax, (%rsi)

	mov $1, %rax
	mov $1, %rdi
	mov $4, %rdx
	mov $resp, %rsi
	syscall	

	mov $60, %rax
	mov $0, %rdi
	
	syscall

.data
	numero:	.quad 0x20202061
	
