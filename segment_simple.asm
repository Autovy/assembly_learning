; 利用栈将程序中定义的数据逆序存放
assume cs:code
code segment
	; dw定义一个字单元，在cs:0~cs:15中存放
	dw 0123h, 0456H, 0789h,0abch, 0defh, 0fedh, 0cbah, 0987h
	; dw定义8个字型数据，把这段空间当作栈来使用
	dw 0,0,0,0,0,0,0,0
	
	start: 	mov ax, cs
		mov ss, ax
		; 栈顶ss:sp 指向 cs:32
		mov sp, 32
		; 初始化偏移地址，设置循环次数
		mov bx, 0
		mov cx, 8
	
	; 循环将数据入栈 
	s:	push cs:[bx]
		add bx, 2
		loop s
		
	mov bx, 0
	mov cx, 8
	
	; 循环将数据出栈，顺序变换
		s0:	pop cs:[bx]
		add bx, 2
		loop s0
		
	mov ax, 4c00h
	int 21h

code ends
end start	
