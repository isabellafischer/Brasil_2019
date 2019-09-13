# Isabella Fischer

library(tidyverse)
swabs = read_tsv("https://osf.io/sh75w/download")
counts = read_tsv("https://osf.io/vjcdt/download")
taxa = read_tsv("https://osf.io/z4bfu/download")

swabs2 = swabs %>% 
    filter(type == "wall") %>%
    arrange( xcor,ycor) %>%
    select( swab.id, location, location2) %>%
    mutate( combo_location = str_c(location, location2)) %>%
    print()