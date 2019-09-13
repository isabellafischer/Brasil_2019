# Isabella Fischer

library(tidyverse)

dado=read_csv("http://whitlockschluter.zoology.ubc.ca/wp-content/data/chapter02/chap02q17AnemonePersonality.csv")
dados2 <- as_tibble(dado)


startleResponse1 = dados2$startleResponse1
startleResponse2 = dados2$startleResponse2


n=nrow(dados2)
k=2

media_linha = c(1:n)

for (i in 1:n){
  
  media_linha[i]= sum(startleResponse1[i],startleResponse2[i])/k
}
print(sort(media_linha))  
