chart_3 <- read.csv('https://raw.githubusercontent.com/info-201b-wi22/exploratory-analysis-MiniPasta/main/archive/netflix_titles.csv?token=GHSAT0AAAAAABQJQPQGV54RWO526HV327CWYQ3FKJQ')

install.packages("reshape2")
library("tidyverse")
library("dplyr")
library(reshape2)
library("ggplot2")
num_tvshow_each_year <- chart_3 %>% group_by(release_year) %>% filter(type == "TV Show") %>% summarise(count = n())
num_mov_each_year <- chart_3 %>% group_by(release_year) %>% filter(type == "Movie") %>% summarise(count = n())

test <- ggplot() +
  geom_smooth(data = num_tvshow_each_year, mapping = aes(x = release_year, y = count), color = "blue") +
  geom_smooth(data = num_mov_each_year, mapping = aes(x = release_year, y = count), color = "green") + xlab("Year Released") + ylab("Number") + ggtitle("Movie Growth(green) vs TV Show Growth(blue)")


