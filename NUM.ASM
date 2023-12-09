;program to print a number in a variable

.model small
.data
a db 5
.code
mov ax,@data
mov ds,ax

mov dl,[a]
mov ah,02h
add dl,30h
int 21h

mov ah,4ch
int 21h
end

