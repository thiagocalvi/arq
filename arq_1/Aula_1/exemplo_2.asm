.global main
.data
	str:	.asciz "ola mundo!\n"

.text
main:
	mov $1, %rax
	mov $1, %rdi
	mov $str, %rsi
	mov $11, %rdx

	mov $60, %rax
	mov $0, %rdi
	syscall
