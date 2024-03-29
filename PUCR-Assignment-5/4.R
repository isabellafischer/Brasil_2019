# Isabella Fischer

library(tidyverse)
swabs = read_tsv("https://osf.io/sh75w/download")
counts = read_tsv("https://osf.io/vjcdt/download")
taxa = read_tsv("https://osf.io/z4bfu/download")


swabsOfInterest =select(swabs,swab.id)

inner_join(swabsOfInterest, counts) %>%
  print(n=10, width = 75)
