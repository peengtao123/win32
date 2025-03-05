boot: boot.bin
	qemu-system-x86_64 -drive file=boot.bin,format=raw,index=0,if=floppy

boot.bin: boot.asm
	nasm -f bin boot.asm -o boot.bin


hello: hello.o
	ld -m elf_x86_64 hello.o -o hello

hello.o: hello.asm
	nasm -f elf64 hello.asm -o hello.o

run: hello
	./hello

