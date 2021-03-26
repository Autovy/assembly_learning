assume cs:code

; 申请栈的空间
stack segment
	
	db 16 dup (0)

stack ends	

code segment
	mov ax, 4c00h
	int 21h

start:
	; 定位栈段位置
	mov ax, stack
	mov ss, ax
	; 确定栈顶指针
	mov sp, 16
	mov ax, 0
	; 将ax值放入供ret使用
	push ax
	; 这一句好像没什么用
	mov bx, 0
	; 利用栈中的数据，IP修改为0
	ret

code ends
end start	
	

	
	
