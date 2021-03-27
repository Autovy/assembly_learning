; 计算1EF000H + 201000H，结果放到ax（高16位）和bx（低16位）中
assume cs:code

code segment
start:
	; 将高低位分别存放到ax，bx中
	mov ax, 001EH
	mov bx, 0F000H
	; 低位add相加
	add bx, 1000H
	; 高位要使用abc
	adc ax, 0020H

code ends
end start