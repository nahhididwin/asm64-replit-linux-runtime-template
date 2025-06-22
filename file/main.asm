section .data
    msg db "Hello, World!", 0xA    ; chuỗi + xuống dòng (\n)
    len equ $ - msg               ; độ dài chuỗi

section .text
    global _start

_start:
    ; syscall write(fd=1, buf=msg, count=len)
    mov rax, 1        ; syscall number for write
    mov rdi, 1        ; file descriptor 1 = stdout
    mov rsi, msg      ; địa chỉ chuỗi
    mov rdx, len      ; độ dài chuỗi
    syscall

    ; syscall exit(status=0)
    mov rax, 60       ; syscall number for exit
    xor rdi, rdi      ; trả về 0
    syscall
