#Isabella Fischer

library(tidyverse)
swabs = read_tsv("https://osf.io/sh75w/download")
counts = read_tsv("https://osf.io/vjcdt/download")
taxa = read_tsv("https://osf.io/z4bfu/download")

swabs = separate(swabs, swab.id, into=c("swabType", "swabGroup","swabNumber"), convert=FALSE)
print(swabs)
