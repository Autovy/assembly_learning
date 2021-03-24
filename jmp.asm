assume cs:code
code segment
start:	mov ax, 0
		; jmp转移到标记s处
		jmp short s
		add ax, 1
		add ax, ax
		
		s:inc ax
code ends
end start		
		