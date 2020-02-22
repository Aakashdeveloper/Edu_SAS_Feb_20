data marks;
set work.eduemp;
if Hindi>50 then Hindi=Hindi;
else Hindi=.;
Keep Hindi English;
run;
