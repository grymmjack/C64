BasicUpstart2(start)

* = $1000

.var screen = $0400

start:
    lda #1
    ldx #0

loop:
    sta screen,x        // sta $0400,x
    sta screen+250,x    // sta $04FA,x
    sta screen+500,x    // sta $05F4,x
    sta screen+750,x    // sta $06EE,x
    inx
    cpx #250            // cpx $FA
    bne loop

end:
    rts