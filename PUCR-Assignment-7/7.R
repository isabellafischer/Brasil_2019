# Isabella Fischer

library(tidyverse)
library(ggplot2)
library(readr)
library(broom)


data(state)
state <- data.frame(state.x77, state.region)

lm_result = lm(Life.Exp~Illiteracy+Murder, data=state)

a =lm_result$coefficients
tidy_lm_result = tidy(lm_result)

b= c(a[[2]],tidy_lm_result[["p.value"]][[2]])
print(b)

m= c(a[[3]],tidy_lm_result[["p.value"]][[3]])
print(m)

lm_summary = summary.lm(lm_result)
print(lm_summary$adj.r.squared)