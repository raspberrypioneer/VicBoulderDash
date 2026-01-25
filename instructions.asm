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

instructions_2
  !scr "  on the menu screens   "
  !scr " use joystick to change "
  !scr " boulder dash version,  "
  !scr "    the cave to play    "
  !scr "  and difficulty level  "
  !fill 24," "
  !scr "'fire' to select choice "
  !fill 48," "
  !scr "    score points by     "
  !scr "   gathering diamonds   "
  !fill 24," "
  !scr "   diamonds are more    "
  !scr "  valuable when fewer   "
  !scr "   are available and    "
  !scr "  when rockford's exit  "
  !scr "   is open and there    "
  !scr "  are still some left   "
  !fill 24," "
  !scr "   every 500 points,    "
  !scr "  rockford is awarded   "
  !scr "     a bonus life!      "

  !fill 24," "
  !fill 8," "
  !byte 96,98  ;diamond
  !fill 4," "
  !byte 74,76  ;rock
  !fill 8," "
  !fill 8," "
  !byte 97,99  ;diamond
  !fill 4," "
  !byte 75,77  ;rock
  !fill 8," "
  !fill 24," "

  !scr "   'down' to continue   "
  !scr "    'fire' to start     "

instructions_3
  !scr "    each cave has a     "
  !scr "  different puzzle for  "
  !scr "  rockford to overcome  "
  !fill 72," "
  !scr " watch out for falling  "
  !scr "   rocks and diamonds   "
  !scr "  which kill rockford!  "
  !fill 48," "
  !scr "    butterflies and     "
  !scr "   fireflies are also   "
  !scr "        lethal!         "
  !fill 24," "
  !scr "rockford can push rocks "
  !scr "into spaces to get past "
  !scr "  obstacles, drop them  "
  !scr " onto fireflies to kill "
  !scr "them, or drop them onto "
  !scr " butterflies to change  "
  !scr "   them into diamonds   "

  !fill 24," "
  !fill 8," "
  !byte 124,126  ;firefly
  !fill 4," "
  !byte 112,114  ;butterfly
  !fill 8," "
  !fill 8," "
  !byte 125,127  ;firefly
  !fill 4," "
  !byte 113,115  ;butterfly
  !fill 8," "
  !fill 24," "

  !scr "   'down' to continue   "
  !scr "    'fire' to start     "

instructions_4
  !scr "  walls restrict where  "
  !scr "    rockford can go     " 
  !fill 24," "
  !scr "   explosions from a    "
  !scr " firefly, butterfly or  "
  !scr "  bomb destroys brick   "
  !scr " but not titanium walls "
  !fill 24," "
  !scr "  drop rocks onto the   "
  !scr "  magic wall to change  "
  !scr "  them into diamonds    "
  !fill 24," "
  !scr " empty space must exist "
  !scr "   below the wall for   "
  !scr "   diamonds to land     "
  !fill 24," "
  !scr "  beware it also turns  "
  !scr "  diamonds into rocks!  "
  !fill 24," "
  !scr "   watch out for the    "
  !scr "growing wall which grows"
  !scr "  into empty space!     "

  !fill 24," "
  !fill 8," "
  !byte 86,86  ;brick wall
  !fill 4," "
  !byte 87,87  ;titanium wall
  !fill 8," "
  !fill 8," "
  !byte 86,86  ;brick wall
  !fill 4," "
  !byte 87,87  ;titanium wall
  !fill 8," "
  !fill 24," "

  !scr "   'down' to continue   "
  !scr "    'fire' to start     "

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

instructions_6
  !scr " rockford can use bombs "
  !scr "     in some caves      "
  !fill 24," "
  !scr "  they explode after a  "
  !scr "short delay and destroy "
  !scr "    almost anything!    "
  !fill 96," "
  !scr "  some caves have zero  "
  !scr "  gravity where rocks,  "
  !scr "   diamonds and bombs   "
  !scr "      do not fall       "
  !fill 24," "
  !scr "rocks looks like bubbles"
  !scr "  and can be pushed in  "
  !scr "     all directions     "
  !fill 24," "
  !scr "  beware zero gravity   "
  !scr "      can run out!      "
  !fill 24," "

  !fill 24," "
  !fill 8," "
  !byte 148,150  ;bomb
  !fill 4," "
  !byte 82,84  ;bubble
  !fill 8," "
  !fill 8," "
  !byte 149,151  ;bomb
  !fill 4," "
  !byte 83,85  ;bubble
  !fill 8," "
  !fill 24," "

  !scr "   'down' to continue   "
  !scr "    'fire' to start     "
