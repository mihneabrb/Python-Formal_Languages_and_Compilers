/* Exercise 1. Extend the exercise done in HW9 (Lab Flex) by also adding a counter for the number of pronouns, verbs, adjectives, nouns, prepositions, and digits. (Hint: the count variables should be added in the 1st section of the code and the yywrap() should be put in the 3rd section) */

%{
#include<stdio.h>
#include<string.h>
int nr_pronouns = 0, nr_adjectives = 0, nr_nouns = 0, nr_verbs = 0, nr_prepositions = 0, nr_digits = 0;
%}
  
%%

((mine)|(I)|(my)|(he)|(him)|(she)|(her)|(you)|(they)|(them)|(we)|(us)|(it))* {
	nr_pronouns++;
	 /* This flex syntax is supposed to identify the pronouns from the upper list. Once it reaches one of them, the phrase is shortened (with that part of speech) and variable that counts them increases. This also applies for the other parts of speech. */
  
"\n"; 	printf("\nHere is a pronoun : "); 
        printf("%d\n", nr_pronouns);} 

((talented)|(brilliant)|(amazing)|(pretty)|(sad)|(quite)|(sweet)|(caring)|(friendly)|(happy))* {
	nr_adjectives++;

"\n";	printf("\nHere is an adjective : ");
        printf("%d\n", nr_adjectives);}
        
((table)|(plant)|(game)|(phone)|(lamp)|(carpet)|(book)|(sock)|(pillow)|(apple)|(cup))* {
	nr_nouns++;

"\n";	printf("\nHere is a noun: ");
        printf("%d\n", nr_nouns);}
        
((love)|(exist)|(eat)|(invest)|(help)|(calculate)|(evaluate)|(rank)|(learn)|(teach)|(drive))* {
	nr_verbs++;

"\n";	printf("\nHere is a verb: ");
        printf("%d\n", nr_verbs);}
        
((and)|(at)|(in)|(on)|(over)|(under)|(behind)|(but)|(though)|(whenever)|(by))* {
	nr_prepositions++;

"\n";	printf("\nHere is a preposition: ");
        printf("%d\n", nr_prepositions);}
        
((0)|(1)|(2)|(3)|(4)|(5)|(6)|(7)|(8)|(9))* {
	nr_digits++;

"\n";	printf("\nHere is a digits: ");
        printf("%d\n", nr_digits);}


%%
  
int yywrap(void){}
  
int main()
{   
    /* From here, the string that is written will go through a process that will dissect each word to see with what part of speech is, the variables will continue to increase till it reaches the end of the phrase. To reveal the total number of each part of speech, check the final outputs of the program. */
    printf("\nType whatever you please : ");
    yylex();
    printf("\n");
  
    return 0;
}