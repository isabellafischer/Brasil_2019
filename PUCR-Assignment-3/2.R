library(tidyverse)
occupancy_data <- read_tsv("https://osf.io/6pbew/download")
location_data <- read_tsv("https://osf.io/c93v5/download")

ggplot(data=occupancy_data, aes(x=Occupancy)) +
    geom_density(size=2) + 
    xlab("Proportion of time present at site") +
    ylab("Density of species sites") +
    theme_bw()

ggsave("2.png")

