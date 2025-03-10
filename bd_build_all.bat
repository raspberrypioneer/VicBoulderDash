:: Boulder Dash - perform a full build of program
@echo off

:: Control creation of cave file taps (set to Y or N) and set cave load address
:: .e.g. when all_caves_load_area start address is $3700, set CAVE_LOW=00, CAVE_HIGH=37
set MAKECAVES=N
set CAVE_LOW=00
set CAVE_HIGH=38

:: Build main program
echo Created game engine
.\bin\acme.exe -l .\build\symbols -o .\prg\a.prg .\main.asm

:: Create tap file containing the caves of each version
if "%MAKECAVES%"=="Y" (

:: Create a binary fine containing the 2 load adddress bytes for the cave prg files
>.\build\temp.txt echo(%CAVE_LOW% %CAVE_HIGH%
certutil -f -v -decodehex .\build\temp.txt .\build\prgheader.bin 4 >nul
del .\build\temp.txt

set BDVER=BoulderDash01
set BDPRG=B1CAVES
call :create_prg_file_for_version

set BDVER=BoulderDash02
set BDPRG=B2CAVES
call :create_prg_file_for_version

set BDVER=BoulderDash03
set BDPRG=B3CAVES
call :create_prg_file_for_version

set BDVER=BoulderDashP1
set BDPRG=P1CAVES
call :create_prg_file_for_version

set BDVER=ArnoDash01
set BDPRG=A1CAVES
call :create_prg_file_for_version

set BDVER=BoulderBonus
set BDPRG=BBCAVES
call :create_prg_file_for_version
)

goto :build_completed

:: Subroutine to create one large cave file containing all caves A to T with the Z intro cave on the end for a given version
:create_prg_file_for_version
cd .\caves_bin\%BDVER%
copy /b A+B+C+D+E+F+G+H+I+J+K+L+M+N+O+P+Q+R+S+T+Z ..\..\build\caves.bin >nul
cd ..\..
copy /b .\build\prgheader.bin+.\build\caves.bin .\build\caves_prg.bin >nul
move /y .\build\caves_prg.bin .\prg\%BDPRG%.prg >nul
echo Created cave file from %BDVER% called %BDPRG%
exit /B

:build_completed
echo Done!
