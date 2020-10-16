%let project_name = GitWorkflow1;
%let project_path = c:\users\&SYSUSERID.\MySASProjects\&project_name;

/* ODS printing of pdf file to output folder - 
   Write a pdf to output folder
   Line added by this developer in EG 
   Line added by "another" developer in github
   Yet another line added by this developer in git
   And another one, and another one!
*/
ods pdf file="&project_path\output\class.pdf";
proc print data=sashelp.class;
run;
ods pdf close;
