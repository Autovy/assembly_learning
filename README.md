# assembly_learning
新手入门，每天提交一点点汇编学习demo，暂时完成不再进行更新

[base_demo](https://github.com/Autovy/assembly_learning/blob/main/base_demo.asm)：汇编语言基本框架

[bx_demo](https://github.com/Autovy/assembly_learning/blob/main/bx_demo.asm)：偏移地址

[loop](https://github.com/Autovy/assembly_learning/blob/main/loop.asm)：循环语句格式

[loop2](https://github.com/Autovy/assembly_learning/blob/main/loop2.asm)：循环语句案例

[segment_simple](https://github.com/Autovy/assembly_learning/blob/main/segment_simple.asm)：将数据和栈存储在代码段中运行

[segment_optimize](https://github.com/Autovy/assembly_learning/blob/main/segment_optimize.asm)：对segment_simple的优化，将代码段，栈段，数据段进行封装

[segment_test](https://github.com/Autovy/assembly_learning/blob/main/segment_test.asm)：段的简化版demo

[string]( https://github.com/Autovy/assembly_learning/blob/main/string.asm)：汇编存储字符，字符串

[string_convert]( https://github.com/Autovy/assembly_learning/blob/main/string_convert.asm)：字符串大小写字母转换

[string_convert_optimize](https://github.com/Autovy/assembly_learning/blob/main/string_convert_optimize.asm)：字符串大小写转换利用[bx+idata]的方式优化

[SI&DI](https://github.com/Autovy/assembly_learning/blob/main/SI&DI.asm)：利用SI和DI将字符串复制到其后面的数据区

[SI_optimize](https://github.com/Autovy/assembly_learning/blob/main/SI_optimize.asm)：利用[bx+idata]的方式优化SI&DI

[double_array_simple](https://github.com/Autovy/assembly_learning/blob/main/double_array_simple.asm)：利用[bx+si]的方式实现二维数组，其中用寄存器来存储外循环cx

[double_array_unit](https://github.com/Autovy/assembly_learning/blob/main/double_array_unit.asm)：对上面double_array_simple的优化，使用内存单元来来存储外循环cx

[double_array_stack](https://github.com/Autovy/assembly_learning/blob/main/double_array_stack.asm)：对上面double_array_unit的再一次优化，使用栈段来存储外循环cx

[div](https://github.com/Autovy/assembly_learning/blob/main/div.asm)：除法简单使用的demo

[div_ram](https://github.com/Autovy/assembly_learning/blob/main/div_ram.asm)：dd伪指令的介绍，除法与内存单元的联合使用 :(

[review](https://github.com/Autovy/assembly_learning/blob/main/review.asm)：数据读取存放复习案例

[offset](https://github.com/Autovy/assembly_learning/blob/main/offset.asm)：利用offset获得偏移地址，实现指令复制

[jmp](https://github.com/Autovy/assembly_learning/blob/main/jmp.asm)：jmp跳转语句例子

[jcxz](https://github.com/Autovy/assembly_learning/blob/main/jcxz.asm)：条件跳转语句jcxz例子

[ret](https://github.com/Autovy/assembly_learning/blob/main/ret.asm)：ret跳转语句，利用栈中数据取出ip实现跳转

[retf](https://github.com/Autovy/assembly_learning/blob/main/retf.asm)：retf跳转语句，利用栈中数据取出cs:ip实现跳转

[call&ret](https://github.com/Autovy/assembly_learning/blob/main/call&ret.asm)：call与ret配合使用，实现函数调用

[mul](https://github.com/Autovy/assembly_learning/blob/main/mul.asm)：mul指令实现乘法

[call&ret demo](https://github.com/Autovy/assembly_learning/blob/main/call&ret%20demo.asm)：call与ret实现函数调用

[div_function](https://github.com/Autovy/assembly_learning/blob/main/div_function)：除法溢出解决方案

[abc](https://github.com/Autovy/assembly_learning/blob/main/abc.asm)：使用abc的带进位加法运算

[cmp](https://github.com/Autovy/assembly_learning/blob/main/cmp.asm)：cmp比较条件语句

[cmp&jne](https://github.com/Autovy/assembly_learning/blob/main/cmp&jne.asm)：cmp与jne配合使用实现算术运算符的条件语句

[movsb](https://github.com/Autovy/assembly_learning/blob/main/movsb.asm)：movsb实现串传输

[Interrupt](https://github.com/Autovy/assembly_learning/blob/main/Interrupt.asm)：安装中断例程，让下面的Interrupt_call进行调用

[Interrupt_call](https://github.com/Autovy/assembly_learning/blob/main/Interrupt_call.asm)：调用自定义的中断例程

