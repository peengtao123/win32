```bash
pt@USER-20240901GT:~/bb$ nasm -f bin boot.asm -o boot.bin
pt@USER-20240901GT:~/bb$ qemu-system-x86_64 -drive file=boot.bin,format=raw,index=0,if=floppy 
pt@USER-20240901GT:~/bb$ 
```


he