data test;
file employee "/folders/myfolders/Book2.csv";
proc import datafile=employee dbms=csv out=test1 replace;
getnames=yes;
run;




/*Format Data*/
proc format;
value feedback
0-3 ='fail'
4-6= 'pass'
7-10='Exce'
;
run;
data test2;
set test1;
format Result feedback4.0;
run;
proc print data=test2;
run;

/*Frequency*/
proc freq data = test2;
tables Result /nofreq nocum;
run;

/*Sampling*/
proc Surveyselect
data = test2
method=srs
sampsize=10
reps=1
out=test3;a
run;
proc print data=test3;
run;
proc freq data = test3;
tables Result /nofreq nocum;
run;

/*Mean*/
proc means data=test2;
var Result;
run;

/*Sort*/
data sort1;
set sashelp.shoes;
proc sort data=sort1;
by Returns descending Sales;
run;
proc print data=sort1;
run;


/*Proc Univariate*/
proc univariate data=sort1;
var Stores Inventory;
run;

proc univariate data=sort1 normal plot;
var Stores Inventory;
run;


proc corr data=sort1;
var Stores Sales;
run;


proc rank data=sort1 out=rank1 group=5;
var Sales;
ranks s_rank;
run;

proc sort data=rank1;
by  Sales;
run;
proc print data=rank1;
run;







