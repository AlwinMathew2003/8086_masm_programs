.model small

printn macro p
    lea dx,p
    mov ah,09h
    int 21h
endm

.data
a db 4
b db 3
msg1 db 10,13,'Result:$'

.code
mov ax, @data
mov ds, ax

mov cl, b
mov al, 0  

loop1:
    add al, a
    loop loop1

printn msg1

mov bl, 10
mov ah, 0

div bl

mov dl, al
add dl, '0'
mov ah, 02h
int 21h

mov dl, ah
add dl, '0'
mov ah, 02h
int 21h

mov ah, 4ch
int 21h

end
