/* 
Create 2 datasey for employee with 1 datset having name and experince and other
one having name and tecnology only 4 employee in both records

name
Ammy
Gabriel
John
Jackson

exp
2
4

6

techonology
JavaScript

SAS
ML
*/

data employee;
input name$ experience;
cards;
Ammy 2
Gabriel 4
Jackson 6
;
run;

data employee1;
input name$ technology$10.;
cards;
Ammy JavaScript
Jackson ML
John SAS
;
run;

data output;
merge employee employee1;
by name;
run;

