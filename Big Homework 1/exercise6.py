# Exercise 6. Using argparse, create a program that takes as input a csv file and splits it in multiple csv files, depending on how many rows the user wants to have in each new file. (e.g., if you use a .csv with 11 rows and the user wants it split into files with 4 rows each, then 3 csv files should be created)

import csv

outfile = open("example_new.csv", 'w')
outfile_header = "Actors ID Number, Actors First Name, Actors Last Name, Actors Age\n"
outfile.write(outfile_header)
with open("example.csv", 'r') as infile:
	reader = csv.reader(infile, delimiter=",")
	header = next(reader)
	for row in reader:
		actors_ID_number = row[0]
		actors_first_name = row[1]
		actors_last_name = row[2]
		actors_age = row[3]
		line = "{},{},{},{}\n".format(actors_ID_number, actors_first_name, actors_last_name, actors_age)
		outfile.write(line)
		open
outfile.close()
		
