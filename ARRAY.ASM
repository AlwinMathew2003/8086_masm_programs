.model small

printn macro p
lea dx,p
mov ah,09h
int 21h
endm

.data
limit db ?
array db 10 dup(?)
msg1 db 10,13,'Enter the limit:$'
msg2 db 10,13,'Enter the elements in the array:$'
msg3 db 10,13,'Elements of the array are:$'
.code
mov ax,@data
mov ds,ax

printn msg1

mov ah,01h
int 21h
sub al,'0'

mov cl,al
mov limit,al

printn msg2

lea si,array

label1:
mov ah,01h
int 21h
mov [si],al
inc si
loop label1

lea si,array
mov cl,limit

printn msg3

label2:
mov dl,[si]
mov ah,02h
int 21h
mov dl,32
mov ah,02h
int 21h
inc si
loop label2

mov ah,4ch
int 21h
end