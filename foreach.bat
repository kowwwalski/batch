REM read list and do some stuff for each element
for /F "usebackq tokens=*" %%A in ( path2list ) DO ( [command] %%A )
