assume cs:code
code segment
	mov ax, 2
	mov cx, 11
	
s: add ax, ax
	; 跳到地址s处
	loop s
	
	mov ax，4C00H
	int 21H
	
code ends
end	