@echo off
set /p answer=Reboot this one? (y/n):
set answer=%answer:Y=y%
if %answer%==y ( shutdown /r /t 00 ) else ( echo %informative message% )
cls
