@echo off
:MENU
cls

echo  Printer Setup
echo  1. First option
echo  2. Second option
echo  3. Third option
echo  'Q' to quit
echo.

SET INPUT=
SET /P INPUT=Please select an option:

IF /I '%INPUT%'=='1' GOTO Selection1
IF /I '%INPUT%'=='2' GOTO Selection2
IF /I '%INPUT%'=='3' GOTO Selection3
IF /I '%INPUT%'=='Q' GOTO Quit

cls

echo INVALID INPUT 
echo Please select a number from the Main Menu or select 'Q' to quit.
echo PRESS ANY KEY TO CONTINUE 

pause > NUL
GOTO MENU

:Selection1
REM here's your code/operation for the option 1
echo "Done! Press any key to return to Main menu..."
pause > NUL
GOTO:Menu

:Selection2
REM here's your code/operation for the option 2
echo "Done! Press any key to return to Main menu..."
pause > NUL
GOTO:Menu

:Selection3
REM here's your code/operation for the option 3
echo "Done! Press any key to return to Main menu..."
pause > NUL
GOTO:Menu

REM you can combine few code-blocks/operations in one selection
REM also you can add internal menu for additional options

:Quit
cls
break
