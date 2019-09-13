# Isabella Fischer

library(tidyverse)
library(ggplot2)

lm_result = lm(Petal.Length~Sepal.Length, data=iris)
print(lm_result$coefficients[[2]])

lm_summary = summary.lm(lm_result)
print(lm_summary$coefficients[[8]])
print(lm_summary$adj.r.squared)