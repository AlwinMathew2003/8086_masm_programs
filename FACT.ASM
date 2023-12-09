;program to find factors of a number

.model small

;string read
printn macro p
lea dx,p
mov ah,09h
int 21h
endm

;character read
printc macro
mov dl,cl
add dl,30h
mov ah,02h
int 21h
endm

println macro
mov dl,10
mov ah,02h
int 21h
endm

.data
str1 db 10,13,'Enter the number:$'
str2 db 10,13'Factors are:$'

.code
mov ax,@data
mov ds,ax

printn str1
;now the element will be in al

mov ah,01h
int 21h


sub al,30h

mov cl,al ;cl=i

mov bl,al ;bl=x

printn str2


label1:
mov ah,00h
mov al,bl
div cl
cmp ah,00h
jne n_factor
printc
println
n_factor:
dec cl
cmp cl,00h
je exit
jmp label1

exit:
mov ah,4ch
int 21h
end




















