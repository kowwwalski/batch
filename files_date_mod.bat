REM get all files (includes in subdirs) by date modified
forfiles /p %some_directory% /s /c "cmd /c echo @path @fsize @fdate" /d %dd.mm.yyyy%