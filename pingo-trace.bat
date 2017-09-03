@echo off
::ping some host
@set /p host=Enter hostname or IP-address:
ping %host%
pause
:choose
@set /p trace=Trace route to this host? (Y/N):
if /I %trace% == n goto eof
if /I %trace% == y goto yes
if /I NOT %trace% == y goto nope
:nope
echo Just Y or N, pls
goto :choose
:yes
tracert %host%
pause
:eof
