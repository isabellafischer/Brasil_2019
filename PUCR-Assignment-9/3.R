# Isabella Fischer

library(tidyverse)

coordinates = as_tibble(read.csv("http://vincentarelbundock.github.io/Rdatasets/csv/boot/brambles.csv"))
coordinates = as.matrix(select(coordinates, x, y))
set.seed(3)

coord = kmeans(coordinates, centers = 3)
cluster = fitted(coord, method = "classes")

coordinates2 = cbind(coordinates, cluster)
coordinates2 = as_tibble(coordinates2)
coordinates2$cluster = factor(coordinates2$cluster)

ggplot(coordinates2)+
  geom_point(mapping = aes(x = x, y = y, col = cluster))+
  labs(col = "Cluster")+
  theme_bw()
  
ggsave(filename = "3.png")