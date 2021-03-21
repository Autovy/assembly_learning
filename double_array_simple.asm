; 将数据段中每个单词都改写成大写字母
assume cs:code, ds:data

; 共有四行数据，且每一行占了16个字节
data segment
db 'ibm             '
db 'dec             '
db 'vim             '
db 'dos             '
; 定义一个字用来保存cx
dw 0
data ends

; 利用[bx+si]双重循环访问数据（类似于二维数组）
code segment
start:  mov ax, data
		mov ds, ax
		; bx定位行
		mov bx, 0
		
		mov cx, 4
		
		; 将外层循环的cx值保存在data:40H的单元中
	s0: mov ds:[40H], cx
		; si定位列 
		mov si, 0
		; 覆盖cx的值
		mov cx, 3
		s:	mov al, [bx+si]
			and al, 11011111b
			mov al, [bx+si], al
			
			inc si
		loop s
		
	add bx, 16
	; 在进行外层循环前从内存单元中恢复外层循环的cx值
	mov cx, dx
	loop s0	
	
	mov ax, 4c00h
	int 21h
code ends
end start	
	