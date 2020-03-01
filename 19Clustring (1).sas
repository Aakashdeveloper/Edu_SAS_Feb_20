data clus1;
set SASHELP.shoes;
run;

proc fastclus data=clus1 maxc=7 maxiter=50 out=clus2;
var Sales Returns;
run;
proc print data=clus2;
run;


proc cluster data=clus1 method=centroid rmsstd
outtree = cluster_shows;
var Sales Returns;
run;



data test;
set sashelp.class;
run;

proc reg data=test;
model height=weight;
run;
quit;


proc reg data=clus1;
model Sales=Returns;
run;
quit;

proc logistic data=test;
model age=  height weight;
run;
quit;

