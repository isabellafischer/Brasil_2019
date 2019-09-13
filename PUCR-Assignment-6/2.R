# Isabella Fischer

library(tidyverse)
data(iris)
iris <- as_tibble(iris)

cor(iris$Sepal.Length, iris$Petal.Length, method = "pearson")

hypotesis_test<- cor.test(iris$Sepal.Length, iris$Petal.Length)
print(hypotesis_test$p.value)
