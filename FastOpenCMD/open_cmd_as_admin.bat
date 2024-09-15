@echo off
setlocal

:confirm
set /p "choice=Are you sure you want to open CMD as Admin? (Y/N): "
if /i "%choice%"=="Y" goto open_admin
if /i "%choice%"=="N" exit /b

:open_admin
powershell -Command "Start-Process cmd -ArgumentList '/k echo Running as admin && pause' -Verb RunAs"
