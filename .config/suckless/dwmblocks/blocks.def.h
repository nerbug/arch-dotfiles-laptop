//Modify this file to change what commands output to your statusbar, and recompile using the make command.
static const Block blocks[] = {
    /*Icon*/    /*Command*/                                     /*Update Interval*/  /*Update Signal*/
    {"",        "~/.local/bin/statusbar/keyboard_layout",       0,                      11},
    {"",        "~/.local/bin/statusbar/volume",                0,                      10},
    {"",        "~/.local/bin/statusbar/battery",              60,                       0},
    {"",        "~/.local/bin/statusbar/mem_usage",            10,                       0},
    {"",        "~/.local/bin/statusbar/clock",                 1,                       0}
};

//sets delimeter between status commands. NULL character ('\0') means no delimeter.
static char delim[] = "|";
static unsigned int delimLen = 5;
