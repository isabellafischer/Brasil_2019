# Isabella Fischer

library(tidyverse)
library(ggplot2)

ggplot(data=iris, aes(x=Sepal.Length, y=Petal.Length)) +
    geom_point()+
    xlab("Sepal Length") + ylab("Petal Length")+
    theme_bw()

ggsave("1.png")

  