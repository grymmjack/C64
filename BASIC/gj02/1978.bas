0 rem poke 56328,0:r=rnd(0):poke 53280,int(rnd(.5)*15+1):poke 53281,int(rnd(.5)*15+1):z=0
0 poke 56328,0:r=rnd(0):poke 53280,0:poke 53281,0:print "{clear}";:z=0
1 x=0:print tab((int(rnd(.5)*20+1)))
2 y=int(rnd(1)*50)
3 c$="{blk}{wht}{pur}{orng}{blu}{lblu}{grn}{pur}{lred}{gry1}{gry2}{gry3}{brn}{yel}{grn}{red}{lred}{red}{orng}{brn}{lblu}"
4 a$="{up}{down}{left}{right}":print mid$(a$,rnd(.5)*4+1,1);
5 on int(rnd(.5)*32+1) goto 6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,8,7,6,10,6,9,6,7,8,8,6,7,8,9,10
6 print "{rvon} {left}";:goto 11
7 print "{rvon}  {left}{left}";:goto 11
8 print "{rvon}   {3 left}{down}   {3 left}{up}";:goto 11
9 print "{rvon}     {5 left}{down}     {5 left}{down}     {5 left}{up}{up}";:goto 11
10 print "{rvon} {$e0}{down}{left}{$e0} {up}";
11 print mid$(a$,rnd(.5)*6+1,1);:x=x+1:if x>=y then print mid$(c$,rnd(.5)*21+1,1);
12 if x>=y then z=z+1:goto 1
13 if z>=int(rnd(.5)*30+10) then z=0:goto 1
14 goto 3