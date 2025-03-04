```bash
pt@USER-20240901GT:~/bb$ nasm -f bin boot.asm -o boot.bin
pt@USER-20240901GT:~/bb$ qemu-system-x86_64 -drive file=boot.bin,format=raw,index=0,if=floppy 
pt@USER-20240901GT:~/bb$ 
```
## 制作镜像文件
```bash
dd if=/dev/zero of=floppy.img bs=512 count=2880  # 创建空白镜像
dd if=boot.bin of=floppy.img conv=notrunc        # 写入引导程序
qemu-system-x86_64 -fda floppy.img               # 启动
```