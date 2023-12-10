.model small

printn macro p
lea dx, p
mov ah, 09h
int 21h
endm

.data
count equ 10
msg1 db 'Sum of first 10 even numbers is:$'

.code
mov ax, @data
mov ds, ax

mov cl,count
mov bl,0  ; Initialize the sum to 0
mov al,0  ;ax should be initialized to zero before any operation

label1:
add al,bl
add bl,2
loop label1

mov cl,count
mov ah,00h
div cl

mov bh,ah
mov bl,al

printn msg1

mov dl,bl
add dl,'0'
mov ah,02h
int 21h

mov dl,bh
add dl,'0'
mov ah, 02h
int 21h



mov ah, 4ch
int 21h
end
