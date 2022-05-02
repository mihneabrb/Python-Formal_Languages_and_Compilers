/* Exercise2. Create a flex file which recognizes if a given string is a word or a number. (Hint: Not like the vowel exercise, here we have 3 possibilities: word, number, other)  */

%{
#include<stdio.h>
#include<stdlib.h>
%}
/* Rule Section */
%%

[0-9]+  printf("NUMBER"); /* This one recognizes numbers. */
[a-zA-Z]+  printf("WORD"); /* This one recognizes words. */
.+ printf("OTHER"); /* This one recognizes other symbols that do not fit in any category. */

%%
int main()
{
        // The function that starts the analysis
        printf("\nType whatever you please : ");
        yylex();
        return 0;
}