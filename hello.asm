section .data
global msg, title
msg db 'Hello, World!', 0
title db 'Message', 0

section .text
global WinMain
extern MessageBoxA
extern ExitProcess

WinMain:
    ; 调用MessageBoxA函数
    sub rsp, 28h        ; 为调用约定调整栈空间
    mov rcx, 0          ; hWnd = NULL
    mov rdx, msg        ; lpText
    mov r8, title       ; lpCaption
    mov r9, 0           ; uType = MB_OK
    call MessageBoxA
    add rsp, 28h        ; 恢复栈空间

    ; 调用ExitProcess函数
    mov ecx, 0          ; uExitCode = 0
    call ExitProcess