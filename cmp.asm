; 比较条件语句
; (ah)=(bh)则(ah)=(ah)+(ah),否则(ah)=(ah)+(bh)
assume cs:code
code segment
start:
		; cmp 比较ah和bh
		cmp ah, bh
		; je做相等检测（相当于==）,如果符合则跳转到s处
		je s
		; 无跳转正常向下执行
		add ah, bh
		; 跳转以绕开符合条件执行的语句
		jmp short ok
	; 条件符合后执行	
	s:	add ah, ah
	; 跳回到第一句，反复循环
	ok: ret	
		
		

code ends
end start