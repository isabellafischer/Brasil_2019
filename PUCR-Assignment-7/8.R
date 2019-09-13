# Isabella Fischer


library(tidyverse)
library(ggplot2)
library(readr)
library(broom)


data(state)
state <- data.frame(state.x77, state.region)

lm_resultm = lm(Life.Exp~Illiteracy + Murder + state$state.region, data=state)

t =lm_resultm$coefficients
tidy_lm_resultm = tidy(lm_resultm)

i= c(t[[3]],tidy_lm_resultm[["p.value"]][[3]])
print(i)

lm_summarym = summary.lm(lm_resultm)
print(lm_summarym$adj.r.squared)