data students;
infile '/folders/myfolders/Book1.csv' dlm=',' ;
input Name$ Class Hindi English;
*input v1 v2 v3 v4;
run;
proc print data=students;
run;

data mystudents;
filename marks 
'/folders/myfolders/Book1.csv';
input Name$ Class Hindi English;
run;


proc import datafile=marks dbms=csv out=edumarks replace;
run;

proc print data="WORK.edumarks";
run;


data test1;
infile '/folders/myfolders/Book1.csv' dlm=',';
input Name$ Class Hindi English;
run;
set test1(Keep=Hindi English);
proc print data=test1;
run;



