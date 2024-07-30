        MOV AL, 00H
        OUT (70H), AL

START:  MOV CX, 0737H
L1:     DEC CX
        JNZ L1    
 
        IN AL, (6EH)
        ADD AL, AL
        MOV BL, 0AH
        DIV BL
        SHL AL, 04
        OR  AL,AH
        OUT (70H), AL 
        
        MOV CX, 08E5CH
L2:     DEC CX
        JNZ L2
        
        MOV CX, 08E5CH
L3:     DEC CX
        JNZ L3
   
        JMP START
        HLT 