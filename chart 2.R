chart_2 <- read.csv('https://raw.githubusercontent.com/info-201b-wi22/exploratory-analysis-MiniPasta/main/archive/netflix_titles.csv?token=GHSAT0AAAAAABQJQPQGV54RWO526HV327CWYQ3FKJQ')
View(chart_2)
#Chart of the number of TV shows and movies based on ratings and the released year
library(ggplot2)
library(dplyr)

options(scipen = 999)

ggplot(data = chart_2) +
  geom_point(aes(x=rating, y = release_year)) + ggtitle("Netflix's ratings and released years")

#Purpose
## The purpose of this chart is to allow us to see all the types of ratings that exist in Netflix's streaming service and
## also compare it to the release year of that show or movie.

#Insight
## This chart compares the ratings to the year that the show or movie is released. We can see which type of rating Netflix 
## favors and has more content on compared to other ratings. It also reveals what type of content might attract the audience
## more to increase user friendly experience. This data set includes shows and movies that are released from the early 1920s
## to the early 2020s with a variety of different ratings.