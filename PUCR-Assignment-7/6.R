# Isabella Fischer

library(tidyverse)
library(ggplot2)
library(readr)
library(broom)

data(state)
state <- data.frame(state.x77, state.region)

lm_resultm6 = lm(Illiteracy~ Life.Exp+Population + Income  + Murder + HS.Grad + Frost + Area + state$state.region, data=state)

t =lm_resultm6$coefficients
tidy_lm_resultm = tidy(lm_resultm6)


lm_summarym = summary.lm(lm_resultm6)
print(lm_summarym$adj.r.squared)