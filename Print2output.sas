%let project_name = GitWorkflow2;
%let project_path = c:\users\&SYSUSERID.\MySASProjects\&project_name;

/* ODS printing of pdf file to output folder - 
   Write a pdf to output folder
   Write a html to output folder
   Write a xls to output folder
*/
ods listing;
ods pdf file="&project_path\output\class.pdf";
proc print data=sashelp.class;
run;
ods _all_ close;
