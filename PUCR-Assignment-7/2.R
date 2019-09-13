# Isabella Fischer

library(tidyverse)
library(ggplot2)
library(readr)

data(state)
state <- data.frame(state.x77, state.region)

ggplot(state, aes(x=Life.Exp)) +
  geom_histogram() +
  xlab("Life expectancy") +
  ylab("Number of records") +
  theme_bw()

ggsave("2.png")
