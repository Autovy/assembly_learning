; 将数据段中每个单词都改写成大写字母
assume cs:code, ds:data, ss:stack

; 共有四行数据，且每一行占了16个字节
data segment
db 'ibm             '
db 'dec             '
db 'vim             '
db 'dos             '
data ends

; 定义一个段,用来作为栈段，用来储存一些临时数据
stack segment
	dw 0,0,0,0,0,0,0,0

stack ends	



; 利用[bx+si]双重循环访问数据（类似于二维数组）
code segment
start:  mov ax, data
		mov ds, ax
		; bx定位行
		mov bx, 0
		
		mov cx, 4
		
		; 外层循环的cx值压入栈中
	s0: push cx
		mov dx, cx
		; si定位列
		mov si, 0
		; 内层循环覆盖cx的值
		mov cx, 3
		s:	mov al, [bx+si]
			and al, 11011111b
			mov al, [bx+si], al
			
			inc si
		loop s
		
	add bx, 16
	; 在进行外层循环前通过弹出栈中数据恢复外层循环的cx值
	pop cx
	loop s0	
	
	mov ax, 4c00h
	int 21h
code ends
end start	
	