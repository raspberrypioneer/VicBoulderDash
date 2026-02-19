@echo off
cd .\d64
::Specify the VIC20 model you want to emulate: vic20pal or vic20ntsc
C:\Users\spwil\Documents\Commodore\Tools\GTK3VICE-3.3-win32-r35872\xvic.exe -model vic20pal -memory 8k "Vic20 Boulder Dash.d64:bdload"
::C:\Users\spwil\Documents\Commodore\Tools\GTK3VICE-3.3-win32-r35872\xvic.exe -model vic20ntsc -memory 8k "Vic20 Boulder Dash.d64:bdload"
cd ..