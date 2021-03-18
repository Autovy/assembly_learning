assume cs:code
code segment
	
	; 汇编语言的源程序中数值不能以字母开头，所以要在前面加个0
	mov ax, 0ffffH
	mov ds, ax
	mov bx, 6
	mov ax, [bx]
	
	mov dx, 0
	
	mov cx, 3
	
s:	add dx, ax
	loop s	
	
	mov ax, 4c00H
	int 21H
code ends
end	