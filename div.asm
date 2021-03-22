; 计算100001/100
assume cs:code
code segment
start:
	; 被除数100001转换为十六进制为186A1H，超过了16位（ax存不下）
	; 所以我们用dx存储16位溢出的1
	mov dx, 1
	; ax储存16位数据
	mov ax, 86A1H
	
	; 除数100，转换成十六进制为64,虽然8位可以存放
	; 但是按照被除数为32位，除数为16位的规则，我们只能用一整个bx存储
	mov bl,100
	
	; div指令会自动读取被除数(dx)*10000H+(ax)
	; 除以bx
	div bl
	
	; 程序返回
	mov ax, 4c00h
	int 21h

code ends
end start
