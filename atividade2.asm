lw x10, a
lw x11, b
lw x12, m
bge x11, x12, else
add x12, x10, x11
sw x12, m
beq x0,x0, exit
else:
	sub x12, x10, x11
	sw x12, m
	beq x0,x0, exit
exit:
	halt

a: .word 6
b: .word 15
m: .word 0

