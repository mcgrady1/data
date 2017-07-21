	.file	"2050.c"
	.comm	n,4,4
	.globl	doc
	.bss
	.align 32
	.type	doc, @object
	.size	doc, 404
doc:
	.zero	404
	.globl	l
	.align 4
	.type	l, @object
	.size	l, 4
l:
	.zero	4
	.globl	lines
	.align 32
	.type	lines, @object
	.size	lines, 180000
lines:
	.zero	180000
	.globl	num
	.align 4
	.type	num, @object
	.size	num, 4
num:
	.zero	4
	.comm	words,60000,32
	.comm	step,4,4
	.comm	Term,1620000,32
	.text
	.globl	cmp
	.type	cmp, @function
cmp:
.LFB2:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	movl	-12(%ebp), %eax
	imull	$108, %eax, %eax
	leal	Term(%eax), %edx
	movl	-16(%ebp), %eax
	imull	$108, %eax, %eax
	addl	$Term, %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	strcmp
	movl	%eax, -20(%ebp)
	cmpl	$0, -20(%ebp)
	jne	.L2
	movl	-16(%ebp), %eax
	imull	$108, %eax, %eax
	addl	$Term+96, %eax
	movl	8(%eax), %edx
	movl	-12(%ebp), %eax
	imull	$108, %eax, %eax
	addl	$Term+96, %eax
	movl	8(%eax), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -20(%ebp)
.L2:
	movl	-20(%ebp), %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE2:
	.size	cmp, .-cmp
	.section	.rodata
.LC0:
	.string	"**********"
	.text
	.globl	input
	.type	input, @function
input:
.LFB3:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	subl	$32, %esp
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	movl	l, %edx
	movl	8(%ebp), %eax
	movl	%edx, doc(,%eax,4)
	jmp	.L5
.L12:
	movl	num, %eax
	movl	num, %edx
	movl	%edx, words(,%eax,4)
	movl	$0, -12(%ebp)
	movl	$0, -16(%ebp)
	jmp	.L6
.L10:
	movl	l, %eax
	imull	$90, %eax, %edx
	movl	-16(%ebp), %eax
	addl	%edx, %eax
	addl	$lines, %eax
	movzbl	(%eax), %eax
	movsbl	%al, %eax
	movl	%eax, (%esp)
	call	isalpha
	testl	%eax, %eax
	jne	.L7
	cmpl	$0, -12(%ebp)
	je	.L9
	movl	num, %eax
	imull	$108, %eax, %eax
	leal	Term+96(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%edx)
	movl	num, %edx
	movl	l, %eax
	imull	$108, %edx, %edx
	addl	$Term+96, %edx
	movl	%eax, 8(%edx)
	movl	num, %eax
	addl	$1, %eax
	movl	%eax, num
	movl	num, %eax
	movl	num, %edx
	movl	%edx, words(,%eax,4)
	movl	$0, -12(%ebp)
	jmp	.L9
.L7:
	movl	num, %esi
	movl	-12(%ebp), %ebx
	leal	1(%ebx), %eax
	movl	%eax, -12(%ebp)
	movl	l, %eax
	imull	$90, %eax, %edx
	movl	-16(%ebp), %eax
	addl	%edx, %eax
	addl	$lines, %eax
	movzbl	(%eax), %eax
	movsbl	%al, %eax
	movl	%eax, (%esp)
	call	tolower
	imull	$108, %esi, %edx
	addl	%ebx, %edx
	addl	$Term, %edx
	movb	%al, (%edx)
.L9:
	addl	$1, -16(%ebp)
.L6:
	movl	l, %eax
	imull	$90, %eax, %edx
	movl	-16(%ebp), %eax
	addl	%edx, %eax
	addl	$lines, %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L10
	cmpl	$0, -12(%ebp)
	je	.L11
	movl	num, %eax
	imull	$108, %eax, %eax
	leal	Term+96(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%edx)
	movl	num, %edx
	movl	l, %eax
	imull	$108, %edx, %edx
	addl	$Term+96, %edx
	movl	%eax, 8(%edx)
	movl	num, %eax
	addl	$1, %eax
	movl	%eax, num
.L11:
	movl	l, %eax
	addl	$1, %eax
	movl	%eax, l
.L5:
	movl	l, %eax
	imull	$90, %eax, %eax
	addl	$lines, %eax
	movl	%eax, (%esp)
	call	gets
	movl	l, %eax
	imull	$90, %eax, %eax
	addl	$lines, %eax
	movl	$.LC0, 4(%esp)
	movl	%eax, (%esp)
	call	strcmp
	testl	%eax, %eax
	jne	.L12
	addl	$32, %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE3:
	.size	input, .-input
	.globl	search
	.type	search, @function
