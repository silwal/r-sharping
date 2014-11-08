#This is all about loading data set into R
#Here I will be loading data from the web using following url and assign it to a data_frame called present
#Data URL: http://s3.amazonaws.com/assets.datacamp.com/course/dasi/present.txt

present = read.table("http://s3.amazonaws.com/assets.datacamp.com/course/dasi/present.txt")

#This will return structure of the data
#index,number of rows, and number of columns
dim(present)
#Example output: [1] 63  3

#This will return names of the columns
#index,names of the columns
names(present)
#Example output: [1] "year"  "boys"  "girls"

#Column names can be treated as variables.
#All values of a variable can be printed like this
#data_frame_name$variable_name
#this will print all values under boys. The printout is known as vectors.
present$boys

#this will print all values under girls. The printout is known as vectors.
present$girls

#this will print all values under year. The printout is known as vectors.
present$year

#these can be assigned to another new variable.
#variable_name = data_frame_name$variable_name
boys = present$boys
girls = present$girls
year = present$year

#Now lets use plot funtion to see it in graph.
#Here I will use plot() function and pass variables for x and y axes.
#This will plot years in x-axis and girls in y-axis.
plot(year,girls)

#Now I will introduce type of plots.
#Type can be l,o etc. 
plot(year,girls,type="l")
#other way of doing it
plot(present$year,present$girls,type="l")