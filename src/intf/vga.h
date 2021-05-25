#pragma once


unsigned char g_640x480x16[];


//Read VGA INFO
void read_regs(unsigned char *regs);

//Set VGA Screen Modes example --> [write_regs(g_640x480x16)]
void write_regs(unsigned char *regs);

static void set_plane(unsigned p);

/*****************************************************************************
VGA framebuffer is at A000:0000, B000:0000, or B800:0000
depending on bits in GC 6
*****************************************************************************/
static unsigned get_fb_seg(void);