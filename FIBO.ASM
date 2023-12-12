.model small

printn macro p
lea dx,p
mov ah,09h
int 21h
endm

.data
a db 5
msg db 10,13,'Fibonacci series:$'
space db 32,'$'

.code
mov ax,@data
mov ds,ax

printn msg

mov dl,0
add dl,'0'
mov ah,02h
int 21h

printn space

mov dl,1
add dl,'0'
mov ah,02h
int 21h

printn space

mov cl,a
sub cl,2 ;since 0 and 1 are printed at first

mov al,0
mov bl,1

main:
add al,bl
mov bh,al
mov dl,al
add dl,'0'
mov ah,02h
int 21h
printn space
mov al,bl
mov bl,bh
loop main

mov ah,4ch
int 21h
end