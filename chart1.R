library(tidyverse)

test1 <- data %>% filter(type=="Movie") %>% group_by(director) %>% summarise(count=n()) %>%
  arrange(desc(count)) %>%
  na.omit() %>% head(10) %>%
  ggplot(aes(x=reorder(director, count), y=count)) +
  geom_col(fill="orange") +
  coord_flip() +
  labs(x="Director", y="Number of movies", 
       title="Top 10 directors by number of movies")
