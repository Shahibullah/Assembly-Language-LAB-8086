include 'emu8086.inc'
.model small
.data    ; Variable  

     our_Input DB ?        ;Sending to AX Register
     

.code
    main proc
        
        MOV AX,@data   ; Receiving data in AX Register (RAM -> AX) 
        
        MOV DS,AX      ; Data -> AX (for using data uniquly)
        
        
        print 'Enter Your Character :' 
        ;input Section
        MOV AH,01H ;-> Takes character from user
        INT 21H    ;-> Input in AL Register       
        MOV our_Input,AL  
        
        
        MOV DL,10   ;DL helps to print & 10(DEC) is newline ASCII 
        MOV AH,02H  ;Prints DL 's contain 
        INT 21H
        
        MOV DL,13   ;New line start fron very left  
        MOV AH,02H
        INT 21H
        
        print 'your caracter is:'
        MOV DL,our_Input
        MOV AH,02H  
        INT 21H
        
        MOV DL,10        
        MOV DL,13
        MOV AH,02H  
        
        INT 21H
        MOV AH,02H 
        INT 21H

        
        print 'thank you'

MOV AH,04CH

INT 21H       
        
        
    main endp
end main