; 利用串传输指令，将data段中的第一个字符复制到它后面的空间
assume cs:code

data segment
	
	db 'Welcome to masm!'
	db 16 dup (0)

data ends

code segment
start:
		mov ax, data
		mov ds, ax
		; 设置ds:si指向data:0，读取位置
		mov si, 0
		mov es, ax
		; 设置es:di指向data:16，存储位置
		mov di, 16
		; 设置rep循环16次(总共有16个字符，一个字符一字节)
		mov cx, 16
		
		; 设置DF=0，正向传送
		cld
		; 以字节为单位传送，将ds:si指向的内存单元中的字节送入es:di中
		; 并且si，di自增1
		rep movsb
		
		mov ax, 4c00h
		int 21h
code ends

end start		