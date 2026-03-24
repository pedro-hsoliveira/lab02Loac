addi x11,x0,0 

loop:
	lb x10, 28(x11)
	beq x10, x0, exit
	sb x10, 1024(x0)
	addi x11, x11, 1
	beq x0, x0, loop
exit:
	halt
str1: .string "Hello World"


