* = $1000
  !byte $00,$10  ;load address (direct to screen)
instructions_5
  !scr "trap the growing amoeba "
  !scr " using rocks to turn it "
  !scr "     into diamonds      "
  !fill 24," "
  !scr " beware it will turn to "
  !scr "  rock if it grows too  "
  !scr "         large!         "
  !fill 24," "
  !scr "    the amoeba kills    "
  !scr "     fireflies and      "
  !scr " turns butterflies into "
  !scr "        diamonds        "
  !fill 72," "
  !scr "  slime looks like the  "
  !scr "amoeba but does not grow"
  !fill 24," "
  !scr "it slows down rocks and "
  !scr " diamonds from dropping "
  !scr " into empty space below "
  !fill 24," "

  !fill 24," "
  !fill 8," "
  !byte 140,142  ;amoeba
  !fill 4," "
  !byte 144,146  ;amoeba
  !fill 8," "
  !fill 8," "
  !byte 141,143  ;amoeba
  !fill 4," "
  !byte 145,147  ;amoeba
  !fill 8," "
  !fill 24," "

  !scr "   'down' to continue   "
  !scr "    'fire' to start     "
