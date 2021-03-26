; 在内存2000H段查找第一个值为0的字节，找到后将其偏移地址存储在dx中
assume cs:code
code segment
start:	mov ax, 2000H
		mov ds, ax
		mov bx,0
		
; 循环查找内存
; ----------------------------
	; cx存放16位（字），但是要求按8位（字节）处理，所以要分高低位分别存储
	s:  mov ch, 0
		mov cl, [bx]
		; jcxz 放在cx寄存器后，一旦cx=0，即跳转到ok段
		jcxz ok
		; 不符合条件，bx自增找到下一个单元，利用jmp形成循环
		inc bx
		jmp short s
	
; 查找到后运行
; ------------------	
	ok: mov dx, bx
	
	
		mov ax,4c00h
		int 21h

code ends
end start		