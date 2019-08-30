@echo off
netsh wlan sh int | findstr /I bssid
pause
