.model small
printn macro p
lea dx,p
mov ah,09h
int 21h
endm
.data
msg1 db 10,13,'Enter the number:$'
msg2 db 10,13,'Even$'
msg3 db 10,13,'Odd$'
.code
mov ax,@data
mov ds,ax

printn msg1
mov ah,01h
int 21h

sub al,30h

mov cl,2

mov ah,00h
div cl

cmp ah,00h
jne odd

printn msg2
jmp exit

odd:
printn msg3

exit:
mov ah,4ch
int 21h

end
