BasicUpstart2(start)

start:
    lda #$00

loop:
    sta $0400,x
    cpx #$3FF
.break
    beq end
    inx
    jmp loop

end:
    rts