0 x=0
1 poke 56328,0:r=rnd(0):y=int(rnd(1)*50)
2 c$="{wht}{blk}{orng}{blu}{lblu}{grn}{pur}{yel}{gry1}{gry2}{gry3}{brn}{yel}{red}{lred}"
3 a$="{up}{down}{left}{right}":print mid$(a$,rnd(.5)*4+1,1);:print " {left}";:print "{rvon} {left}";
4 x=x+1:if x>=y then print mid$(c$,rnd(.5)*15+1,1); 
5 if x>=y then goto 0
7 goto 3