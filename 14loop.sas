/*
Do
DoWhile
DoUntiil

1)Start to stop
2)By Statement
3)While Statement
4)Until Statement
*/

data loop1;
input x$;
finish = 10;
do i=1 to finish;
end;
cards;
'a'
'b'
'c'
'd'
;
run;
proc print data=loop1;
run;

data loop2;
finish = 10;
do i=1 to finish by 3;
*i=i+3;
y=i;
output;
end;
run;
proc print data=loop2;
run;


data loop3;
x=160;
do while(x>=100);
x+50;
end;
run;

proc print data=loop3;
run;





data loop4;
x=10;
do until(x>=100);
x+50;
output;
end;
run;

proc print data=loop4;
run;


data test;
input x y z;
cards;
1 2 3
4 5 6
7 8 9
;
run;

proc print data=test;
run;


data test1;
set test;
a=y+z;
run;
proc print data=test1;
run;







s


















