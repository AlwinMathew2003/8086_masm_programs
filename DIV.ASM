;program to divide to numbers

.model small

prints macro p
lea dx,p
mov ah,09h
int 21h
endm


.data
msg1 db 10,13,'Enter the divisor:$'
msg2 db 10,13,'Enter the dividend:$'
msg3 db 10,13,'Qoutient:$'
msg4 db 10,13,'Remainder:$'


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

mov ah,00h
div bl

mov bh,ah

prints msg3
mov dl,al
add dl,30h
mov ah,02h
int 21h

prints msg4
mov dl,bh
add dl,30h
mov ah,02h
int 21h



mov ah,4ch
int 21h

end






