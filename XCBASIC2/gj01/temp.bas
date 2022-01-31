10 print "{white}1"
20 print "{yel}2{down}"
30 print "{lblu}4"
40 print "5"
50 print "3","here row = ";:print peek(214);:print ", col = ";:print peek(211);
55 gosub 3000
60 row = 10:col = 20:gosub 2000:print "farts";
70 row = 15:col = 1:gosub 2000
80 row = 20:col = 10:gosub 2000:print "row={left}";row;"col={left}";col
90 row = 1:col = 9:gosub 2000:gosub 2020:gosub 2030:row=15:col=1:gosub 2000:print "color={left}";cc;:print " char={left}";ch;

999 end

1000 poke 781,row:rem sets .x register
1010 poke 782,col:rem sets .y register
1020 sys 2076:sys 65520:rem calls plot to set cursor position
1030 return

1999 rem --- set cursor position (kernal plot): row, col ---
2000 poke 781,row:poke 782,col:poke 783,0:sys 65520:return

2009 rem --- get cursor position (kernal plot): row, col ---
2010 poke 2076,56:poke 2077,96:sys 2076:sys 65520:row=peek(781):col=peek(782):return

2019 rem --- get character under cursor ---
2020 ch=peek(206):return

2029 rem --- get color under cursor ---
2030 cc=peek(646):return

2039 rem --- get cursor position (peek): row, col ---
2040 row=peek(214):col=pos(0):return

2999 rem --- wait for key press ---
3000 poke 198,0:wait 198,1:return
