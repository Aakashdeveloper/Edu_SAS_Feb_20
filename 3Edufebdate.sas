Data userinfo;
informat DOB date9.;
format DOB ddmmyy10.;
input DOB;
datalines;
20feb1960
;
run;
proc print data=userinfo;
run;


data julinedata;
informat DOB julian5.;
format DOB date9.;
input DOB;
cards;
20047
;
run;
proc print data=julinedata;
run;





