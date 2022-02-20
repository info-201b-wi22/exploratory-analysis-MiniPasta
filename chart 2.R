chart_2 <- read.csv('https://raw.githubusercontent.com/info-201b-wi22/exploratory-analysis-MiniPasta/main/archive/netflix_titles.csv?token=GHSAT0AAAAAABQJQPQGV54RWO526HV327CWYQ3FKJQ')
View(chart_2)
#Chart of the number of TV shows and movies based on ratings and the released year
library(ggplot2)
library(dplyr)

ggplot(data = chart_2) +
  geom_col(mapping = aes(x = rating, y = release_year, fill=type))
