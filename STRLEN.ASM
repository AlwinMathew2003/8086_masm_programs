;Program to find the length of the string

.model small
printn macro p
    lea dx, p
    mov ah, 09h
    int 21h
endm

.data
string db 100 dup(?)
msg1 db 'Enter the string:$'

.code
mov ax, @data
mov ds, ax

printn msg1

mov ah, 3fh
lea dx, string
int 21h

mov cl, 0
lea si, string

loop1:
    mov dl, [si]
    cmp dl,0Dh
    je exit
    inc si
    inc cl
    jmp loop1

exit:
    mov dl, cl
    add dl, 30h   ; Convert the length to ASCII
    mov ah, 02h
    int 21h

    mov ah, 4ch
    int 21h

end
