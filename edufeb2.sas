Data city;
input name$ capital$;
cards;
Helsinki Finland
delhi Delhi
Mumbai Delhi
Nice Paris
;
run;

proc print data=city;
where capital='Delhi';
run;