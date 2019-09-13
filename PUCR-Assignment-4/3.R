# Isabella Fischer

library(tidyverse)
data <- read_csv("https://raw.githubusercontent.com/resbaz/r-novice-gapminder-files/master/data/gapminder-FiveYearData.csv")

x =mutate(data,econMetric = gdpPercap/lifeExp) 
y = filter(x,x$continent=="Africa")
print(arrange(y,econMetric),n=20)

      