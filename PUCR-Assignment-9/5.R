# Isabella Fischer

library(tidyverse)
set.seed(3)
coord = as_tibble(read.csv("http://vincentarelbundock.github.io/Rdatasets/csv/boot/brambles.csv"))

coordinates = as.matrix(select(coord, x, y))
coordinates = kmeans(coordinates, centers = 10, algorithm = "Forgy")
cluster3 = fitted(coordinates, method = "classes")

coordinates4 = cbind(coord, cluster3)
coordinates4$cluster3 = factor(coordinates4$cluster3)

ggplot(coordinates4)+
  geom_point(mapping = aes(x = x, y = y, colour = cluster3))+
  labs(col = "Cluster")+
  theme_bw()

ggsave(filename = "5.png")