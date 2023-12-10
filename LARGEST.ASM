.model small

printn macro p
lea dx,p
mov ah,09h
int 21h
endm

.data
array db 3,7,5,9
msg1 db 'Largest number of array is:$'

.code
mov ax,@data
mov ds,ax

lea si,array
mov cl,3 ;it should be less than the number of elements in array

mov bl,[si]
inc si

label1:

cmp bl,[si]
jg next

mov bl,[si]

next:
inc si

loop label1

printn msg1

mov dl,bl
add dl,48
mov ah,02h
int 21h

mov ah,4ch
int 21h
end