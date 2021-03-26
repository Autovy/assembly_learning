; 利用子程序将data段中的字符串转换为大写
assume cs:code
; 利用内存空间传递批量数据作为参数
data segment
	db 'TestText'
data ends

code segment
start:
		mov ax, data
		; ds:si指向字符串（批量数据）所在空间的首地址
		mov ds, ax
		mov si, 0
		
		; 字符串长度决定循环次数
		mov cx, 8
		call change
		
		mov ax, 4c00h
		int 21h
		
change: 
		and byte ptr [si], 11011111b
		inc si
		loop change
		ret	
		
code ends
end start