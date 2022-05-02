/* Exercise 4. Create a flex file which counts how many words start with a capital letter. */

%{
#include<stdio.h>
#include<string.h>
int i = 0;
%}
  
%%
[A-Z]+   {i++;} /* This flex syntax is able to differentiate the words that start with a capital letter from those who do not. */
  
"\n" {printf("\nThe number of words that start with a capital letter is : ");} {printf("%d\n", i); i = 0;} 
%%
  
int yywrap(void){}
  
int main()
{   
    /* From here, the string that is written will go through a process that will dissect each word to see with what type of letter it starts. */
    printf("\nType whatever you please : ");
    yylex();
    printf("\n");
  
    return 0;
}