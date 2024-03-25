INCLUDE Irvine32.inc

.data
dividend DWORD 10 ;dividend declared of DWORD type and initialized with 10
divisor DWORD 3      ;divisor declared of DWORD type and initialized with 3
quotient DWORD ?      ;quotient declared of DWORD type and its value is unknown
remainder DWORD ?   ;remainder declared of DWORD type and its value is unknown
.code
main PROC
    ; Calculate quotient and remainder
    mov eax,0                 ;0 is moved to EAX register
    mov edx,0		  ;0 is moved to EDX register
    mov eax, dividend     ;Dividend is moved to EAX register 
    div divisor                  ;Div instruction is applied on divisor
    mov quotient, eax       ;EAX contents are moved to quotient
    mov remainder, edx    ; EAX contents are moved to remainder
    mov eax, quotient        ;quotient is moved to EAX register
    call Dumpregs             ;Display all results 
    mov eax, remainder     ;moving remainder to EAx register
    call Dumpregs              ;display all results


    exit
main ENDP
END main
