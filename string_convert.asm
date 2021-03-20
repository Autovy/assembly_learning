; 大小写字母转换
assume cs:code, ds:data

; 存储字符串
data segment
	
	db 'AutoVY'
	db 'HelloWorld'

data ends

code segment

start: 	mov ax, data
		mov ds, ax
		
		; 将'AutoVY'全部转为大写
		; ds:bx, 指向"AutoVY"第一个字母
		mov bx, 0
		; 因为AutoVY有6个字母，所以要循环6次
		mov cx, 6
		
		; 逐个读取字符
		s0: mov al, [bx]
			; 将字符与11011111b做与运算，将第5位置0，转换为大写字母
			and al, 11011111b
			; 将转换后的ASCII码写回原单元
			mov [bx], al
			
			; bx自增1，指向下个字母
			inc bx
			loop s0
		
		
		; 将'HelloWorld'全部转为小写
		; ds:bx, 指向"HelloWorld"第一个字母
		mov bx, 6
		; 因为HelloWorld有10个字母，所以要循环10次
		mov cx, 10
		
		; 逐个读取字符
		s1: mov al, [bx]
			; 将字符与00100000b做或运算，将第5位置1，转换为小写字母
			or al, 11011111b
			; 将转换后的ASCII码写回原单元
			mov [bx], al
			
			; bx自增1，指向下个字母
			inc bx
			loop s1


code ends