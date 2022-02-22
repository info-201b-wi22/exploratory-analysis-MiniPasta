#Angela Li
#You should write code to produce a table of aggregate information about it. 
#It must perform a group_by() operation to show a dimension of the dataset as grouped by a particular feature (column). We expect the included table to:
## Have well-formatted (i.e., human readable) column names (so you'll probably have to change them)
##Only contain relevant information (i.e., only select some columns of interest)
##Be intentionally sorted in a meaningful way
##Round any quantitative values so they are displayed in a manner that isn't distracting
#When you display the table in your index.Rmd file, you must also describe why you included the table, and what information it reveals.

#read in data
table <- read.csv('https://raw.githubusercontent.com/info-201b-wi22/exploratory-analysis-MiniPasta/main/archive/netflix_titles.csv?token=GHSAT0AAAAAABQJQPQGV54RWO526HV327CWYQ3FKJQ')
View(table)

#load dplyr
library(dplyr)

#extract relevant information
df<- data.frame(Type=table$type, Title=table$title, Release_Year=table$release_year, Rating=table$rating,Listen_In=table$listed_in)

attach(df)
sorted<- df[order(type, release_year),]


