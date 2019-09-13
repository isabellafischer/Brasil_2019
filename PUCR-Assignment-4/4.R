# Isabella Fischer


library(tidyverse)
data <- read_csv("https://raw.githubusercontent.com/resbaz/r-novice-gapminder-files/master/data/gapminder-FiveYearData.csv")

group_by(data, continent) %>% 
summarise(gdpPercap= mean(gdpPercap)) %>% 
print(arrange(data,continent))
