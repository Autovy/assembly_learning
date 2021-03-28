; 安装中断7ch的中断例程
assume cs:code

code segment
start:
; 通过串传送，将程序安装（复制）到安全的内存中（0:200）
; -----------------------------		
		mov ax,cs
		mov ds, ax
		; 设置ds:si指向源地址
		mov si, offset sqr
		
		mov ax, 0
		mov es, ax
		; 设置es:di指向目的地址
		mov di, 200h
		; 计算出传输长度（循环次数）
		mov cx, offset sqrend - offset sqr
		; 设置传输方向为正
		cld
		; 传输
		rep movsb

; 设置中断向量表
;-----------------------------------		
		mov ax, 0
		mov es, ax
		mov word ptr es:[7ch*4], 200h
		mov word ptr es:[7ch*4+2], 0
		
		mov ax, 4c00h
		int 21h
		
	
	; 中断后运行的程序（这里是求a的平方）	
	sqr:
		mul ax
		; 用iret指令返回（恢复保存起来的IP，CS和标志位寄存器），保证中断结束后继续执行原来的主程序
		iret
	
	; 设置一个空指令，方便计算上面程序的长度 		
	sqrend: 
		nop		
		
code ends
end start		
		
