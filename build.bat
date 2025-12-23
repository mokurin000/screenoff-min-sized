@echo off
nasm -fwin64 main.nasm -o main.obj

link.exe /OPT:REF /NOLOGO ^
    /FILEALIGN:512 /IGNORE:4108 /ALIGN:16 ^
    /MERGE:.rdata=. /MERGE:.pdata=. ^
    /SECTION:.,ER /ENTRY:_start /NODEFAULTLIB ^
    /subsystem:windows main.obj user32.lib
