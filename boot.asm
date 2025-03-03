[org 0x7C00]    ; BIOS加载引导程序到内存地址0x7C00

start:
    ; 设置视频模式为文本模式
    mov ax, 0x0003
    int 0x10

    ; 设置段寄存器
    mov ax, cs
    mov ds, ax
    mov es, ax

    ; 打印字符串
    mov si, msg       ; SI寄存器指向字符串
    call print_str

    ; 进入无限循环
    jmp $

print_str:
    lodsb            ; 加载SI指向的字节到AL，并递增SI
    or al, al        ; 检查是否到达字符串结尾(0)
    jz done          ; 如果是0则结束
    mov ah, 0x0E     ; BIOS tele-type功能
    int 0x10         ; 调用BIOS视频服务
    jmp print_str    ; 继续处理下一个字符
done:
    ret

msg db 'Hello World!', 0   ; 要显示的字符串

times 510 - ($ - $$) db 0  ; 填充剩余空间
dw 0xAA55                  ; 引导扇区结束标志