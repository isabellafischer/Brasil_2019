# Isabella Fischer

library(tidyverse)
data(state)

state <- as_tibble(data.frame(state.x77, state.region))
state %>% summary() %>% print()
print(c(1,8))

