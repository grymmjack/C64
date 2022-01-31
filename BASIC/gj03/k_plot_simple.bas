13 tr=0:tc=10:rem title row and column
14 ws=11:we=20:rem window start and window end (top/bot row)
15 pause=0:rem time to pause between draw and erase
16 flash=5:rem flash top when column is evenly divisible by flash
17 loops=0:rem keeps track of when to end

19 rem setup screen using fancy row and col kernal plot
20 row=20:col=6:gosub 1000:print "{white}thanks {yel}8-bit show and tell{white}!";
21 row=19:col=6:gosub 1000:print "{yel}thanks {white}8-bit show and tell{yel}!";
22 row=18:col=6:gosub 1000:print "{white}thanks {yel}8-bit show and tell{white}!";
23 row=17:col=6:gosub 1000:print "{yel}thanks {white}8-bit show and tell{yel}!";
24 row=16:col=6:gosub 1000:print "{white}thanks {yel}8-bit show and tell{white}!";
25 row=15:col=6:gosub 1000:print "{yel}thanks {white}8-bit show and tell{yel}!";
26 row=14:col=6:gosub 1000:print "{white}thanks {yel}8-bit show and tell{white}!";
27 row=13:col=6:gosub 1000:print "{yel}thanks {white}8-bit show and tell{yel}!";
28 row=12:col=6:gosub 1000:print "{white}thanks {yel}8-bit show and tell{white}!";
29 row=11:col=6:gosub 1000:print "{yel}thanks {white}8-bit show and tell{yel}!";
30 row=0:col=14:gosub 1000:print "{rvon}it works!{rvof}";

32 rem main loop

40 for r=ws to we

    50 for i=0 to 39
        52 gosub 1500:rem get cursor position
        54 for n=0 to pause:next n
        55 if i-int(i/flash)*flash = 0 then row=tr:col=tc:gosub 1000:print "{rvon}{lblu}it works!{rvof}{12 space}{11 left}{white}r";crow;"c";ccol;:goto 60
        58 row=tr:col=tc:gosub 1000:print "{rvon}{white}it works!{rvof}{12 space}{11 left}{white}r";crow;"c";ccol;
        60 row=r:col=i:gosub 1000:rem set cursor position
        70 print ">";
        80 for n=0 to pause:next n
        90 print "{del} ";
    100 next i

    150 for i=39 to 1 step -1
        152 gosub 1500:rem get pursor position
        154 for n=0 to pause:next n
        155 if i-int(i/flash)*flash = 0 then row=tr:col=tc:gosub 1000:print "{rvon}{lblu}it works!{rvof}{12 space}{11 left}{white}r";crow;"c";ccol;:goto 160
        158 row=tr:col=tc:gosub 1000:print "{rvon}{white}it works!{rvof}{12 space}{11 left}{white}r";crow;"c";ccol;
        160 row=r:col=i:gosub 1000:rem set cursor position
        170 print "<";
        180 for n=0 to pause:next n
        190 print "{del} ";
    200 next i

210 next r

230 loops=loops+1:if loops = 2 then end
300 goto 40

499 rem prevent accidentally running subroutines
500 end

999 rem set position of cursor at row and col using kernal plot
1000 poke 781,row:poke 782,col:poke 783,0:sys 65520:return

1499 rem get position of cursor in row and col vars using kernal plot
1500 crow=peek(214):ccol=pos(0):return
