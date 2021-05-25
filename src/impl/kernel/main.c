#include "stddef.h"
#include "print.h"
#include "vga.h" //This most shit vga driver ever made by a human. 

void kernel_main()
{

    print_clear();
    print_set_color(PRINT_COLOR_YELLOW, PRINT_COLOR_BLACK);
    print_str("Loading VGA Driver!\n");
    write_regs(g_640x480x16); //set display to 640x480 :)
    print_str("Thanks to David Callanan\n");
    print_str("for the scaffolding used to create this operating system\n");
    print_str(" ============================================\n");
    print_str("  _           _        _____ _           _   \n");
    print_str(" | |         (_)      / ____| |         | |  \n");
    print_str(" | |     __ _ _ _ __ | (___ | |__   ___ | |_ \n");
    print_str(" | |    / _` | | '_ \ \___ \| '_ \ / _ \| __|\n");
    print_str(" | |___| (_| | | | | |____) | | | | (_) | |_ \n");
    print_str(" |______\__,_|_|_| |_|_____/|_| |_|\___/ \__|\n");
    print_str(" ============================================\n");
    print_str("Kernal Loaded running in 64BIT Mode/n");
}
