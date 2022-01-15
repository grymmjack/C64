proc cls
    print "{HOME}{CLEAR}"
endproc

proc drawbar(y!, color$)
    curpos 0, y!
    print color$; 
    print "{REV_ON}";
    for i! = 0 to 39
        print " ";
    next i!
    print "{REV_OFF}";
endproc

proc drawbox(sx!, sy!, ex!, ey!, color$)
    curpos sx!, sy!
    print color$;
    print "{REV_ON}";
    let w! = ex! - sx!
    let h! = ey! - sy!
    for r! = 1 to h!
        for c! = 1 to w!
            print " ";
        next c!
        curpos sx!, sy! + r!
    next r!
    print "{REV_OFF}";
endproc

proc drawrect(sx!, sy!, ex!, ey!, color$)
    curpos sx!, sy!
    print color$;
    print "{REV_ON}";
    let w! = ex! - sx!
    let h! = ey! - sy!
    for c! = 1 to w! - 1
        print " ";
    next c!
    curpos sx!, sy! + 1
    for r! = 0 to h! - 1
        print " ";
        curpos sx! + w! - 1, sy! + r!
        print " ";
        curpos sx!, sy! + r!
    next r!
    curpos sx!, ey! - 1
    for c! = 1 to w! - 1
        print " ";
    next c!
    print "{REV_OFF}";
endproc

proc get_key
    print "press a key"
    loop:
        let key! = inkey!()
        if key! = 0 then goto loop
        if key! = 145 then print "up"
        if key! = 17 then print "down"
        if key! = 29 then print "left"
        if key! = 157 then print "right"
        goto loop
endproc

start:
    call cls
    call drawbar(0, "{WHITE}")
    curpos 1, 0
    print "{REV_ON}hello world{REV_OFF}"
    call drawbox(10, 3, 30, 10, "{WHITE}")
    call drawrect(10, 12, 30, 19, "{LIGHT_BLUE}")
    call drawbox(11, 13, 29, 18, "{BLACK}")
    print "{WHITE}";
    curpos 0, 20
    call get_key
end

menu:
    dim buff![21]
    name$ = @buff!
    print "menu"
    print "----"
    print "choice"
    input name$, 20
    print name$
end