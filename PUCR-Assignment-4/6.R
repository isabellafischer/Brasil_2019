# Isabella Fischer

library(tidyverse)
data <- read_csv("https://raw.githubusercontent.com/resbaz/r-novice-gapminder-files/master/data/gapminder-FiveYearData.csv")

start_ = filter(data, year=="1952")
start_ = start_ %>%
    select(country,pop) %>%
    rename(start=pop)

end_ = filter(data, year=="2007")
end_ = end_ %>%
    select(country,pop) %>%
    rename(end=pop)

combined = inner_join(start_, end_, by="country")

A =mutate(combined,growth  = end/start)
L_t=arrange(A,desc(growth))
print(L_t,n=5)
