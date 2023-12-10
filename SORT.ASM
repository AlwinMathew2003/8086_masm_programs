.model small

printn macro p
lea dx,p
mov ah,09h
int 21h
endm

.data
array db 3,5,2,4
limit db 4
msg1 db 10,13,'Sorted elements of array are:$'

.code
mov ax,@data
mov ds,ax

mov cl,limit

label1:
mov bh,1
lea di,array

label2:
mov al,[di]
mov bl,[di+1]

cmp al,bl
jg swap

next:
inc di
inc bh
cmp bh,cl

jl label2
loop label1
jmp exit

swap:
mov [di],bl
mov [di+1],al
jmp next

exit:
lea si,array
mov cl,limit

printn msg1

label3:
mov dl,[si]
add dl,'0'
mov ah,02h
int 21h
mov dl,32
mov ah,02h
int 21h
inc si
loop label3


mov ah,4ch
int 21h

end
