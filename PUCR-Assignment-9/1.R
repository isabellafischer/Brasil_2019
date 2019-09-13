# Isabella Fischer

library(tidyverse)
coordinates <- read_csv("http://vincentarelbundock.github.io/Rdatasets/csv/boot/brambles.csv") %>%
    select(x,y) %>%
    head(n=6)
coordinates = as.matrix(coordinates)
print(coordinates)

