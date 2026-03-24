lw x10, a
lw x11, b
sw x10, m
lw x12, m
bge x11, x12, exit
add x12, x10, x11
sw x12, m
exit:
	halt


a: .word 0x06
b: .word 0x05
m: .word 0x0
