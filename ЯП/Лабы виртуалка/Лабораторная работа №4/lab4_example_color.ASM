        org 100h
start:

        mov ah,2h
        int 16h       ;???????? ???? ???????

        test al,00000100B   ;????????? ??? 3 - CTRL
        JZ   start     ;???? 0, ?? CTRL ????????

        mov ah,8h ; scan keypad
        int 21h

        cmp al, 20h ; probel check
        je next1
        jmp start
next1:
        mov     ah, 09h  ; ????? ?????????
        mov     bl, 0f9h ; ????? ????? ?? ????? ????
        mov     cx, 11   ; ????????? ?????? 11 ????
        int     10h

        mov     dx,CTRL_probel
        int     21h
        jmp start
        ret
CTRL_probel    db     "CTRL_probel", $0d,$0a,'$'