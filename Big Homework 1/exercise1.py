import re

# Exercise 1 Write a Python program, using regular expressions, that converts a given string into snake case (style of writing in which each space is replaced by an underscore (_) character, and the first letter of each word written in lowercase; e.g. Hello JavaScript becomes hello_java_script). Provide at least 4 examples.

text = "Naevis We Love You"
text2 = "Merry Christmas Everyone"
text3 = "Hope Is A Dangerous Thing To Have"
text4 = "I Ate An Orange"
replace_letters = {" ": "_"}
#convert text to lowercase
#print(text.lower())

for letter in replace_letters:
    text = re.sub(letter, replace_letters[letter], text)
for letter in replace_letters:
    text2 = re.sub(letter, replace_letters[letter], text2)
for letter in replace_letters:
    text3 = re.sub(letter, replace_letters[letter], text3)
for letter in replace_letters:
    text4 = re.sub(letter, replace_letters[letter], text4)

print("After the execution, the text will look like this: ", text.lower())

print("After the execution, the text will look like this: ", text2.lower())

print("After the execution, the text will look like this: ", text3.lower())

print("After the execution, the text will look like this: ", text4.lower())