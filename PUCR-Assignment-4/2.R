# Isabella Fischer

library(tidyverse)
data <- read_csv("https://raw.githubusercontent.com/resbaz/r-novice-gapminder-files/master/data/gapminder-FiveYearData.csv")

P= filter(data,data$country=="United States"| data$country=="United Kingdom")
L=arrange(P,country,desc(year))
print(L,n=Inf, width=Inf)
