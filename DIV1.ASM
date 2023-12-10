.model small

printn macro p
lea dx,p
mov ah,09h
int 21h
endm

.data
a db 10
b db 5
msg1 db 10,13,'Remainder:$'
msg2 db 10,13,'Qoutient:$'

.code
mov ax,@data
mov ds,ax

mov bl,a
mov bh,b
mov cl,0

label1:
cmp bl,bh
jl next
sub bl,bh
inc cl
jmp label1

next:
printn msg1
mov dl,bl
add dl,30h
mov ah,02h
int 21h

printn msg2
mov dl,cl
add dl,30h
mov ah,02h
int 21h

mov ah,4ch
int 21h
end