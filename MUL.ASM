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
mul bl
aam ;adjust after multiplication

add al,30h
add ah,30h

mov bh,ah
mov bl,al

mov dl,bh
mov ah,02h
int 21h

mov dl,bl
mov ah,02h
int 21h


mov ah,4ch
int 21h

end






