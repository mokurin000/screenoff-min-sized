# Screenoff

This simply calls `PostMessageA(-1isize as _, 0x112, 0xF170, 2)` without being bloated,

which powers off your monitor.

CRT init, for example, are took out.

## Build

- Have `nasm` installed and ensure it's in your `PATH`
- For VS2022, locate to `C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Visual Studio 2022\Visual Studio Tools\VC\`, and run build.bat in where you cloned this repo.