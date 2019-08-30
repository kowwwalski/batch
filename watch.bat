@echo off
:loop
  cls
  netsh wlan sh int | findstr /I signal
  timeout /t 5 > NUL
goto loop
