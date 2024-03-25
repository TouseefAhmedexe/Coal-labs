Include irvine32.inc
.data
;variable declarations go here
.code
Main Proc
;instructions go here
mov 	eax, 0h		;EAX is initialized with 0h
mov 	eax, 6h		;6h is moved in EAX register
sub     eax, 2h		;2h is subtracted from the value of EAX regiser
add 	eax, 5h		;5h is added in the value of EAX register
Call 	dumpregs	;displays the result 
Exit
Main endp
End main
