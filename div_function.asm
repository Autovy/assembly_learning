; 解决除法溢出问题，F4240H/0AH
assume cs:code, ss:stack
code segment
start:
		mov ax, stack
		mov ss, ax
		mov sp, 10h
		; 被除数低16位
		mov ax, 4240h
		; 被除数高16位
		mov dx, 0fh
		; 除数
		mov cx, 0ah
		
		call divdw
		
		mov ax, 4c00h
		int 21h
		
		
divdw:	; 子程序定义开始

		; 低16位入栈保存
		push ax
		
		; 高16位放到ax中进行处理
		mov ax, dx
		
		; dx置零
		mov dx, 0
		
		; H/N，用高位除以除数
		div cx
		
		; ax,bx的值为H/N的商，这时候dx的值为H/N的余数
		mov bx, ax
		
		; 从栈中恢复低16位
		pop ax
		
		; L/N，dx默认为被除数的高16位，ax为低16位
		div cx
		
		; 将余数放到cx中
		mov cx, dx
		
		; 将结果高16位放到dx中，结果的低16位在ax中
		mov dx, bx
		
		; 子程序结束
		ret