main:
    addi x11, x0, 4
    addi x12, x0, 128
loop_principal:
    sb x11, 1029(x0)
    lb x10, 1026(x0)
    andi x10, x10, 1
    beq x10, x0, loop_principal 
    beq x11, x12, espera_soltar 
    slli x11, x11, 1
espera_soltar:
    sb x11, 1029(x0)
    lb x10, 1026(x0)
    andi x10, x10, 1
    bne x10, x0, espera_soltar

    jal x0, loop_principal
