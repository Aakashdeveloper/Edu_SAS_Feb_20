/* Use already avaiable data set*/
proc print data=SASHELP.fish;
run;

/*Create Our own lib dataset*/
/* libname <libref> "location";*/
libname edulib "/folders/myfolders/";
data edulib.mtcars;
input cars$ mpg cyl hp;
cards;
Mercedes_AMG 21 6 160
BMW_X1_AUTO 22.1 4 180
;
run;

proc print data=edulib.mtcars;
run;