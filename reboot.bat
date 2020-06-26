@set /p answer=Reboot this one? (Y/N):
if %answer%==y ( shutdown /r /t 00 ) else ( echo %informative message% )
cls
