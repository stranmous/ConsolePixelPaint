INCLUDE Irvine32.inc

.data
    currX BYTE 40
    currY BYTE 12
    msg1  BYTE "Controls: WASD to Move, SPACE to Draw, Q to Quit", 0

.code
main PROC
    call InitializeScreen

GameLoop:
    call UpdateCursor
    
    call ReadChar
    
    cmp al, 'w'
    je MoveUp
    
    cmp al, 's'
    je MoveDown
    
    cmp al, 'a'
    je MoveLeft
    
    cmp al, 'd'
    je MoveRight
    
    cmp al, ' '
    je DrawMode
    
    cmp al, 'q'
    je QuitGame
    
    jmp GameLoop

MoveUp:
    dec currY
    jmp GameLoop

MoveDown:
    inc currY
    jmp GameLoop

MoveLeft:
    dec currX
    jmp GameLoop

MoveRight:
    inc currX
    jmp GameLoop

DrawMode:
    call DrawPixel
    jmp GameLoop

QuitGame:
    exit
main ENDP

InitializeScreen PROC
    call Clrscr
    mov edx, OFFSET msg1
    call WriteString
    ret
InitializeScreen ENDP

UpdateCursor PROC
    mov dl, currX
    mov dh, currY
    call Gotoxy
    ret
UpdateCursor ENDP

DrawPixel PROC
    mov eax, white + (white * 16)
    call SetTextColor
    
    mov al, ' '
    call WriteChar
    
    call ResetColor
    ret
DrawPixel ENDP

ResetColor PROC
    mov eax, lightGray + (black * 16)
    call SetTextColor
    ret
ResetColor ENDP

END main