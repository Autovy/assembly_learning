; 乘法使用案例，计算100*10000
; 因为乘数中的10000大于了255，所以必须做16位乘法
assume cs:code

code segment
start:	
		mov ax, 100
		mov bx, 10000
		; mul会自动读取ax中的值作为其中一个乘数
		mul bx	

code ends
end start