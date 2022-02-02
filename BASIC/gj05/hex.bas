10 print "{clr}{rvon}convert decimal to hexadecimal{rvof}"
20 print "enter number to convert";:input num

30 dec = num:hex$ = "":h$ = "0123456789abcdef"
40 for pow=7 to 0 step -1
50 hex(pow) = int(dec / (16 ^ pow))
60 dec = dec - (hex(pow) * (16 ^ pow))
70 next pow
80 for i=7 to 0 step -1
90 hex$ = hex$ + mid$(h$,hex(i)+1,1)
100 next i

200 print:print num;"= $";mid$(hex$,1,4);" ";mid$(hex$,5,8)