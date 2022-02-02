10 print "{clr}{rvon}convert to binary{rvof}"
20 print "enter number to convert";:input num

1000 answer=num:bits$=""
1010 for i=7 to 0 step -1:
1015 bi(i)=2^i
1020 if answer/bi(i) >= 1 then b$=b$+"1 ":answer=answer-bi(i):print "bit";i;"=";bi(i):goto 1040
1030 if answer/bi(i) < 1 then b$=b$+"0 ":print "bit";i;"=";bi(i)
1040 next i
1050 print "{rvon}binary representation of";num;"{rvof}":print
1052 print ,"binary number:":print
1054 print ,b$
1055 print ,"---------------"
1056 print ,"8 7 6 5 4 3 2 1"
1057 print ,"---------------"
1060 print ,"{rvon}1{rvof} {rvon}6{rvof} {rvon}3{rvof} {rvon}1{rvof} {rvon}8{rvof} {rvon}4{rvof} {rvon}2{rvof} {rvon}1{rvof}"
1070 print ,"{rvon}2{rvof} {rvon}4{rvof} {rvon}2{rvof} {rvon}6{rvof}"
1080 print ,"{rvon}8{rvof}"
