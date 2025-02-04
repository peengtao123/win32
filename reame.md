## 编译运行这代码
1. 确保你已经安装了nasm和gcc工具。如果你使用的是Windows系统，可以使用w64devkit或MinGW来提供这些工具

```bash
$ nasm -f win64 -o hello.obj hello.asm
$ gcc -o hello hello.obj -lkernel32 -luser32
```

`gcc -o hello hello.obj`的作用是使用GNU编译器集合（GCC）将目标文件`hello.obj`链接成一个可执行文件`hello`。`-o hello`指定输出文件的名称为`hello`。链接过程中，`gcc`会自动处理依赖关系并生成最终的可执行文件。

## 编译运行c代码
```bash
gcc hello.c -o hello -mwindows
```