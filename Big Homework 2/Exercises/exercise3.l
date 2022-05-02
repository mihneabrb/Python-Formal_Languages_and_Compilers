/*  Exercise 3. Create a flex file which recognizes if a given string is an email address */

%{

#include<stdio.h>
#include<stdlib.h>
int flag=0;

%}
%%

[a-z . 0-9]+@[a-z]+".com"|".in" { flag=1; }  /* this flex syntax is able to differentiate the string that is written via user input and decide if it corresponds to the valid structure */

%%
void main()
{
printf("\nInsert E-mail address here : "); /* This is where you can type whatever input you desire in order for the code to start its procedure. */
yylex();
printf("\n");

if(flag==1)
printf("The E-mail address that was inserted is VALID :) ");
else
printf("The E-mail address that was inserted in NOT VALID :(");
}
 
/* Type your E-mail address after the message is displayed and in order to see the output, press Enter + Ctrl + D from keyboard */