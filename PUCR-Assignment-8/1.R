# Isabella Fischer

library(tidyverse)
library(readr)
library(dplyr)

sampleData = read_tsv("https://osf.io/r4kn2/download")
chr22Data = read_tsv("https://osf.io/5nkzc/download")
chrXData = read_tsv("https://osf.io/cwnez/download")

sampleData= sampleData %>% 
  select(1:3) %>% 
  head(n=3) %>% 
  print()

chr22Data= chr22Data %>% 
  select(1:3) %>% 
  head(n=3) %>% 
  print()

chrXData= chrXData %>% 
  select(1:3) %>% 
  head(n=3) %>% 
  print()
