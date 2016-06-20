@echo off

set hostname=%1
set port=%2

cd %~dp0

nc -z %hostname% %port%
if %errorlevel% equ 0 (
    echo host=%hostname% port=%port% status=open
) else (
    echo host=%hostname% port=%port% status=closed
)
