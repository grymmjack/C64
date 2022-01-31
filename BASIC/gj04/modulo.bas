10 print "enter (t)otal, (d)ivisor";:input t,d
15 t$=str$(t):d$=str$(d):r$=str$(t/d):m$=str$(t-int(t/d)*d):ir$=str$(int(t/d))
16 print d$;" goes into ";t$:print r$;" times ":print "with ";m$;" left over.":print
20 print t$;"/";d$;:print
30 print t$;"/";d$;"=";r$
40 print "remainder (modulo)"
50 print:print "t-int(t/d)*d":print
60 print ,t$;"-int(";t$;"/";d$;")*";d$
70 print ,t$;"-int(";r$;")*";d$
80 print ,t$;"-int(";r$;")*";d$;"=";m$
90 print "remainder is ";m$
100 print:print "proof":print
110 print ,"d*d+remainder=t"
120 print ,ir$;"*";d$;"+";m$;"=";t$
