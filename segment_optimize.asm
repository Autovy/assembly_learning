; 分段存储代码，数据，栈
assume cs:code, ds:data, ss:stack

; 数据段存储
data segment
	; dw定义一个字单元，在cs:0~cs:15中存放
	dw 0123h, 0456H, 0789h,0abch, 0defh, 0fedh, 0cbah, 0987h
data ends	
	
; 栈段存储	
stack segment
	dw 0,0,0,0,0,0,0,0
stack ends


; 代码段储存
code segment
	; 标记start，cpu就会将code段内容当作指令执行	
	start: 	mov ax, stack
		; 设置ss指向stack，并设置栈顶ss:sp 指向 stack:16
		mov ss, ax
		mov sp, 16
		
		; ds指向data段
		mov ax, data
		mov ds, ax
		; ds：bx 指向data段第一个单元
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
