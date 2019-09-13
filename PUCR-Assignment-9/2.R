# Isabella Fischer

library(tidyverse)
coordinates <- read_csv("http://vincentarelbundock.github.io/Rdatasets/csv/boot/brambles.csv") %>%
    select(x,y)

set.seed(3)
k_means <- kmeans(coordinates, 3)
print(k_means$cluster)


