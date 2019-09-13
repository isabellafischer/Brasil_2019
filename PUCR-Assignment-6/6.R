# Isabella Fischer

library(tidyverse)
library(ggplot2)

lm_result = lm(Petal.Length~Sepal.Length, data=iris)
xatual = pull(iris, Sepal.Length)

ggplot(data=iris, aes(sample = lm_result$residuals))+ 
    stat_qq() + 
    stat_qq_line()+
    xlab("Theoretical quantile") +
    ylab("Standardized residual")+
    theme_bw()

ggsave("6.png")



