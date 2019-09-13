# Isabella Fischer

library(tidyverse)

coord = read_csv("http://vincentarelbundock.github.io/Rdatasets/csv/boot/brambles.csv")
set.seed(3)
coordinates = as.matrix(select(coord, x, y))

coordinates4 = kmeans(coordinates, centers = 10, algorithm = "Forgy")

print(coordinates4$tot.withinss)
print(coordinates4$betweenss)
