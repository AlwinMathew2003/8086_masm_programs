.model small

prints macro p
lea dx,p
mov ah,09h
int 21h
endm


.data
msg1 db 10,13,'Enter the first number:$'
msg2 db 10,13,'Enter the second number:$'
msg3 db 10,13,'Result:$'

.code
mov ax,@data
mov ds,ax

prints msg1
mov ah,01h
int 21h
sub al,30h
mov bl,al

prints msg2
mov ah,01h
int 21h
sub al,30h


prints msg3
add al,bl

mov ah,00h

mov cl,10
div cl

mov bh,ah

mov dl,al
add dl,30h
mov ah,02h
int 21h

mov dl,bh
add dl,30h
mov ah,02h
int 21h

mov ah,4ch
int 21h

end






