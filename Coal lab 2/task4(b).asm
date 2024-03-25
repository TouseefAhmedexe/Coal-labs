Include irvine32.inc
.data
;variable declarations go here
.code
Main Proc
;instructions go here
mov 	eax, 0h		;EAX is initialized with 0h
mov	eax, 6h		;6h is moved in EAX register
mov	ebx, 0h		;EBX is initialized with 0h
mov	ebx, 2h		;2h is moved in EBX register
mov 	eax, 6h		;6h is moved in EAX register
sub     eax, ebx	;value of EBX register is subtracted from the value of EAX regiser
mov	ebx, 0h		;0h is moved in EBX register 
mov 	ebx, 5h		;5h is moved in EBX register 
add 	eax, ebx	;valueof EBX register is added in the value of EAX register
Call 	dumpregs	;displays the result 
Exit
Main endp
End main
