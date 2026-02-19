* = $1000
  !byte $00,$10  ;load address (direct to screen)
instructions_1
  !scr "      boulder dash      "
  !scr "      instructions      "
  !fill 24," "
  !scr "  rockford must gather  "
  !scr " all diamonds needed to "
  !scr " complete each cave and "
  !scr " reach the exit before  "
  !scr "     time runs out      "
  !fill 24," "
  !scr "  use joystick to move  "
  !fill 24," "
  !scr "   'fire' + direction   "
  !scr " clears a space, pushes "
  !scr "a rock, grabs a diamond "
  !scr "    or plants a bomb    "
  !scr "without rockford moving "
  !fill 24," "
  !scr "'q' kills rockford when "
  !scr " trapped or when a cave "
  !scr "    cannot be solved    "
  !fill 24," "
  !scr "'space' pauses the game "
  !fill 24," "

  !fill 8," "
  !byte 180,182  ;rockford
  !fill 4," "
  !byte 96,98  ;diamond
  !fill 8," "
  !fill 8," "
  !byte 181,183  ;rockford
  !fill 4," "
  !byte 97,99  ;diamond
  !fill 8," "

  !fill 24," "
  !scr "   'down' to continue   "
  !scr "    'fire' to start     "
