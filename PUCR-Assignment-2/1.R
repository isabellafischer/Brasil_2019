# Isabella Fischer


library(tidyverse)


dado = read_csv("http://whitlockschluter.zoology.ubc.ca/wp-content/data/chapter02/chap02q05FrySurvival.csv")
dados <- as_tibble(dado)

dados$frySource = as.character(dados$frySource)
dados$survival = as.character(dados$survival)

print(nrow(dados))
print(ncol(dados))


print(typeof(dados$frySource))
print(typeof(dados$survival))


print(head(as_tibble(dados),n=10))
print(tail(as_tibble(dados),n=10))


print(head(as.character(dados$frySource),n=5))

a=(table(dados$survival))
print(a[["survived"]][1])

b=(table(dados[1]))
print(b[["hatchery"]][1])
