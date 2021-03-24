assume cs:code

; 将s的一条指令复制到s0
; ---------------------------
code segment

; 复制对象
;-------------------------
s:	mov ax, bx
	; 获得s指令的偏移地址存在si中
	mov si, offset s
	; 获得s0指令的偏移地址存在di中
	mov di, offset s0
	
	; 从cs:[si]中复制出指令内容
	mov ax, cs:[si]
	; 粘贴给cs:[di]
	mov cs:[di], ax

; 粘贴对象	
;----------------------	
; nop是空指令，一个可占一个字节（因为要复制的指令是两字节的，所以这里要两个nop）
s0: nop
	nop
	
code ends
end s
	