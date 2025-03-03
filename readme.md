# 编译运行代码,windows下编译运行hello.c

```bash
gcc -finput-charset=UTF-8 -fexec-charset=UTF-8 -municode -DUNICODE -D_UNICODE hello.c -o hello.exe -mwindows && ./hello.exe
```