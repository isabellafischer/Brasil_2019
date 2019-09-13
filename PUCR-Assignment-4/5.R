# Isabella Fischer

library(tidyverse)
data <- read_csv("https://raw.githubusercontent.com/resbaz/r-novice-gapminder-files/master/data/gapminder-FiveYearData.csv")

a=group_by(data, country)
b=summarise(a,lifeExp = mean(lifeExp )) 
L=arrange(b,lifeExp)
print(L,n=5)
  
  
