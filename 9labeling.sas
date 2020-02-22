/*rename*/
data test;
infile '/folders/myfolders/Book1.csv' dlm=",";
input Name$ Class Hindi English;
run;


data test1;
set test (rename=(name=fname)) ;
proc print data=test1;
run;

/*Labelling*/

data test2;
set test;
label name="First Name of the employee";
proc print data=test2;
run;
