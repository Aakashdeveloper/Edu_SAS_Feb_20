/*Add number of month to current date*/
data data1;
x=today();
mydata = intnx('Month',today(),2);
format mydata x date9.;
run;

proc print data=data1;
run;

/*Add number of days to current date*/
data data1;
x=today();
mydata = intnx('Day',today(),2);
format mydata x date9.;
run;

proc print data=data1;
run;

data data1;
mydata = put(intnx('Month',today(),2),date9.0);
run;

proc print data=data1;
run;

/*Calculate diff between 2 dates*/

data data2;
year = intck('Year','29feb2020'd,'05apr2020'd);
month = intck('Month','29feb2020'd,'05apr2020'd);
days = intck('Days','29feb2020'd,'05apr2020'd);
run;

proc print data=data2;
run;
