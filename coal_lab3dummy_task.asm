Include irvine32.inc

.data
mystring BYTE "How are you?",0
	
.code
Main Proc
;instructions go here

MOV EDX, offset mystring
Call writestring
Call crlf				
	
Exit
Main endp
End main
