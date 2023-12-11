;program to find the number of a's in a string

.model small

printn macro p
lea dx,p
mov ah,09h
int 21h
endm

.data
msg1 db 'Enter the string:$'
msg2 db 13,'The number of a:$'
string1 db 100 dup(?)

.code
mov ax,@data
mov ds,ax

printn msg1

mov ah,3fh
lea dx,string1
int 21h


lea si,string1

mov al,[si]

loop1:
cmp al,'a'
jne nfound

inc bh

nfound:
inc si

mov al,[si]
cmp al,'$'
je exit

jmp loop1

exit:
printn msg2

mov dl,bh
add dl,'0'
mov ah,02h
int 21h

mov ah,4ch
int 21h
end
