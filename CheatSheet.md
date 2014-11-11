# R Cheat Sheet
## Will update as I go.

<li> Easiest way to get to help is to type question mark and function name.
<code>
? read.table()
</code>
<p>This will open documentation for the specific function typed after question mark.</p>
</li>

<ul>
<li>Install Packages:
<code>
install.packages("package_name")
</code>
</li>

<li>Load Packages:
<code>
library(package_name)
</code>
</li>

<li>Get Working Directory:
<code>
getwd()
</code>
</li>
 
<li>Read CSV:
<code>
read.csv("file_name_which_is_in_my_WD")
</code>
</li>
 
<li>Get List of Directory & Files in WD:
<code>
dir()
</code>
</li>
 
<li>List Functions:
<code>
ls()
</code>
</li>
 
<li>Load R code in the Console:
<code>
source("code_file_name.R")
</code>
<p>This way you can use functions present in your R file.</p>
<p>To see the list of functions loaded in the console, hit:</p>
<code>
ls()
</code>
</li>

<li>To Clear your console:
<code>
CTRL + L
</code>
</li>

<li>Read data set from the web:
<code>
read.table("url_to_the_txt_file_which_contains_data")
</code>
<p>Example data: (http://s3.amazonaws.com/assets.datacamp.com/course/dasi/present.txt)</p>
<p>Its easy to assign the data to a variable just do:</p>
<code>
variable_name = read.table("url_to_the_txt_file_which_contains_data")
</code>
</li>


<li>Know the structure of data:
<code>
dim(data_frame_name)
</code>
<p>This will return
* an index
* number of rows
* number of columns

Data frame is nothing but a variable where the data is stored.

</p>
</li>

<li>Print the names of the columns:
<code>
names(data_frame_name)
</code>
<p>This will return names of the columns</p>
</li>

<li>Print out all values for a variable. Or print out the vectors.
<code>
data_frame_name$variable_name
</code>
<p>This will print out all the values for variable. This printout is known as vectors.</p>
</li>

<li>Assign vectors to a new variable:
<code>
new_variable_name = data_frame_name$variable_name
</code>
<p>This will store vectors to a new variable</p>
</li>


<li>Plot a simple graph:
<code>
plot(x,y)
</code>
<p>x and y can be variables storing vectors.</p>
</li>

<li>Now I will introduce type of plots. 
<code>
plot(variable_name_1,variable_name_2,type="l")
</code>
<p>Type can be l,o etc.Refer documentation for more details.</p>
</li>

<li>Plot a bar graph for Categoical data. E.g. plotting gender barplot.
<code>
barplot(data_frame_name$column_name)
</code>
<p></p>
</li>
<<<<<<< HEAD


<li>Plot a mosaicplot.
<code>
mosaicplot(table(data_frame_name$column_name,data_frame_name$column_name))
</code>
<p></p>
</li>


<li> Load .Rdata from url.
<code>
load(url("url_to_the_.Rdata_file"))
</code>
<p>One could always assign to a variable while loading.</p>
</li>


<li> To get the names of the variables. Or names that represent values in the column.
<code>
names("name_of_the_data_frame_or_Matrix")
</code>
<p></p>
</li>


<li> If the data set is very large, to look at first few and last few data set use :
<code>
head("name_of_the_data_frame_or_Matrix")
</code>
Or
<code>
tail("name_of_the_data_frame_or_Matrix")
</code>
<p></p>
</li>


<li>Turning info into knowledge - Numerical data. Find mean, median, variance etc.
<code>
mean(dataSet$column_name)
var(dataSet$column_name)
median(dataSet$column_name)
summary(dataSet$column_name)
</code>
<p>Summary gives bunch of data in free.</p>
</li>


<li> For Categorical data, we may want to get a count. This can be done using table() function.
<code>
table(data_frame_name$column_name)
</code>
<p>Use multiple columns to get a table with respective data</p>
<code>
table(data_frame_name$column_name, data_frame_name$column_name)
</code>
<p>To find relative frequency device the result from the table() function by total number of observations in the data frame.</p>
</li>


<li>
<code>
</code>
<p></p>
</li>