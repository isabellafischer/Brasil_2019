#Isabella Fischer

library(tidyverse)
data <- read_csv("https://raw.githubusercontent.com/resbaz/r-novice-gapminder-files/master/data/gapminder-FiveYearData.csv")

print(nrow(distinct(data,country)))
