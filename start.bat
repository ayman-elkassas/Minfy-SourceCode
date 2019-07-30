@echo off
call :treeProcess
goto :eof

:treeProcess
rem Do whatever you want here over the files of this subdir, for example:
for /r %%f in (*) do (
	D:\WORK\compress\uglifyjs %%f --output %%f
)

for /D %%d in (*) do (
	REM "C:\Program Files (x86)\7-Zip\7z.exe" a -tzip original *.js
    cd %%d
    call :treeProcess
    cd ..
)
exit /b