chart_3 <- read.csv('https://raw.githubusercontent.com/info-201b-wi22/exploratory-analysis-MiniPasta/main/archive/netflix_titles.csv?token=GHSAT0AAAAAABQJQPQGV54RWO526HV327CWYQ3FKJQ')

install.packages("reshape2")
library("tidyverse")
library("dplyr")
library(reshape2)
library("ggplot2")
num_tvshow_each_year <- chart_3 %>% group_by(release_year) %>% filter(type == "TV Show") %>% summarise(count = n())
num_mov_each_year <- chart_3 %>% group_by(release_year) %>% filter(type == "Movie") %>% summarise(count = n())

test3 <- ggplot() +
  geom_smooth(data = num_tvshow_each_year, mapping = aes(x = release_year, y = count), color = "blue") +
  geom_smooth(data = num_mov_each_year, mapping = aes(x = release_year, y = count), color = "green") + xlab("Year Released") + ylab("Number") + ggtitle("Movie Growth(green) vs TV Show Growth(blue)")

#The purpose of including this chart is to see the difference in the trends between movies and tv shows over the course of the years. 
#There's a chance that people prefer movies now today versus tv shows or vice versa. This can also give a perspective on the entertainment industry.
#If movies are currently growing more than tv shows, it might be better to make a movie because of it's growth or it could be better to create a tv show because 
#theres less competition. It really depends on the goal of creating this entertainment. Looking at this graph, we can see that the growth in movie is much steeper than 
#that of tv shows which indicates that people today have preferred movies over tv shows on Netflix. 

