
dfRemain <- data[-c(5542, 5795, 5814, 7538, 7313, 6828, 5990), ]
#Chart of the number of TV shows and movies based on ratings and the released year
library(ggplot2)
library(dplyr)

options(scipen = 999)

test2 <- ggplot(data = dfRemain) +
  geom_point(aes(x=rating, y = release_year)) + ggtitle("Netflix's ratings and released years")


#Purpose
## The purpose of this chart is to allow us to see all the types of ratings that exist in Netflix's streaming service and
## also compare it to the release year of that show or movie. This provides a history of the industrial discourses surrounding
## Netflix's audience data. This analysis concludes the discussion of streaming audience data that situates in the emerging's
## realities of "popular" television in the context the medium's broader transformation and continuities.


#Insight
## This chart compares the ratings to the year that the show or movie is released. We can see which type of rating Netflix
## favors and has more content on compared to other ratings.

##It also reveals what type of content might attract the audience more to increase user friendly experience.

##This data set includes shows and movies that are released from the early 1920s to the early 2020s with a variety of
## different ratings.

##It can further show how Netflix use analytics to select movies and create contents.
