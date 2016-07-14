REM takeown /A /R /F C:\Windows\winsxs\*
REM icacls C:\Windows\winsxs\* /T /grant Administrators:(F)

@echo off
REM Включаем раскрытие переменных окружения в момент обращения к ним
setlocal enabledelayedexpansion
REM Рекурсивно перебираем все файлы в каталоге C:\Windows\winsxs
for /R "C:\Windows\winsxs" %%i in (*) do (
REM Ищем однострочный вывод fsutil
fsutil hardlink list %%i | find /c /v "" | find /I "1" >nul
REM Если ссылка единичная, сжимаем файл
IF !ERRORLEVEL!==0 Compact /C /A /I %%i
)
@echo FINISH
pause>null

icacls C:\Windows\winsxs\* /T /L /grant:r Administrators:(RX)
