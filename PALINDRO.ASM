; program to check whether the given string is palindrome

.model small
printn macro p
lea dx,p
mov ah,09h
int 21h
endm
.data
string db 100 dup(?)
msg1 db 'Enter the string:$'
msg2 db 'Palindrome$'
msg3 db 'Not a Palindrome$'
.code

mov ax,@data
mov ds,ax
printn msg1

mov ah,3fh
lea dx,string
int 21h
lea di,string

scan:
mov dl,[di]
cmp dl,0Dh
je check
inc di
jmp scan

check:
dec di
lea si, string

loop1:

mov dl, [si]  ; Load the first character
cmp dl,0Dh  ; Check for end of string
je palindrome

cmp dl, [di]
jne npalindrome

inc si
dec di
jmp loop1

palindrome:
printn msg2
jmp exit

npalindrome:
printn msg3
exit:

mov ah,4ch
int 21h
end