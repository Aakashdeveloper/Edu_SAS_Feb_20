/*Code for basic SAS exceution*/
* This is our first SAS code;
data instream_mtcars;
informat cars$12.;
input cars$ mpg cyl disp hp drat;/*Variable*/
/*Observation*/
format cars$6. drat 4.3;
cards;
Mercedes_AMG 21 6 160 110 3.1167
BMW_X1_AUT0 22.8 4 108 93 3.85
;
run;

proc print data=instream_mtcars;
run;