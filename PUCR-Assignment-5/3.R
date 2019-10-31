# Isabella Fischer

library(tidyverse)
library(tidyr)
swabs = read_tsv("https://osf.io/sh75w/download")
counts = read_tsv("https://osf.io/vjcdt/download")
taxa = read_tsv("https://osf.io/z4bfu/download")

swabsOfInterest<-select(swabs, swab.id)
print(swabsOfInterest)
