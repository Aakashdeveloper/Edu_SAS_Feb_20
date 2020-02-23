data xyz;
input x;
datalines;
1
2
3
4
;
run;


data abc;
set xyz;
x=x+1;
y=x+1;
run;

proc print data=abc;
run;


filename employee "/folders/myfolders/Book2.csv";
proc import datafile=employee dbms=csv  out=eduemp replace;
getnames=yes;
run;


data test;
input x;
cards;
1
2
3
4
5
6
7
;
run;

data test1;
set test;
if x>2 AND x<4 then y ="very good";
else if x>5 then y="good";
else y="bad";
run;



















