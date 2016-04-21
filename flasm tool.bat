@echo off
cd flasm
title Flasm Tool
echo.
echo started %date% %time%
echo.
flasm
echo.
%cd%
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo Flasm Tool version: 2
echo.
echo      /___/\_        
echo     _\   \/_/\__            
echo   __\       \/_/\    
echo   \   __    __ \ \  
echo  __\  \_\   \_\ \ \   __      
echo /_/\\   __   __  \ \_/_/\    
echo \_\/_\__\/\__\/\__\/_\_\/
echo    \_\/_/\       /_\_\/    
echo       \_\/       \_\/
echo.
echo Please place this batch file into the directory of your flasm files.
echo Please do not have spaces in your .swf file, replace spaces with "_"
echo Please do not add ".swf" to game name.
echo Created by Jaydyn Zimmerman
echo.
set /p file= Game Name:
title Flasm Tool - Game: %File%, Progress: 0
echo Turning echo on...
echo start %time%
@echo on >nul
flasm  -d  %file%.swf > %file%.txt
@echo off >nul
echo end %time%
echo Turned echo off...
title Flasm Tool - Game: %File%, Progress: 99
echo You have sucessfully converted %file%.swf into %file%.txt at %time%
echo Starting %file%.txt in 3 seconds
timeout 3
start %file%.txt
echo Press any key to turn %file%.txt into an swf file
pause >nul
echo Turning echo on...
echo start %time%
@echo on >nul
flasm  -a  %file%.txt
timeout 2
@echo off >nul
echo end %time%
echo Turned echo off...
title Flasm Tool - Game: %File%, Progress: 100
echo All Done at %time%! Starting "console" in 60 seconds...
timeout 60
title Console
cls
echo -d     Disassemble SWF file to the console
echo -a     Assemble Flasm project (FLM)
echo -u     Update SWF file, replace Flasm macros
echo -b     Assemble actions to __bytecode__ instruction or byte sequence
echo -z     Compress SWF with zLib
echo -x     Decompress SWF
echo To save disassembly or __bytecode__ to file, redirect it:
echo flasm -d foo.swf > foo.flm
echo flasm -b foo.txt > foo.as
echo.
echo echo Examples:
echo flasm  -d  %file%.swf > %file%.txt
echo flasm  -a  %file%.txt
echo for more information, type "start flasm.html"
:loop
set /p command= Command:
title Flasm Tool - Console, Last command: %command%
%command%
goto loop
:error
msg * Flasm Tool error
echo Flasm Tool error, closing in 60 seconds
timeout 60 >nul