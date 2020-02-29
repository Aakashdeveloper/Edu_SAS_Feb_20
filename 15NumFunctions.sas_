data sample;
input x y z;
cards;
1 2 3
4 5 6
7 8 9
10 11 12
;
run;

data output;
set sample;
a = sum(x,y);
b = min(x,y);
c = max(x,y);
d = std(x,y);
run;

proc print data=output;
run;

data sumval;
x1=2;
x2=4;
y=10;
x3=12;
x4=sum(x1,x2,x3);
x5=sum(of x1-x4);
x6=sum(of x1--y);
x7=sum(of x1--x3);
run;
proc print data=sumval;
run;

data num1;
x = 10.67;
y = int(x);
z = round(x);
run;
proc print data=num1;
run;




