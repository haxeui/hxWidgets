@echo off
if %1 == debug (
	bin\Main-debug.exe
    pause
) else (
	bin\Main.exe
)
