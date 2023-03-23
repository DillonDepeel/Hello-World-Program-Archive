; nasm -f elf64 hello_world.s && ld -o hello_world hello_world.o
section .rodata
  hello: db "Hello World", 0xa, 0x0
  hello_len: equ $ - hello

section .text
global _start
_start:
  mov rax, 1          ; write system call
  mov rdi, 1          ; write to standard output (stdout)
  mov rsi, hello      ; load address of "hello world" string
  mov rdx, hello_len  ; load length of bytes to write
  syscall

  ; exit
  mov rax, 60
  syscall
