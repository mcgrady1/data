	.file "main.c"
	.text
.globl	main
.globl _start
	.type	main, @function
_start:
main:
	pushl	%ebp
	movl	%esp, %ebp
	andl	$-16, %esp
	call	func1
	leave
