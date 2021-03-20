; 利用SI和DI将字符串复制到其后面的数据区
assume cs:code, ds:data

data segment
	db 'hello,world'
	db '...........'
data ends

code segment
start:  mov ax, data
		mov ds, ax
		; ds:si指向要复制的原始数据，用ds:di指向复制的目的空间
		mov si, 0
		mov di, 16
		mov cx, 8
		
		; 复制
	s:  mov ax, [si]
		; 粘贴
		mov [di], ax
			
		; 移动偏移地址
		add si, 2
		add di, 2
			
		loop s	
		
	mov ax, 4c00h
	int 21h

code ends
end start