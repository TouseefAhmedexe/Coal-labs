Include irvine32.inc
.data
mbyte BYTE 05,12			;variable declarations go here
.code
Main Proc
;instructions go here
MOV EAX,0				;to clear the previous values stored in EAX register

MOV AL, mbyte+1				;to move the second value stored in mbyte to AL register
call writeint				;to display the integer value of stored in AL register
call dumpregs				;displays the result on the screen by displaying all register values

call crlf
MOV AH, mbyte				;to move the first value stored in mbyte to AH register
call writeint				;to display the integer value of stored in AH register
call dumpregs
	
Exit
Main endp
End main
