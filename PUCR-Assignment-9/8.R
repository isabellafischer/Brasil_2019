# Isabella Fischer

library(tidyverse)
set.seed(3)
coord = read_csv("http://vincentarelbundock.github.io/Rdatasets/csv/boot/brambles.csv")

coordinates = as.matrix(select(coord, x, y))
coordinates = kmeans(coordinates, centers = 3, algorithm = "Forgy")
cluster2 = fitted(coordinates, method = "classes")

coordinates3 = as_tibble(cbind(coord, cluster2))

coordinates3_2 = filter(coordinates3, age == 0)
coordinates3_3 = group_by(coordinates3_2, cluster2)
coordinates3_4 = summarize(coordinates3_3, prop = n()/359)

vct_coords = coordinates3_4[, 2]
resp = pull(round(vct_coords,2))
print(resp)
