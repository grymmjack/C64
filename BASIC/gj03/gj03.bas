1 poke 2076,24:poke 2077,96:rem clear carry flag
5 rem peek(214) = row, peek(211) = col, peek(646) = color, peek(206) = char under cursor
10 print "1"
20 print "2{down}"
30 print "4"
40 print "5"
50 print "{up}{up}{up}3","here row = ";:print peek(214);:print ", col = ";:print peek(211);"{down}{down}{down}"
60 row = 10:col = 20:gosub 1000:print "farts";
70 row = 1:col = 1:gosub 1000
70 end
1000 poke 781,row:rem sets .x register
1010 poke 782,col:rem sets .y register
1020 sys 2076:poke 65520,1:rem calls plot to set cursor position
1030 return