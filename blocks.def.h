#define SCRIPTSDIR "/home/rensenware/.local/share/dwmblocks/blocks/"

static const Block blocks[] = {
	{"",       SCRIPTSDIR "time.sh",         1,  0 },
	{";",      SCRIPTSDIR "keyboard.sh",     0,  1 },
    { "     ", SCRIPTSDIR "volume.sh",       0,  2 },
    { "     ", SCRIPTSDIR "mic.sh",          0,  3 },
    { "     ", SCRIPTSDIR "brightness.sh",   0,  4 },
    { "    ",  SCRIPTSDIR "battery.sh",      30, 5 },
    { "",      SCRIPTSDIR "notification.sh", 0,  6 },
    { "",      SCRIPTSDIR "touchpad.sh",     0,  7 },
    { "",      SCRIPTSDIR "cpu.sh",          0,  8 }
};

static char delim[] = "\0";
static unsigned int delimLen = 0;
