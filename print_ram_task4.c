#include <stdio.h>
extern unsigned char ram[]; // RAM declared in assembly
extern void fill_ram(void); // Assembly function
int main()
{fill_ram(); // Run assembly code
    printf("Total sum in RAM 50H\n");
    printf("%02X ", ram[0x50]);
    printf("\n");
    return 0;
}   