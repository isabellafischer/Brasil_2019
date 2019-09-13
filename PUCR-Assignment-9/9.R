# Isabella Fischer

library(tidyverse)

coords = as_tibble(read.csv("http://vincentarelbundock.github.io/Rdatasets/csv/boot/brambles.csv"))

coordinates = as.matrix(select(coords, x, y))
set.seed(3)

coordinates = kmeans(coordinates, centers = 3, algorithm = "Forgy")
cluster2 = fitted(coordinates, method = "classes")

coordinates3 = as_tibble(cbind(coords, cluster2))

coordinates3$age = factor(coordinates3$age)
coordinates3$cluster2 = factor(coordinates3$cluster2)

ggplot(coordinates3)+
  geom_point(aes(x = x, y = y, size = age, colour = cluster2))+
  labs(col = "Cluster assignment", size = "Age")+
  theme_bw()

ggsave(filename = "9.png")