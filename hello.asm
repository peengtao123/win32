section .data
    hello db 'Hello, World!', 0

section .text
    global main
    extern printf

main:
    ; 设置栈帧
    push rbp
    mov rbp, rsp
    ; 确保栈是 16 字节对齐的
    sub rsp, 32
    ; 设置参数
    lea rcx, [rel hello]
    ; 调用 printf
    call printf
    ; 清理栈帧
    add rsp, 32
    mov rsp, rbp
    pop rbp
    ; 返回
    ret