; div计算data段中第一个数据除以第二个数据的商放在第三个数据的储存单元中
assume cs:code,ds:data

; 定义数据段
data segment
	; 被除数，dword类型（32位），需要用dx和ax存储
	dd 100001
	; 除数
	dw 100
	; 商
	dw 0
data ends	

code segment
start:	mov ax, data
		mov ds, ax
		
		; 将ds:0（即第一个数据的低16位）中的数据存入ax中
		mov ax, ds:[0]
		
		; 将ds:2（即第一个数据的高16位）中的数据存入dx中
		mov dx, ds:[2]
		
		; 用dx:ax中的32位数据除以ds:4（即第二个数据，16位）中的字型数据
		div word ptr ds:[4]
		
		; 将商存储在ds:6中
		mov ds:[6],ax

			; 程序返回
		mov ax, 4c00h
		int 21h


code ends
end start