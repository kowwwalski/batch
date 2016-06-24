echo off
net stop spooler
del /f /s /q %systemroot%\System32\spool\PRINTERS\"."
del /f /s /q %systemroot%\System32\spool\Drivers\w32x86\"."
net start spooler
REM this one requires administrative privileges
