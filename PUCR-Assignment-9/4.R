# Isabella Fischer

library(tidyverse)
set.seed(3)
coord = as_tibble(read.csv("http://vincentarelbundock.github.io/Rdatasets/csv/boot/brambles.csv"))

coordinates = as.matrix(select(coord, x, y))
coordinates = kmeans(coordinates, centers = 3, algorithm = "Forgy")
cluster2 = fitted(coordinates, method = "classes")

coordinates3 = cbind(coord, cluster2)
coordinates3$cluster2 = factor(coordinates3$cluster2)

ggplot(coordinates3)+
  geom_point(mapping = aes(x = x, y = y, colour = cluster2))+
  labs(col = "Cluster")+
  theme_bw()

ggsave(filename = "4.png")