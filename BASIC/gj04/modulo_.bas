10print"enter (t)otal, (d)ivisor";:input t,d
15t$=str$(t):d$=str$(d):r$=str$(t/d):m$=str$(t-int(t/d)*d):ir$=str$(int(t/d))
16printd$;" goes into ";t$:printr$;" times ":print"with ";m$;" left over.":print"test1 test 0"
20printt$;"/";d$;:print"test2 test3"
30printt$;"/";d$;"=";r$
40print"remainder (modulo)"
50print:print"t-int(t/d)*d":print
60print,t$;"-int(";t$;"/";d$;")*";d$
70print,t$;"-int(";r$;")*";d$
80print,t$;"-int(";r$;")*";d$;"=";m$
90print"remainder is ";m$
100print:print"proof":print
110print,"d*d+remainder=t"
120print,ir$;"*";d$;"+";m$;"=";t$
