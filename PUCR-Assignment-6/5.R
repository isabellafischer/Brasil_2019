# Isabella Fischer 

library(tidyverse)
library(ggplot2)

lm_result = lm(Petal.Length~Sepal.Length, data=iris)
xatual = pull(iris, Sepal.Length)

ggplot(data=iris, aes(x=lm_result$residuals))+
    geom_histogram()+
    xlab("Residuals") +
    ylab("Count")+
    theme_bw()

ggsave("5.png")
