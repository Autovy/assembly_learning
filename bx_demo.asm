; 建立段寄存器寻址，保证编译器可以找到存放代码的段：codesg
assume cs:codesg
; 定义codesg段,里面存放代码
codesg segment

; 定义程序
demo: 
	; 为ds赋值为2000H
	mov ax, 2000H
	mov ds, ax
	mov bx, 1000H
	; 将地址2000:1000处的值赋给ax
	mov ax, [bx]
	; bx自增1
	inc bx
	inc bx
	; 将ax的值存到2000:1002
	mov [bx], ax
	inc bx
	inc bx
	mov [bx], ax
	inc bx
	; 将ax中的低字节al存入内存单元
	mov [bx], al
	inc bx
	mov [bx], al
	
	; 程序返回
	mov ax, 4C00H
	int 21H

; 结束段	
codesg ends

; 结束程序
end demo; 	