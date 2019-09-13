# Isabella Fischer

library(tidyverse)
library(ggplot2)

lm_result = lm(Petal.Length~Sepal.Length, data=iris)
xatual = pull(iris, Sepal.Length)

ggplot(data=iris, aes(x=Sepal.Length, y=Petal.Length)) +
    geom_point() + 
    geom_smooth(method = lm, se=TRUE) +
    geom_point(aes(x = xatual, y=lm_result$fitted.values), colour="orange")+
    xlab("Sepal Length") + ylab("Petal Length")

ggsave("4.png")



