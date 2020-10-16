%let project_name = GitWorkflow2;
%let project_path = c:\users\&SYSUSERID.\MySASProjects\&project_name;

/* ODS printing of pdf file to output folder - 
   Write a pdf to output folder
   Line added by this developer in EG 
   Line added by "another" developer in github
   Yet another line added by this developer in git
   And another one, and another one!
*/
ods listing;
ods pdf file="&project_path\output\class.pdf";
ods html5 file="&project_path\output\class.html";
ods excel file="&project_path\output\class.xls";
ods rtf file="&project_path\output\class.rtf";
proc print data=sashelp.class;
run;
ods _all_ close;
