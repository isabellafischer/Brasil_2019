# Isabella Fischer

library(tidyverse)
library(ggplot2)
library(readr)

data(state)
state <- data.frame(state.x77, state.region)

testshapiro=shapiro.test(state$Life.Exp)

if (testshapiro$p.value>=0.005){
  print(testshapiro$p.value)
  print("normal")
} else {print("not normal")}