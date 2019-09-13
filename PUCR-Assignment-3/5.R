
library(maps)
library(mapproj)
library(tidyverse)
library(ggplot2)

location_data <- read_tsv("https://osf.io/c93v5/download")

all_states <- map_data("state")

ggplot(location_data) + 
  geom_polygon(data=all_states, aes(x=long, y=lat, group = group), colour="black", fill="white") + 
  expand_limits(x = all_states$Longitude, y = all_states$Latitude) + 
  geom_point (aes(x = Longitude, y = Latitude, color=PredominantSpeciesType)) +
  labs(x = "Latitude", y="Longitude", title="Core vs. Transient Species in the US")

ggsave("5.pdf")
