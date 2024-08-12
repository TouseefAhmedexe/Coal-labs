Include irvine32.inc

.data
greetings BYTE "Hi There",0
response BYTE "Hi, Thanks",0

.code
Main Proc
;instructions go here
MOV EAX, 0

MOV EAX, lengthof greetings 
Call writeint
Call crlf

MOV EAX, 0
MOV EAX, Sizeof greetings 
Call writeint
Call crlf

MOV EDX, offset greetings 
Call writestring
Call crlf
Call dumpregs

Exit
Main endp
End main