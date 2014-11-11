##This will load cdc data frame (Rdata) file from the url.
load(url("http://s3.amazonaws.com/assets.datacamp.com/course/dasi/cdc.Rdata"))

##To print the names of the columns
names(cdc)

## The data frame is usually large. To get an idea of the dataset we are working on we can look at the head and tail of the data.
head(cdc)
tail(cdc)

##Turning info into knowledge - Categorical data
##To find number of data in a category, for example general health condition in this case, we can use table() funciton.
table(cdc$genhlth)

##To find relative frequncy we can divide outcome of the table by total number of records in our data frame.
##Relative frequncy : How often something happens divided by all outcomes.
## cdc data frame has 20000 recordds, we can see this by using dim() function.
dim(cdc)
## Not for relative frequncy
table(cdc$genhlth)/20000


## Now some of the categories have multiple values e.g. health conditions can have any of 5 values. Having a bar graph will help visualize this easier.
## Here I am using table nested inside barplot. Table will give number under each category, and barplot will plot it visually. 
barplot(table(cdc$genhlth))

## Mosaic Plot helps out plotting cases where we need to visualize data observed using two vectors.
## Example, how many men/women smokes/not-smoke.
## Here we will create a table using two columns of the same dataset. As both columns are boolean type we will get 2X2 matrix.
gender_smoke = table(cdc$gender,cdc$smoke100)

## How to select particular value?
## R stores data like in spread sheet. So there should be a way to access desired cell. 
names(cdc) ## This will give the column names.
## 6th column gives weight, so if we need to find out weight of the 101st record then we do
cdc[101,6] ## this will return 118


## How to select subset ? For example I want firs 20 data from the whole data_frame?
## We know that there are nine columns. And we want them all.
cdc[1:20,1:9]
## As in above you are getting all the columns, sometimes counting them can get too much, so its easy to just leave it blank, as it works!
cdc[1:20,] ## Will print all columns and shows top 20 data.
cdc[,6] ## Will print all the values in 6th column.

## If we want only weight of first 10 people.
cdc[1:10,6]


## Alternate way to display particular data is to use vector and giving value to its location.
cdc$weight[200] ## This will display weight value for 200th record.

## Similarly we can give a range as well.
cdc$height[1:20] ## This will display height information for top 20 records.


##Subset Function. subset(data_frame,data_frame$column_name operator "value")
## Gives me the subset of dataframe where it matches the condition in the second param.
subset(cdc,cdc$weight==40)
subset(cdc,cdc$genhlth=="very good")
subset(cdc,cdc$age > 50)
subset(cdc, cdc$age < 23 & cdc$smoke100 == 1)
## To find the count we can use dimensions
dim(subset(cdc,cdc$age < 23 & cdc$smoke100 == 1))


#Box Plot compare the graph with the data received from the summary() function.
boxplot(cdc$height)
summary(cdc$height)


## Versus operator. This can be used to box plot for example comparing across several categories.
boxplot(cdc$height ~ cdc$gender) ## plots height as per gender.

## Lets calculate BMI of the individuals in cdc data frame.
## Formula for BMI = (weight/(height*height))*703
bmi = (cdc$weight/(cdc$height * cdc$height)) * 703
## now to box plot bmi vs general health.
boxplot(bmi~cdc$genhlth)


## Histograms: Very good way to see the shape of single distribution.
hist(cdc$age)
## We can control the number of bars/bins in the historgram with breaks argument.
hist(cdc$age,breaks=15)
hist(bmi)





