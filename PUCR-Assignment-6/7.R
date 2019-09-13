# Isabella Fischer 

library(tidyverse)
library(ggplot2)

lm_result = lm(Petal.Length~Sepal.Length, data=iris)
xatual = pull(iris, Sepal.Length)


testshapiro = shapiro.test(lm_result$residuals)

if (testshapiro$p.value>=0.005)
{
    print(testshapiro$p.value)
    print("Normal") 
} else
{print("Not Normal")}