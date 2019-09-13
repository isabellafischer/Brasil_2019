# Isabella Fischer


library(tidyverse)

dado=read_csv("http://whitlockschluter.zoology.ubc.ca/wp-content/data/chapter02/chap02q17AnemonePersonality.csv")
dados3 <- as_tibble(dado)

dat <- dados3
toDelete <- seq(2, nrow(dat), 2)
var = dat[ toDelete ,]


write_tsv(var,"3.tsv")
