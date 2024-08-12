Include irvine32.inc

.data
greetings BYTE "Hi There",0
response  TEXTEQU <'Hi, Thanks.'>
answer BYTE response	
.code
Main Proc
;instructions go here

MOV EDX, offset answer
Call writestring
Call crlf
Call dumpregs				

	
Exit
Main endp
End main
