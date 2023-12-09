.model small

printn macro p
lea dx,p
mov ah,09h
int 21h
endm

.data
msg1 db 10,13,'Enter the number:$'
msg2 db 10,13,'The inputted number is:$'

.code
mov ax,@data
mov ds,ax

printn msg1
mov ah,01h
int 21h	;the inputted number will be stored in AL register as ASCII value

printn msg2
mov dl,al
mov ah,02h
int 21h

mov ah,4ch
int 21h

end
