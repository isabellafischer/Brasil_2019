#Isabella Fischer

library(tidyverse)
library(ggplot2)
library(readr)
library(broom)


data(state)
state <- data.frame(state.x77, state.region)

lm_result = lm(Life.Exp~Illiteracy, data=state)
xatual =pull(state, Illiteracy)

a = lm_result$coefficients
print(a[[2]])

tidy_lm_result = tidy(lm_result)

print(tidy_lm_result[["p.value"]][[2]])
