; 分段存储代码，数据，栈
assume cs:code, ds:data, ss:stack

; 数据段存储
data segment
	; dw定义一个字单元，在cs:0~cs:15中存放
	dw 0123h, 0456H, 0789h,0abch, 0defh, 0fedh, 0cbah, 0987h
data ends	
	
; 栈段存储	
stack segment
	dw 0,0,0,0,0,0,0,0
stack ends

code segment
			; 将stack链接到ss，确定了栈段的存储空间
start:		mov ax, stack
			mov ss, ax
			; 找到空间后，因为要存16个字节，所以移动栈指针到栈底
			mov sp, 16
			
			; 将data链接到ds，确定了代码段的存储空间
			mov ax, data
			mov ds, ax
			
			; 栈操作，将数据段的数据压入栈
			push ds:[0]
			push ds:[2]
			
			; 弹出栈
			pop ds:[2]
			pop ds:[0]
			
			; 返回
			mov ax, 4c00h
			int 21h


code ends
end start