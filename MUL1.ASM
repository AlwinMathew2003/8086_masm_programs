.model small

printn macro p
lea dx,p
mov ah,09h
int 21h
endm

.data
a db 2
b db 3
msg1 db 'Result:$'

.code
mov ax,@data
mov ds,ax

mov cl,b

back:
add bl,a
loop back

printn msg1

mov dl,bl
add dl,'0'
mov ah,02h
int 21h

mov ah,4ch
int 21h
end
