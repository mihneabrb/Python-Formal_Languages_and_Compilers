/* Exercise 5. Make calculator also run with float numbers. */

%option noyywrap

%{
#include <stdio.h>
#include <math.h>

#define YY_DECL int yylex()

#include "exercise.tab.h"

%}

%%


[ \t]	;
[0-9]+		{yylval.ival = atoi(yytext); return T_INT;}
[0-9]+"."[0-9]+ 	{yylval.fval = atof(yytext); return T_FLOAT;} /* The same mindset goes for adding float, there are just a few differences when it comes to the syntax. */
\n		{return T_NEWLINE;}
"+"		{return T_PLUS;}
"-"		{return T_MINUS;}
"*"             {return T_TIMES;}
"/"             {return T_DIVIDE;}
"("             {return T_LEFT;}
")"             {return T_RIGHT;}
"^"             {return T_POWER;}

 

%%
