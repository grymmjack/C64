10 gosub 2000:rem load ml
15 p=5:rem time to pause between draw and erase
16 flash=5:rem flash top when column is evenly divisible by flash

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
35 z=11:y=20:s=2
40 for x=z to y step s
50 for i=0 to 39
55 if i-int(i/flash)*flash = 0 then row=0:col=14:gosub 1000:print "{rvon}{lblu}it works!{rvof}":goto 60
58 row=0:col=14:gosub 1000:print "{rvon}{white}it works!{rvof}"
60 row=x:col=i:gosub 1000
70 print ">";
80 for n=1 to p:next n
90 print "{del} ";
100 next i
150 for i=39 to 1 step -1
155 if i-int(i/flash)*flash = 0 then row=0:col=14:gosub 1000:print "{rvon}{lblu}it works!{rvof}";:goto 160
158 row=0:col=14:gosub 1000:print "{rvon}{white}it works!{rvof}"
160 row=x:col=i:gosub 1000
170 print "<";
180 for n=1 to p:next n
190 print "{del}";
200 next i
210 next x
220 z=20:y=11:s=-2
300 goto 40

499 rem prevent accidentally running subroutines
500 end

999 rem position cursor at row and col using kernal plot
1000 poke 49154,row:rem row
1010 poke 49156,col:rem column
1020 sys 49152
1030 return

2000 rem read data and enter into memory
2005 me=49152:rem $c000
2010 read i
2020 if i = -1 then return
2030 poke me,i
2040 me=me+1
2050 goto 2010

9999 rem the kernal plot routine
10000 data 24:rem 49152 clc
10010 data 162, 0:rem 49153 ldx,x - 49154 = x
10020 data 160, 0:rem 49155 ldy,y - 49156 = y
10030 data 32, 10, 229:rem 49157 jsr, 49158+49159=$e50a kernal plot
10040 data 96:rem 49160 rts
10049 rem sentinel value to signal end of data
10050 data -1
