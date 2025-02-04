section .data
    hello db 'Hello, World!', 0  ; 定义一个字符串 "Hello, World!" 并以空字符结尾

section .text
    global main  ; 声明 main 函数为全局符号
    extern printf  ; 声明外部函数 printf

main:
    ; 设置栈帧
    push rbp  ; 保存旧的基址指针
    mov rbp, rsp  ; 设置新的基址指针
    ; 确保栈是 16 字节对齐的
    sub rsp, 32  ; 为栈帧预留 32 个字节的空间，并确保栈对齐
    ; 设置参数
    lea rcx, [rel hello]  ; 将字符串 "Hello, World!" 的地址加载到 rcx 寄存器中
    ; 调用 printf
    call printf  ; 调用 printf 函数
    ; 清理栈帧
    add rsp, 32  ; 恢复栈指针
    mov rsp, rbp  ; 恢复旧的栈指针
    pop rbp  ; 恢复旧的基址指针
    ; 返回
    ret  ; 返回到调用者