# Isabella Fischer

library(tidyverse)

swabs = read_tsv("https://osf.io/sh75w/download")
counts = read_tsv("https://osf.io/vjcdt/download")
taxa = read_tsv("https://osf.io/z4bfu/download")


swabsOfInterest = select(swabs,swab.id)
swabsOfInterestCounts = inner_join(swabsOfInterest, counts)

gatheredCounts = gather(swabsOfInterestCounts, otu, count, taxa0:taxa23)
print(gatheredCounts)
