import re

#Write a Python program, using regular expressions, that as a first step, switches the case of letters and, after that, as a second step, it removes the uppercase letters from a given string.(e.g., StuDeNT becomes sTUdEnt in the first step and sdnt in the second one). Print both steps. Provide at least 4 examples.

# First step: Function that will turn the uppercase into lowercase and vice versa.

s1="MihNEa"
new_str1=""
for i in range (len(s1)):
    if s1[i].isupper():
        new_str1+=s1[i].lower()
    elif s1[i].islower():
        new_str1+=s1[i].upper()
    else:
        new_str1+=s1[i]
print("The first step of the exercise will manifest this way:", new_str1)

s2="HaBArNAm"
new_str2=""
for i in range (len(s2)):
    if s2[i].isupper():
        new_str2+=s2[i].lower()
    elif s2[i].islower():
        new_str2+=s2[i].upper()
    else:
        new_str2+=s2[i]
print("The first step of the exercise will manifest this way:", new_str2)

s3="StuDeNT"
new_str3=""
for i in range (len(s3)):
    if s3[i].isupper():
        new_str3+=s3[i].lower()
    elif s3[i].islower():
        new_str3+=s3[i].upper()
    else:
        new_str3+=s3[i]
print("The first step of the exercise will manifest this way:", new_str3)

s4="IsTHIsOvERYet"
new_str4=""
for i in range (len(s4)):
    if s4[i].isupper():
        new_str4+=s4[i].lower()
    elif s4[i].islower():
        new_str4+=s4[i].upper()
    else:
        new_str4+=s4[i]
print("The first step of the exercise will manifest this way:", new_str4)


# Second step: Function to remove uppercase characters after doing the first step
def removingUpperCaseCharacters(str1):
 
    # Create a regular expression
    regex = "[A-Z]"
 
    # Replace every matched pattern with the target string using sub() method
    return (re.sub(regex, "", str1))

str1 = new_str1
str2 = new_str2
str3 = new_str3
str4 = new_str4
print("After removing uppercase characters:", removingUpperCaseCharacters(str1))
print("After removing uppercase characters:", removingUpperCaseCharacters(str2))
print("After removing uppercase characters:", removingUpperCaseCharacters(str3))
print("After removing uppercase characters:", removingUpperCaseCharacters(str4))


