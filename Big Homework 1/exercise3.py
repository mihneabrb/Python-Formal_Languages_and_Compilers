import re
  
# Exercise 3.  Write a Python program, using regular expressions, that finds URLs in a given string (an URLhas the structure: protocol://subdomain.domain-name.top-level-domain path, where the subdomain is optional). Provide at least 4 examples.  
  
def URL_finder(string):
  
    # The Structure of the URL is: Protocol, Subdomain, Domain name, Top Level Domain(TLD) and Path
    regex = r"(?i)\b((?:https?://|www\d{0,3}[.]|[a-z0-9.\-]+[.][a-z]{2,4}/)(?:[^\s()<>]+|\(([^\s()<>]+|(\([^\s()<>]+\)))*\))+(?:\(([^\s()<>]+|(\([^\s()<>]+\)))*\)|[^\s`!()\[\]{};:'\".,<>?«»“”‘’]))"
    url = re.findall(regex,string)      
    return [x[0] for x in url]
      
# Driver Code
string1 = 'My Profile: https://auth.geeksforgeeks.org/user/Chinmoy%20Lenka/articles in the portal of https://www.geeksforgeeks.org/'
string2 = "You should go and stream https://www.youtube.com/watch?v=1rk0HwrMab4&list=RD1rk0HwrMab4&start_radio=1 it is a really good song"
string3 = "My advice is that if you want to learn about the game is to check this link https://silenthill.fandom.com/wiki/Silent_Hill_2, it is really good trust me"
string4 = "When I want to learn something about coding I use https://www.w3schools.com/python/python_for_loops.asp and I get an idea of I could do"
print("The URL from the string is: ", URL_finder(string1))
print("The URL from the string is: ", URL_finder(string2))
print("The URL from the string is: ", URL_finder(string3))
print("The URL from the string is: ", URL_finder(string4))
