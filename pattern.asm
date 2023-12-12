;program to print a pattern

.model small

printn macro p
lea dx,p
mov ah,09h
int 21h
endm

.data
newline db 10,13,'$'
msg db 13,'Pattern is:$'

.code
mov ax,@data
mov ds,ax


mov cl,5

mov bl,1


main:
mov bh,bl

pattern:
mov dl,5
add dl,'0'
mov ah,02h
int 21h
dec bh
cmp bh,0
jne pattern

printn newline

inc bl
loop main

mov ah,4ch
int 21h
end