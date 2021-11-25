library(tidyverse)
load("rda/murders.rda")

murders %>% mutate(abb = reorder(abb,rate)) %>%
  ggplot(aes(abb,rate)) +
  geom_bar(width = .5, stat = "identity", color = "black") +
  coord_flip()

getwd()

ggsave("figs/barplot.png")
