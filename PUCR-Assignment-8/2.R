# Isabella Fischer

library(tidyverse)
library(ggplot2)
library(readr)
library(dplyr)

sampleData = read_tsv("https://osf.io/r4kn2/download")
chr22Data = read_tsv("https://osf.io/5nkzc/download")
chrXData = read_tsv("https://osf.io/cwnez/download")

sampleData= sampleData %>% 
  filter(Population %in% c("CEU","YRI","GWD","ASW","GBR","TSI","CHS","JPT"))

print(dim(sampleData))

populationData = sampleData %>% 
  group_by(Population) %>% 
  tally()

print(populationData)

chr22Data = chr22Data %>% 
  filter(SampleID %in% sampleData$SampleID) %>% 
  select(-SampleID)

a = as.matrix(chr22Data)
print(a[1:3,1:3])

chrXData = chrXData %>% 
  filter(SampleID %in% sampleData$SampleID) %>% 
  select(-SampleID)

a = as.matrix(chrXData)
print(a[1:3,1:3])


