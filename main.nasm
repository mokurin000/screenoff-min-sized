extern PostMessageA

default rel
bits 64

%assign handle  0xFFFFFFFFFFFFFFFF  ; HWND_BROADCAST
%assign msg     0x112               ; WM_SYSCOMMAND
%assign wParam  0xF170              ; SC_MONITORPOWER
%assign lParam  0x2                 ; POWER_OFF

section .text
global _start
_start:
    mov rcx, handle           ; rdi = hWnd
    mov rdx, msg              ; rsi = Msg
    mov r8, wParam            ; rdx = wParam
    mov r9, lParam            ; r8 = lParam
    call PostMessageA
    xor eax, eax
    ret
