REM use quotes when your path contents spaces

REM show current directory full path
echo "%~dp0"

REM find file in current directory by template and show full path
for /F %%F in ( "template*.ext" ) DO ( echo "%~dp0%%~nxF" )

REM find file in current directory by template and show only name
for /F %%F in ( "template*.ext" ) DO ( echo "%%~nxF" )
