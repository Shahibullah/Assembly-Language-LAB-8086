include 'emu8086.inc'  
.stack 100H
.model small
.data


.code

    main proc    
    PRINT 'Enter First Number : '  
    MOV AH,01H
    INT 21H   
    
    MOV BL,AL
    SUB BL,30H
    ;INT 21H
             
    MOV DL,10          
    MOV AH,02H 
    INT 21H
    MOV DL,13
    MOV AH,02H
    INT 21H
    
    PRINT 'Enter Second Number : '
    MOV AH,01H  
    INT 21H
    SUB AL,30H
    
    
    MUL BL          ; AL = AL * BL
    MOV BL,AL       ; BL <-AL
    ADD BL,30H
    MOV DL,10          
    MOV AH,02H 
    INT 21H
    MOV DL,13
    MOV AH,02H
    INT 21H   
    
    PRINT 'Result :'
    MOV DL,BL
    MOV AH,02H
    INT 21H
    
    main endp
end main          
