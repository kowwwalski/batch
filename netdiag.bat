@echo off
::Diagnose-automata
date /t > .\diag-log.txt
time /t >> .\diag-log.txt
set folder=%cd%
set /p host=Enter hostname or IP-address:
ping %host% >> .\diag-log.txt
tracert %host% >> .\diag-log.txt
ipconfig /all >> .\diag-log.txt
route print >> .\diag-log.txt
echo Diagnostic result has been saved in %folder%\diag-log.txt
