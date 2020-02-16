data test;
informat cgp percent5.;
format cgp percent5.;
input cgp;
cards;
50%
;
run;
proc print data=test;
run;

data test1;
informat TOB time8.;
format TOB time8.;
input TOB;
datalines;
00:12:22
;
run;
proc print data=test1;
run;

data test2;
informat DOB date9. Time time8.;
format DOB date9. Time time9.;
input DOB TIME;
cards;
12FEB2016 23:59:59
;
run;
proc print data=test2;
run;
