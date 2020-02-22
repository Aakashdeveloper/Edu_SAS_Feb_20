/*Combining data set
1.) One To One
2.) Concat
3.) Interleaving
4.) Merging
*/

data data1;
input x y;
cards;
1 2
3 4
5 6
;
run;


data data2;
input a b;
cards;
12 13
14 15
16 17
18 19
;
run;

/* 1 One to One*/
data data3;
set data1;
set data2;
run;


data data2;
input a b;
cards;
12 13
14 15
16 17
28 19
;
run;

data data5;
input a b c$;
cards;
10 15 a
20 30 b
40 50 c
60 70 d
80 90 e
;
run;



/*Concat*/
data data4;
set data2 data5;
run;


/*Interleaving (sort by)*/
data data6;
set data5 data2;
by b;
run;

/*Merge*/
data emp1;
input num empcode1$;
cards;
1 a1
2 a2
3 a3
4 a4
;
run;

data emp2;
input num empcode2$;
cards;
1 b1
2 b2
3 b3
4 b4
5 b5
;
run;


data final;
merge emp1 emp2; 
by num;
run;








