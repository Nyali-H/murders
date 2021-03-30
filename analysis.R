library(tidyverse)
load("rda/murders.rda")

murders %>% mutate(abb = reorder(abb,rate)) %>%
  ggplot(aes(abb,rate)) + 
  geom_bar(width = 0.5,stat = "identity", fill = "royal blue",color = "white") +
  coord_flip() + ggtitle("Death Rate for Cities")

ggsave("figs/barplot.png")


https://github.com/Nyali-H/murders.git
getwd()
