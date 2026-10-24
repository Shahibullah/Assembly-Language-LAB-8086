include 'emu8086.inc'  
.stack 100H
.model small
.data


.code

    main proc    
        
        PRINT 'Enter first number : '
        
        MOV AH,01H
        INT 21H
        SUB AL,30H
        MOV BL,AL
        
        MOV DL,10
        MOV AH,02H
        INT 21H  
        MOV DL,13
        MOV AH,02H
        INT 21H
                                          
                                          
        PRINT 'Enter Second number : '    
        MOV AH,01H
        INT 21H
        SUB AL,30H
        
        
        ADD BL,AL
        ADD BL,30H
        
        MOV DL,10
        MOV AH,02H
        INT 21H  
        MOV DL,13
        MOV AH,02H
        INT 21H
        
        
        PRINT 'The Sum is : '
        
        MOV DL,BL
        MOV AH,02H
        INT 21H
        
        
    main endp
end main