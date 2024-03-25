INCLUDE Irvine32.inc

.data

.code
main PROC
    mov eax, 0h
    mov ebx, 0h
    mov eax, -10/3   
    mov ebx, (10 MOD 3)    

    call DumpRegs
    exit
main ENDP

END main