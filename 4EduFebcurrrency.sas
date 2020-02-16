data mycur;
informat price dollar8.;
format price dollar8.;
input price;
cards;
$1000000
;
run;

proc print data=mycur;
run;


data mycur;
informat price nlmnleur15.2;
format price nlmnleur15.2;
input price;
cards;
€1000000
;
run;

proc print data=mycur;
run;