search:
.LFB4:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	$0, -24(%ebp)
	movl	num, %eax
	subl	$1, %eax
	movl	%eax, -20(%ebp)
	movl	$-1, step
	jmp	.L14
.L18:
	movl	-20(%ebp), %eax
	movl	-24(%ebp), %edx
	addl	%edx, %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	movl	%eax, -16(%ebp)
	movl	-16(%ebp), %eax
	movl	words(,%eax,4), %eax
	imull	$108, %eax, %eax
	leal	Term(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	strcmp
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	jns	.L15
	movl	-16(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -24(%ebp)
	jmp	.L14
.L15:
	cmpl	$0, -12(%ebp)
	jle	.L16
	movl	-16(%ebp), %eax
	subl	$1, %eax
	movl	%eax, -20(%ebp)
	jmp	.L14
.L16:
	jmp	.L17
.L14:
	movl	-24(%ebp), %eax
	cmpl	-20(%ebp), %eax
	jle	.L18
.L17:
	movl	-24(%ebp), %eax
	cmpl	-20(%ebp), %eax
	jg	.L19
	movl	-16(%ebp), %eax
	addl	$1, %eax
	movl	%eax, step
	jmp	.L20
.L21:
	movl	step, %eax
	addl	$1, %eax
	movl	%eax, step
.L20:
	movl	step, %eax
	movl	words(,%eax,4), %eax
	imull	$108, %eax, %eax
	leal	Term(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	strcmp
	testl	%eax, %eax
	je	.L21
.L22:
	subl	$1, -16(%ebp)
	movl	-16(%ebp), %eax
	movl	words(,%eax,4), %eax
	imull	$108, %eax, %eax
	leal	Term(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	strcmp
	testl	%eax, %eax
	je	.L22
	movl	-16(%ebp), %eax
	addl	$1, %eax
	jmp	.L23
.L19:
	movl	$-1, %eax
.L23:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE4:
	.size	search, .-search
	.section	.rodata
.LC1:
	.string	"Sorry, I found nothing."
.LC2:
	.string	"----------"
	.text
	.globl	AndOr
	.type	AndOr, @function
AndOr:
.LFB5:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%ebx
	subl	$8864, %esp
	.cfi_offset 7, -12
	.cfi_offset 3, -16
	movl	$0, -8836(%ebp)
	leal	-8816(%ebp), %ebx
	movl	$0, %eax
	movl	$202, %edx
	movl	%ebx, %edi
	movl	%edx, %ecx
	rep stosl
	leal	-8008(%ebp), %ebx
	movl	$0, %eax
	movl	$2000, %edx
	movl	%ebx, %edi
	movl	%edx, %ecx
	rep stosl
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	search
	movl	%eax, -8832(%ebp)
	movl	step, %eax
	movl	%eax, -8828(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	search
	movl	%eax, -8824(%ebp)
	movl	step, %eax
	movl	%eax, -8820(%ebp)
	movl	-8832(%ebp), %eax
	movl	%eax, -8844(%ebp)
	jmp	.L25
.L26:
	movl	-8844(%ebp), %eax
	movl	words(,%eax,4), %eax
	imull	$108, %eax, %eax
	addl	$Term+96, %eax
	movl	4(%eax), %eax
	movl	$1, -8816(%ebp,%eax,4)
	addl	$1, -8844(%ebp)
.L25:
	movl	-8844(%ebp), %eax
	cmpl	-8828(%ebp), %eax
	jl	.L26
	movl	-8824(%ebp), %eax
	movl	%eax, -8844(%ebp)
	jmp	.L27
.L28:
	movl	-8844(%ebp), %eax
	movl	words(,%eax,4), %eax
	imull	$108, %eax, %eax
	addl	$Term+96, %eax
	movl	4(%eax), %eax
	addl	$101, %eax
	movl	$1, -8816(%ebp,%eax,4)
	addl	$1, -8844(%ebp)
.L27:
	movl	-8844(%ebp), %eax
	cmpl	-8820(%ebp), %eax
	jl	.L28
	movl	-8832(%ebp), %eax
	movl	%eax, -8844(%ebp)
	jmp	.L29
.L31:
	movl	-8844(%ebp), %eax
	movl	words(,%eax,4), %eax
	imull	$108, %eax, %eax
	addl	$Term+96, %eax
	movl	4(%eax), %eax
	movl	-8816(%ebp,%eax,4), %edx
	movl	-8844(%ebp), %eax
	movl	words(,%eax,4), %eax
	imull	$108, %eax, %eax
	addl	$Term+96, %eax
	movl	4(%eax), %eax
	addl	$101, %eax
	movl	-8816(%ebp,%eax,4), %eax
	addl	%eax, %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	cmpl	$1, %eax
	jle	.L30
	movl	$1, -8836(%ebp)
	movl	-8844(%ebp), %eax
	movl	words(,%eax,4), %eax
	imull	$108, %eax, %eax
	addl	$Term+96, %eax
	movl	8(%eax), %eax
	movl	$1, -8008(%ebp,%eax,4)
.L30:
	addl	$1, -8844(%ebp)
.L29:
	movl	-8844(%ebp), %eax
	cmpl	-8828(%ebp), %eax
	jl	.L31
	movl	-8824(%ebp), %eax
	movl	%eax, -8844(%ebp)
	jmp	.L32
.L34:
	movl	-8844(%ebp), %eax
	movl	words(,%eax,4), %eax
	imull	$108, %eax, %eax
	addl	$Term+96, %eax
	movl	4(%eax), %eax
	movl	-8816(%ebp,%eax,4), %edx
	movl	-8844(%ebp), %eax
	movl	words(,%eax,4), %eax
	imull	$108, %eax, %eax
	addl	$Term+96, %eax
	movl	4(%eax), %eax
	addl	$101, %eax
	movl	-8816(%ebp,%eax,4), %eax
	addl	%eax, %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	cmpl	$1, %eax
	jle	.L33
	movl	$1, -8836(%ebp)
	movl	-8844(%ebp), %eax
	movl	words(,%eax,4), %eax
	imull	$108, %eax, %eax
	addl	$Term+96, %eax
	movl	8(%eax), %eax
	movl	$1, -8008(%ebp,%eax,4)
.L33:
	addl	$1, -8844(%ebp)
.L32:
	movl	-8844(%ebp), %eax
	cmpl	-8820(%ebp), %eax
	jl	.L34
	cmpl	$0, -8836(%ebp)
	jne	.L35
	movl	$.LC1, (%esp)
	call	puts
	jmp	.L24
.L35:
	movl	$0, -8836(%ebp)
	movl	$0, -8844(%ebp)
	jmp	.L37
.L44:
	movl	-8844(%ebp), %eax
	movl	-8816(%ebp,%eax,4), %edx
	movl	-8844(%ebp), %eax
	addl	$101, %eax
	movl	-8816(%ebp,%eax,4), %eax
	addl	%eax, %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	cmpl	$1, %eax
	jg	.L38
	jmp	.L39
.L38:
	cmpl	$1, -8836(%ebp)
	jne	.L40
	movl	$.LC2, (%esp)
	call	puts
.L40:
	movl	$1, -8836(%ebp)
	movl	-8844(%ebp), %eax
	movl	doc(,%eax,4), %eax
	movl	%eax, -8840(%ebp)
	jmp	.L41
.L43:
	movl	-8840(%ebp), %eax
	movl	-8008(%ebp,%eax,4), %eax
	cmpl	$1, %eax
	jne	.L42
	movl	-8840(%ebp), %eax
	imull	$90, %eax, %eax
	addl	$lines, %eax
	movl	%eax, (%esp)
	call	puts
.L42:
	addl	$1, -8840(%ebp)
.L41:
	movl	-8844(%ebp), %eax
	addl	$1, %eax
	movl	doc(,%eax,4), %eax
	cmpl	-8840(%ebp), %eax
	jg	.L43
.L39:
	addl	$1, -8844(%ebp)
.L37:
	movl	n, %eax
	cmpl	%eax, -8844(%ebp)
	jl	.L44
.L24:
	addl	$8864, %esp
	popl	%ebx
	.cfi_restore 3
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE5:
	.size	AndOr, .-AndOr
	.section	.rodata
.LC3:
	.string	"NOT"
.LC4:
	.string	"AND"
	.text
	.globl	query
	.type	query, @function
query:
.LFB6:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%ebx
	subl	$1056, %esp
	.cfi_offset 7, -12
	.cfi_offset 3, -16
	movl	%gs:20, %eax
	movl	%eax, -12(%ebp)
	xorl	%eax, %eax
	movl	$0, -1032(%ebp)
	leal	-1016(%ebp), %ebx
	movl	$0, %eax
	movl	$101, %edx
	movl	%ebx, %edi
	movl	%edx, %ecx
	rep stosl
	leal	-612(%ebp), %eax
	movl	%eax, (%esp)
	call	gets
	movl	$0, -1044(%ebp)
	movl	$0, -1040(%ebp)
	jmp	.L46
.L48:
	leal	-612(%ebp), %edx
	movl	-1044(%ebp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	leal	-412(%ebp), %ecx
	movl	-1040(%ebp), %edx
	addl	%ecx, %edx
	movb	%al, (%edx)
	addl	$1, -1044(%ebp)
	addl	$1, -1040(%ebp)
.L46:
	leal	-612(%ebp), %edx
	movl	-1044(%ebp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L47
	leal	-612(%ebp), %edx
	movl	-1044(%ebp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	cmpb	$32, %al
	jne	.L48
.L47:
	leal	-412(%ebp), %edx
	movl	-1040(%ebp), %eax
	addl	%edx, %eax
	movb	$0, (%eax)
	leal	-412(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$.LC3, (%esp)
	call	strcmp
	testl	%eax, %eax
	jne	.L49
	addl	$1, -1044(%ebp)
	movl	$0, -1040(%ebp)
	jmp	.L50
.L51:
	leal	-612(%ebp), %edx
	movl	-1044(%ebp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	leal	-412(%ebp), %ecx
	movl	-1040(%ebp), %edx
	addl	%ecx, %edx
	movb	%al, (%edx)
	addl	$1, -1044(%ebp)
	addl	$1, -1040(%ebp)
.L50:
	leal	-612(%ebp), %edx
	movl	-1044(%ebp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L51
	leal	-412(%ebp), %edx
	movl	-1040(%ebp), %eax
	addl	%edx, %eax
	movb	$0, (%eax)
	leal	-412(%ebp), %eax
	movl	%eax, (%esp)
	call	search
	movl	%eax, -1036(%ebp)
	jmp	.L52
.L53:
	movl	-1036(%ebp), %eax
	movl	words(,%eax,4), %eax
	imull	$108, %eax, %eax
	addl	$Term+96, %eax
	movl	4(%eax), %eax
	movl	$1, -1016(%ebp,%eax,4)
	addl	$1, -1036(%ebp)
.L52:
	movl	step, %eax
	cmpl	%eax, -1036(%ebp)
	jl	.L53
	movl	$0, -1044(%ebp)
	jmp	.L54
.L60:
	movl	-1044(%ebp), %eax
	movl	-1016(%ebp,%eax,4), %eax
	cmpl	$1, %eax
	jne	.L55
	jmp	.L56
.L55:
	cmpl	$1, -1032(%ebp)
	jne	.L57
	movl	$.LC2, (%esp)
	call	puts
.L57:
	movl	-1044(%ebp), %eax
	movl	doc(,%eax,4), %eax
	movl	%eax, -1040(%ebp)
	jmp	.L58
.L59:
	movl	-1040(%ebp), %eax
	imull	$90, %eax, %eax
	addl	$lines, %eax
	movl	%eax, (%esp)
	call	puts
	addl	$1, -1040(%ebp)
.L58:
	movl	-1044(%ebp), %eax
	addl	$1, %eax
	movl	doc(,%eax,4), %eax
	cmpl	-1040(%ebp), %eax
	jg	.L59
	movl	$1, -1032(%ebp)
.L56:
	addl	$1, -1044(%ebp)
.L54:
	movl	n, %eax
	cmpl	%eax, -1044(%ebp)
	jl	.L60
	jmp	.L45
.L49:
	leal	-612(%ebp), %edx
	movl	-1044(%ebp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L62
	leal	-412(%ebp), %eax
	movl	%eax, (%esp)
	call	search
	movl	%eax, -1036(%ebp)
	cmpl	$-1, -1036(%ebp)
	jne	.L63
	movl	$.LC1, (%esp)
	call	puts
	jmp	.L45
.L63:
	movl	-1036(%ebp), %eax
	movl	words(,%eax,4), %eax
	imull	$108, %eax, %eax
	addl	$Term+96, %eax
	movl	4(%eax), %eax
	movl	%eax, -1024(%ebp)
	movl	-1036(%ebp), %eax
	movl	words(,%eax,4), %eax
	imull	$108, %eax, %eax
	addl	$Term+96, %eax
	movl	8(%eax), %eax
	movl	%eax, -1020(%ebp)
	movl	-1020(%ebp), %eax
	imull	$90, %eax, %eax
	addl	$lines, %eax
	movl	%eax, (%esp)
	call	puts
	movl	-1036(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -1044(%ebp)
	jmp	.L65
.L69:
	movl	-1044(%ebp), %eax
	movl	words(,%eax,4), %eax
	imull	$108, %eax, %eax
	addl	$Term+96, %eax
	movl	4(%eax), %eax
	cmpl	-1024(%ebp), %eax
	je	.L66
	movl	$.LC2, (%esp)
	call	puts
	movl	-1044(%ebp), %eax
	movl	words(,%eax,4), %eax
	imull	$108, %eax, %eax
	addl	$Term+96, %eax
	movl	4(%eax), %eax
	movl	%eax, -1024(%ebp)
	jmp	.L67
.L66:
	movl	-1044(%ebp), %eax
	movl	words(,%eax,4), %eax
	imull	$108, %eax, %eax
	addl	$Term+96, %eax
	movl	8(%eax), %eax
	cmpl	-1020(%ebp), %eax
	jne	.L67
	jmp	.L68
.L67:
	movl	-1044(%ebp), %eax
	movl	words(,%eax,4), %eax
	imull	$108, %eax, %eax
	addl	$Term+96, %eax
	movl	8(%eax), %eax
	movl	%eax, -1020(%ebp)
	movl	-1020(%ebp), %eax
	imull	$90, %eax, %eax
	addl	$lines, %eax
	movl	%eax, (%esp)
	call	puts
.L68:
	addl	$1, -1044(%ebp)
.L65:
	movl	step, %eax
	cmpl	%eax, -1044(%ebp)
	jl	.L69
	jmp	.L45
.L62:
	addl	$1, -1044(%ebp)
	movl	$0, -1040(%ebp)
	jmp	.L70
.L71:
	leal	-612(%ebp), %edx
	movl	-1044(%ebp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	leal	-212(%ebp), %ecx
	movl	-1040(%ebp), %edx
	addl	%ecx, %edx
	movb	%al, (%edx)
	addl	$1, -1044(%ebp)
	addl	$1, -1040(%ebp)
.L70:
	leal	-612(%ebp), %edx
	movl	-1044(%ebp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	cmpb	$32, %al
	jne	.L71
	leal	-212(%ebp), %edx
	movl	-1040(%ebp), %eax
	addl	%edx, %eax
	movb	$0, (%eax)
	movl	$.LC4, 4(%esp)
	leal	-212(%ebp), %eax
	movl	%eax, (%esp)
	call	strcmp
	testl	%eax, %eax
	jne	.L72
	movl	$0, -1028(%ebp)
	jmp	.L73
.L72:
	movl	$1, -1028(%ebp)
.L73:
	addl	$1, -1044(%ebp)
	movl	$0, -1040(%ebp)
	jmp	.L74
.L75:
	leal	-612(%ebp), %edx
	movl	-1044(%ebp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	leal	-212(%ebp), %ecx
	movl	-1040(%ebp), %edx
	addl	%ecx, %edx
	movb	%al, (%edx)
	addl	$1, -1044(%ebp)
	addl	$1, -1040(%ebp)
.L74:
	leal	-612(%ebp), %edx
	movl	-1044(%ebp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L75
	leal	-212(%ebp), %edx
	movl	-1040(%ebp), %eax
	addl	%edx, %eax
	movb	$0, (%eax)
	leal	-212(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-412(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-1028(%ebp), %eax
	movl	%eax, (%esp)
	call	AndOr
.L45:
	movl	-12(%ebp), %eax
	xorl	%gs:20, %eax
	je	.L77
	call	__stack_chk_fail
.L77:
	addl	$1056, %esp
	popl	%ebx
	.cfi_restore 3
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE6:
	.size	query, .-query
	.section	.rodata
.LC5:
	.string	"%d\n"
.LC6:
	.string	"=========="
	.text
	.globl	main
	.type	main, @function
main:
.LFB7:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	andl	$-16, %esp
	subl	$32, %esp
	movl	$n, 4(%esp)
	movl	$.LC5, (%esp)
	call	__isoc99_scanf
	movl	$0, 28(%esp)
	jmp	.L79
.L80:
	movl	28(%esp), %eax
	movl	%eax, (%esp)
	call	input
	addl	$1, 28(%esp)
.L79:
	movl	n, %eax
	cmpl	%eax, 28(%esp)
	jl	.L80
	movl	n, %eax
	movl	l, %edx
	movl	%edx, doc(,%eax,4)
	movl	num, %eax
	movl	$cmp, 12(%esp)
	movl	$4, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$words, (%esp)
	call	qsort
	leal	24(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$.LC5, (%esp)
	call	__isoc99_scanf
	movl	$0, 28(%esp)
	jmp	.L81
.L82:
	call	query
	movl	$.LC6, (%esp)
	call	puts
	addl	$1, 28(%esp)
.L81:
	movl	24(%esp), %eax
	cmpl	%eax, 28(%esp)
	jl	.L82
	movl	$0, %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE7:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04.3) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
