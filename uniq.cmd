:UNIQ
@echo off

for /f "usebackq" %%a in (`sort %1`) do call :COMPARE "%%a"
 goto :EOF

:COMPARE
 set _thisLine=%~1
 if defined _lastLine (
   if not "%_lastLine%"=="%_thisLine%" (
     set _lastLine=%_thisLine%
     echo %_thisLine%
   )
 ) else (
     echo %_thisLine%
     set _lastLine=%_thisLine%
 )
 goto :EOF
