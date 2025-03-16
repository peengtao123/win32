# 默认目标
run: hello.exe
	./hello.exe

# 生成可执行文件
hello.exe: hello.o
	gcc hello.o -o hello.exe

# 生成对象文件
hello.o: hello.asm
	nasm -f win64 hello.asm -o hello.o
