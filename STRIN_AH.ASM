;program to input string using 3fh and outputing using 09h

.model small
.data
    buffer db 100, 0    ; Buffer for the input string (maximum 100 characters)

.code
main:
    mov ah, 0ah         ; DOS function for buffered input
    mov dx, offset buffer ; Pointer to the buffer
    int 21h             ; Invoke DOS interrupt

    ; Example: Display the input string
    mov ah, 09h         ; DOS function to display a string
    mov dx, offset buffer ; Pointer to the buffer
    int 21h             ; Invoke DOS interrupt

    ; Exit the program
    mov ah, 4ch         ; DOS function to exit
    int 21h             ; Invoke DOS interrupt
end main
