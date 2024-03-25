TITLE
;Swapping the contents of var1 and var2 variables using registers.
INCLUDE Irvine32.inc
.data
var1 BYTE 20h ;var1 declared as a variable of type BYTE and initialized with value 20h
var2 BYTE 30h ;var2 declared as a variable of type BYTE and initialized with value 30h
.code
main PROC
mov eax,0h ;eax register is initialized with 0h value to prevent it from getting garbage value
mov ebx,0h ;ebx register is initialized with 0h value to prevent it from getting garbage value
mov ecx,0h ;ecx register is initialized with 0h value to prevent it from getting garbage value
mov al,var1 ;lower part of EAX register is initialized with value var1
mov bl,var2 ;lower part of EBX register is initialized with value var2
call DumpRegs ;display the registers
mov cl,al   ;lower part of ECX register is initialized with the value of al register 
mov al,0h   ;al register is alloted with 0 value to prevent from getting garbage value
mov al,bl   ;value of bl register is moved in al register
mov bl,0h   ;bl register is alloted with 0 value to prevent from getting garbage value
mov bl,cl   ;value of cl register is moved in bl register
call DumpRegs ;display the registers
exit
main ENDP
END main
