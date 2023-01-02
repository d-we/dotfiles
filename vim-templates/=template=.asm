BITS 64
section .data
var1: dq 0x1234567
var2: dq 0xdeadc0de

section .text
  global _start
_start:
  %HERE%

  ; exit 0
  mov rax, 60
  mov rdi, 0
  syscall
