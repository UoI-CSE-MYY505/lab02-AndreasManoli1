
.data

array: .word 1, 0, 1, 12, 0, 1, 4

.text

    la a0, array
    li a1, 7    # unsigned
    li a2, 1
prog:
#-----------------------------
findLast_forwards_withIndex:
    add  s0, zero, zero  
    add  t2, zero, zero  
loop2:
    beq  a1, t2, done2
    slli t1, t2, 2
    add  t1, t1, a0
    lw   t3, 0(t1)
    bne  t3, a2, next2
    add  s0, t1, zero  
next2:
    addi t2, t2, 1
    j    loop2
done2:
    addi a7, zero, 10 
    ecall

# Do not remove the prog label or write code above it!
#-----------------------------
done:
    addi a7, zero, 10 
    ecall
