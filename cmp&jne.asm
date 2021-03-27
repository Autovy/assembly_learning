; 统计data段中数值为8的字节的个数，用ax保存统计结果
assume ds:data, cs:code

data segment
		
		db 8,11,8,1,8,5,63,38
		
data ends

code segment

start:
		mov ax, data
		mov ds, ax
		; ds:bx指向数据段第一个字节
		mov bx, 0
		
		; 初始化累加器
		mov ax, 0
		; 由多少个数据决定循环次数
		mov cx, 8
	
	    
	s: 	; 和8进行比较
		cmp byte ptr [bx], 8
		; 不相等直接到下一个循环
		jne next
		; 相等ax计数
		inc ax
	
   next:
		; 移动地址，并进行下一次的比较
		inc bx
		loop s
		
		mov ax, 4c00h
		int 21


code ends		
end start