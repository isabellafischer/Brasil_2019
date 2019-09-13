# Isabella Fischer

library(tidyverse)

location <- read_tsv("https://osf.io/c93v5/download")


ggplot(data=location, aes(x=PredominantSpeciesType, fill=PredominantSpeciesType)) +
  geom_bar() +
  labs(x = "Predominant Species Type", y="Species Count") +
  guides(fill=FALSE)+
  theme_bw() 

ggsave("3.png")