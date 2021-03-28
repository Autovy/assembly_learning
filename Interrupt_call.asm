; 调用中断例程,求2*3256^2
assume cs:code
code segment
start:
		mov ax, 3456
		; 调用中断7ch的中断例程，计算出ax数据的平方
		int 7ch
		
		; 存放结果，结果乘以2
		add ax, ax
		adc dx, dx
		
		mov ax, 4c00h
		
		int 21h
		
code ends
end start		