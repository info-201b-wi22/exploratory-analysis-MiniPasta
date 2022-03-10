#Angela Li
#You should write code to produce a table of aggregate information about it. 
#It must perform a group_by() operation to show a dimension of the dataset as grouped by a particular feature (column). We expect the included table to:
##Have well-formatted (i.e., human readable) column names (so you'll probably have to change them)
##Only contain relevant information (i.e., only select some columns of interest)
##Be intentionally sorted in a meaningful way
##Round any quantitative values so they are displayed in a manner that isn't distracting
#When you display the table in your index.Rmd file, you must also describe why you included the table, and what information it reveals.

#read in data

#load dplyr
library(dplyr)

#extract relevant information
df<- data.frame(Type=data$type, Title=data$title, Release_Year=data$release_year, Rating=data$rating,Listed_In=data$listed_in)

#use group_by to see how many movies and tv shows released each year
grouped_movie_data<- df %>% group_by(Release_Year) %>%filter(Type == "Movie") %>% summarise(count = n())
grouped_tv_data<- df %>% group_by(Release_Year) %>%filter(Type == "TV Show") %>% summarise(count = n())
grouped_data<- merge(grouped_movie_data,grouped_tv_data, by="Release_Year")
colnames(grouped_data) <- c('Release Year','Movies','TV Shows')

#data is intentionally sorted by type and then ordered by release year
attach(df)
df<- df[order(Type, Release_Year),]


