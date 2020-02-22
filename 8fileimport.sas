/*Import file in SAS*/
filename employee "/folders/myfolders/Book2.csv";
proc import datafile=employee dbms=csv  out=eduemp replace;
getnames=yes;
run;


/*Use WORK File*/
proc print data=work.eduemp;
run;


/*Use InlineFile*/
data test1;
infile '/folders/myfolders/Book1.csv' dlm=",";
input Name$ Class Hindi English;
run;

proc print data=test1;
run;


/*Keep the headers*/
data test;
infile '/folders/myfolders/Book1.csv' dlm=",";
input Name$ Class Hindi English;
run;

*proc contents data=test;
*run;


data test1;
set test;
Keep Name Hindi English;
*set test (Keep=Name Hindi English);
proc print data=test1;
run;

/*Keep Only Character*/
data test2;
set test;
keep _character_;
proc print data=test2;
run;



/*Drop Character*/
data test3;
set test;
drop _character_;
proc print data=test3;
run;



/*Keep Only Numeric*/
data test2;
set test;
keep _numeric_;
proc print data=test2;
run;











