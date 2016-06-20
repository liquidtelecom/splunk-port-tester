@echo off

set hostname=%1
set port=%2

cd %~dp0

nc -z %hostname% %port%
if %errorlevel% equ 0 (
    echo target=%hostname% port=%port% status=open
) else (
    echo target=%hostname% port=%port% status=closed
)
