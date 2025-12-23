@echo off
nasm -fwin64 main.nasm -o main.obj

link.exe /OPT:REF /NOLOGO /FILEALIGN:512 ^
    /MERGE:.rdata=. /MERGE:.pdata=. ^
    /IGNORE:4108 /ALIGN:16 ^
    /IGNORE:4254 /MERGE:.text=. ^
    /SECTION:.,ER /ENTRY:_start /NODEFAULTLIB ^
    /subsystem:windows main.obj user32.lib
