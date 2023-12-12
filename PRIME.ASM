.model small

printn macro p
lea dx,p
mov ah,09h
int 21h
endm

.data
a db 5
num db ?
msg1 db 10,13,'Prime$'
msg2 db 10,13,'Not Prime$'

.code
mov ax,@data
mov ds,ax

mov al,a
mov cl,2

mov ah,00h
div cl

mov ch,al

mov al,0

main:
mov al,a
div cl
cmp ah,00h
je nprime 
inc cl
cmp cl,ch
jl main

printn msg1
jmp exit

nprime:
printn msg2

exit:
mov ah,4ch
int 21h
end