; 利用SI和[bx+idata]将字符串复制到其后面的数据区
assume cs:code, ds:data

data segment
	db 'hello,world'
	db '...........'
data ends

code segment
start:  mov ax, data
		mov ds, ax
		; ds:si指向要复制的原始数据
		mov si, 0
		mov cx, 8
		
		; 0[si]即[si+0],复制ds:si中的数据
	s:  mov ax, 0[si]
		; 16[si]即[si+16]，将数据粘贴到ds:(si+16)
		mov 16[si], ax
			
		; 移动偏移地址
		add si, 2
			
		loop s	
		
	mov ax, 4c00h
	int 21h

code ends
end start