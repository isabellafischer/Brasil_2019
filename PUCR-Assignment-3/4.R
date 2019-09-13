# Isabella Fischer

library(tidyverse)

occupancy_data <- read_tsv("https://osf.io/6pbew/download")
location_data <- read_tsv("https://osf.io/c93v5/download")

ggplot(data=location_data,aes(x=NumSpecies,y=NDVI,size=Elevation)) +
  geom_point(aes(color=PredominantSpeciesType)) +
  theme_dark() 

ggsave("4.png")  

