run: boot.bin
	qemu-system-x86_64 -drive file=boot.bin,format=raw,index=0,if=floppy

boot.bin: boot.asm
	nasm -f bin boot.asm -o boot.bin
