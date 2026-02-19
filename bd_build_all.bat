:: Boulder Dash - perform a full build of program
@echo off

:: Control creation of cave file PRGs (set to Y or N) and set cave load address
:: .e.g. when all_caves_load_area start address is $3a00, set CAVE_LOW=00, CAVE_HIGH=3a
set MAKECAVES=N
set CAVE_LOW=00
set CAVE_HIGH=3a

:: Build instruction programs
set MAKEINSTRUCTIONS=N
if "%MAKEINSTRUCTIONS%"=="Y" (
.\bin\acme.exe -o .\prg\ins-1 .\instruct1.asm
.\bin\acme.exe -o .\prg\ins-2 .\instruct2.asm
.\bin\acme.exe -o .\prg\ins-3 .\instruct3.asm
.\bin\acme.exe -o .\prg\ins-4 .\instruct4.asm
.\bin\acme.exe -o .\prg\ins-5 .\instruct5.asm
.\bin\acme.exe -o .\prg\ins-6 .\instruct6.asm
echo Created instruction pages
)

:: Build main program
.\bin\acme.exe -l .\build\symbols -o .\prg\bd .\main.asm
echo Created game engine

:: Create PRG files containing the caves of each version
if "%MAKECAVES%"=="Y" (

:: Create binary file containing the 2 load address bytes
>.\build\temp.txt echo(%CAVE_LOW% %CAVE_HIGH%
certutil -f -v -decodehex .\build\temp.txt .\build\prgheader.bin 4 >nul
del .\build\temp.txt

set BDVER=BoulderDash01
set BDPRG=BD1
call :create_prg_file_for_version

set BDVER=BoulderDash02
set BDPRG=BD2
call :create_prg_file_for_version

set BDVER=BoulderDash03
set BDPRG=BD3
call :create_prg_file_for_version

set BDVER=BoulderDashP1
set BDPRG=BP1
call :create_prg_file_for_version

set BDVER=ArnoDash01
set BDPRG=AR1
call :create_prg_file_for_version

set BDVER=ArnoDash02
set BDPRG=AR2
call :create_prg_file_for_version
)

goto :build_d64

:: Subroutine to prepend each cave with the load address bytes and copy renamed file with the version code into the prg folder
:create_prg_file_for_version

for %%f in (.\caves_bin\%BDVER%_Vic20\*) do (
copy /b .\build\prgheader.bin + %%f .\prg\%BDPRG%-%%~nxf >nul
)
echo Created cave files for %BDVER%
exit /B

:build_d64
%PYPATH%\python .\utilities\create_d64.py
echo Done!
