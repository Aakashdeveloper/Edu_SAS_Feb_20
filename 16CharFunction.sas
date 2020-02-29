data chardata;
input nameage $10.0;
datalines;
24Ammy
28John
37jackson
;
run;
proc print data=chardata;
run;

data charout;
set chardata;
drop nameage;
age= substr(nameage,1,2);
name=substr(nameage,3);
run;

/* substr(value,starting position,end position)*/
proc print data=charout;
data;


data charout1;
set chardata;
age = reverse(nameage);
run;
proc print data=charout1;
data;


data charout2;
set chardata;
age = reverse(substr(left(reverse(nameage)),1,2));
run;
proc print data=charout2;
data;

/*Compress remove extra space)*/
data charout3;
set chardata;
age = compress(lowcase(nameage));
run;
proc print;
run;

/* RemoveSpecial Characters*/
data chardata4;
str = 'Ab@$#!toyu$m';
name = compress(str,'@$#!');
run;
proc print;
run;

/*Format phone number*/
data chardata5;
input phnum $20.;
cards;
+44 6788 678236
011 +44 7847382297
080 7847382297 +44
+31 989 7847382297
;
run;
proc print data=chardata5;
run;


data chardata6;
set chardata5;
*a = index(phnum, '+44');
if index(phnum, '+44')>0 then substr(phnum,index(phnum,'+44'),3)='+91';
run;
proc print data=chardata6;
run;


data chardata7;
input phnum $20.;
cards;
(+44) 679 88678236
  (+44) 011 7847382297
(+44)080 7847382297 
(+31) 989 7847382297
;
run;

/*Scan(string,n,dalimater)*/
data chardata8;
set chardata7;
ISD= scan(phnum,1,',');
STD= scan(phnum,2);
PH= scan(phnum,3);
run;
proc print data=chardata8;
run;


data countries;
x = "Russia AUSTRALIA Usa";
y = find(x, 'US','i');
z = index(x,'US');
run;
proc print data=countries;
run;

/*Concat*/
data chardata9;
x= 'What ';
y= 'Is ';
z= 'AI ';
all= x||y||z;
all1=cat(x,y,z);
all2=trim(left(x))||trim(left(y))||trim(left(z));
run;
proc print;
run;








