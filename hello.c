#include <windows.h>

int WINAPI WinMain(HINSTANCE hInstance, HINSTANCE hPrevInstance, LPSTR lpCmdLine, int nCmdShow) {
    MessageBox(NULL, "Hello, Windows!", "Message Box", MB_OK | MB_ICONINFORMATION);
    return 0;
}
