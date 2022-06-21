#include <config.h>

#include <stdio.h>

int main() {

#ifdef  KERNEL_DARWIN
    puts("DARWIN code");
#elif   KERNEL_LINUX
    puts("LINUX code");
#elif   KERNEL_WIN32
    puts("WINDOWS/Cygwin code");
#else
    puts("Some other platform");
#endif

    return 0;
}