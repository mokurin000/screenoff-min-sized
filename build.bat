@echo off
nasm -fwin64 main.nasm -o main.obj
link.exe /OPT:REF /FILEALIGN:512 /ENTRY:_start /subsystem:windows main.obj user32.lib
