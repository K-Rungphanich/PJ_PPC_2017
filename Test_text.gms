Set
         i       master set of sites / i1  Seattle, i2  Portland,i3  San Francisco, i4  Los Angeles, i5 /
         j       subset of sites     / i3 * i5 / ;

parameter
         n       something;

Variable
         m(i)    Tester;

File out / D:\Google Drive\PJ_PPC\Code\Ex\Text export\report.txt /;
*used to declare text file name and location

out.ap=0;
*Set to 0 to overwrite the file
*Set to 1 to not overwrite the file

out.ps=130;
*used to increase line

put out ;
*used to open file

* / = next line
* system.tab = tab

*******************************************************************************
*Text value
put 'Text and Set part'/;
*******************************************************************************
put i.ts system.tab n.ts system.tab m.ts/;
*.ts used to displays the descriptive text

loop(i,
         put i.tl, i.te(i) /;
*.tl used to displays the set name, use with loop command
*.te used to displays the explaination of that index
);

********************************************************************************
*Parameter
put 'Parameter part'/;
********************************************************************************
for(n=1 to 100,
         put n system.tab n /;
*same as put n,system.tab,n /;
);

********************************************************************************
*Variable
put 'Variable part'/;
********************************************************************************
n=1;
loop(i,
         m.l(i) = n*n;
         put n system.tab m.l(i)/;
         n=n+1;
*used suffix of variable to write file
*.l to write value
);

********************************************************************************
*System
********************************************************************************
put 'run at ',system.date,' ',system.time/;
putclose out;
*used to close file