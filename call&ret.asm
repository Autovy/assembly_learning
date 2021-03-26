assume cs:code
code segment
start:	
		mov ax, 1
		; 确定循环次数
		mov cx, 3
		; 这里的call完成了两个操作
		; 将下一个指令的IP压入栈中
		; 跳转到s标记处
		call s
		mov bx, ax
		mov ax, 4c00h
		int 21
	
	; 循环3次相加ax
	s:  add ax, ax
		loop s
		; 循环结束后，从栈中读到IP，然后跳转会mov bx, ax 句 
		ret

code ends
end start