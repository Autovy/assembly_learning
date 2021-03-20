assume cs:code, ds:data

data segment
	; dw定义字型数据（可存16位），db定义字节型数据（可存8位，每个字符对应的ASCII码就是8位的）
	db 'unIt'
	db 'foRK'
	
data ends

code segment
start: 	mov al, 'a'
		mov bx, 'b'

		mov ax, 4c00h
		int 21h
		
code ends
end start		