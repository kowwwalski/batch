@echo off
@chcp 65001
set /p host=Введите имя узла:
%systemroot%\system32\ping.exe %host%
REM %systemroot%\system32\ping.exe %host%.com --определенный домен == только имя вместо fqdn
if not errorlevel 1 set answer= Успех
if errorlevel 1 set answer= Провал
@echo =========
@echo %answer%
@echo =========
pause