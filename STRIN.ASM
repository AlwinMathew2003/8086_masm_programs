;program to input and output the string by each character

.model small
.data
string db 100 dup(?)
.code
mov ax,@data
mov ds,ax
mov ah,3fh
lea dx,string
int 21h
lea si,string
loop1:
mov ah,02h
mov dl,[si]
int 21h
inc si
cmp byte ptr [si], '$'
je exit
jmp loop1
exit:
mov ah,4ch
int 21h
end

