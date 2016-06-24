@echo off
chcp 855
del "%userprofile%\AppData\Local\Temp\*.*" /f /s /q
del "%userprofile%\AppData\Local\Microsoft\Windows\Temporary Internet Files\Content.IE5\*.*" /f /s /q
del "%userprofile%\AppData\Local\Microsoft\Windows\Temporary Internet Files\Content.MSO\*.*" /f /s /q
del "%userprofile%\AppData\Local\Microsoft\Windows\Temporary Internet Files\Content.Outlook\*.*" /f /s /q
del "%userprofile%\AppData\Local\Microsoft\Windows\Temporary Internet Files\Low\*.*" /f /s /q
