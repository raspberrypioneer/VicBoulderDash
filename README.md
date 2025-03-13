TODO:
rename engine to BD, caves without PRG. Use python and D64 library to create D64, see d64 created manually
note, in VIC needed to check "Load to Basic start" in settings > machine > autostart settings

add instructions into game
add sounds

add full readme
full test, including real vic20
consider make speed selectable (after testing on real vic20)


Notes:
5 rem loader pokes LO"BD",8{CR} into keyboard buffer
10 poke631,76:poke632,111:poke633,34:poke634,66:poke635,66
20 poke636,34:poke637,44:poke638,56:poke639,13:poke198,9
30 poke783,0:poke781,161:poke782,18:sys65436:sys58232


Notes:
5 rem test keyboard
10 poke37154,0:poke37155,255
15 rem poke37153,251 :rem isolate column with 6tfcxdr5
16 poke37153,253 :rem isolate column with 4esz(left-shift)aw3
20 printpeek(37152)
30 goto20

Font used: Demo Maker G
https://home-2002.code-cop.org/c64/font_05.html
