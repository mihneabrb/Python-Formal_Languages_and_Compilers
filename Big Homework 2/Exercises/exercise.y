/* Exercise 5. Make calculator also run with float numbers. */

//Definitions Section
%{
#include <stdio.h>
#include <stdlib.h>
#include <math.h>

/*Lex  includes  this  file  and  utilizes  the  definitions  for  token  values.  
To  obtain  tokens  yacc  calls  yylex.  Function  yylex  has  a  return  type  
of  int  that  returns  a  token */

extern int yylex();
extern int yyparse();
extern FILE* yyin;

/*yyerror is used to generate an error in case something is wrong.
It's also called in main function */
void yyerror(const char* s);
%}

//Rules Section
%union {
	int ival;
	float fval;
}
//This is where YACC generates a parser in file y.tab.c and an include file y.tab.h
%token<ival> T_INT
%token<fval> T_FLOAT 


%token T_PLUS T_MINUS T_TIMES T_DIVIDE T_POWER T_LEFT T_RIGHT
%token T_NEWLINE

%type<ival> expression_1
%type<fval> expression_2


%start calculation

%%

calculation:
	   | calculation line
;

line: T_NEWLINE
    | expression_1 T_NEWLINE { printf("\tResult: %i\n", $1); }
    | expression_2 T_NEWLINE { printf("\tResult: %f\n", $1); }

;


expression_1: T_INT				{ $$ = $1; }
	  | expression_1 T_PLUS expression_1	{ $$ = $1 + $3; }
	  | expression_1 T_MINUS expression_1	{ $$ = $1 - $3; }
         | expression_1 T_TIMES expression_1       { $$ = $1 * $3; }
         | expression_1 T_DIVIDE expression_1      { $$ = $1 / $3; }
         | T_LEFT expression_1 T_RIGHT           { $$ = $2; }
         | expression_1 T_POWER expression_1       { $$ = $1 ^ $3; }
         
;

expression_2: T_FLOAT				{ $$ = $1; }
	  | expression_2 T_PLUS expression_2	{ $$ = $1 + $3; }
	  | expression_2 T_MINUS expression_2	{ $$ = $1 - $3; }
         | expression_2 T_TIMES expression_2       { $$ = $1 * $3; }
         | expression_2 T_DIVIDE expression_2      { $$ = $1 / $3; }
         | T_LEFT expression_2 T_RIGHT           { $$ = $2; }
         | expression_2 T_POWER expression_2       { $$ = $1 ^ $3; }
         
;

%%

int main() {
	yyin = stdin;

	do {
		yyparse();
	} while(!feof(yyin));

	return 0;
}

void yyerror(const char* s) {
	fprintf(stderr, "Parse error: %s\n", s);
	exit(1);
}