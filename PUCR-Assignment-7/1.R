# Isabella Fischer

library(tidyverse)
library(readr)

data(state)
state <- data.frame(state.x77, state.region)

summary(state)
state <- as.factor(state)

nlevels(state)

