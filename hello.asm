section .data
    msg db "Hello World!", 0x0a  ; 定义字符串变量

section .text
    global _start

_start:
    ; 写入系统调用
    mov eax, 4          ; sys_write 的系统调用号
    mov ebx, 1          ; 文件描述符 stdout
    mov ecx, msg        ; 字符串地址
    mov edx, 13         ; 字符串长度
    int 0x80

    ; 退出系统调用
    mov eax, 1          ; sys_exit
    mov ebx, 0          ; 返回码
    int 0x80
