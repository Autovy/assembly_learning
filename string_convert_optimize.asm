; 大小写字母转换
assume cs:code, ds:data

; 存储字符串
data segment
	
	db 'AutoVY'
	db 'HelloWorld'

data ends

code segment
; 改进程序，以[bx+idata]的方式处理数组
start: 	mov ax, data
		mov ds, ax
		mov bx, 0
		
		mov cx, 5
		; 定位第一个字符串字符
	s:  mov al, [bx]
		and al, 11011111b
		mov [bx], al
		
		; 定位第二个字符串的字符
		mov al, [6+bx]
		or al, 00100000b
		mov [5+bx], al
		
		inc bx
		loop s


code ends
end start
