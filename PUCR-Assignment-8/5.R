# Isabella Fischer

library(tidyverse)
library(ggplot2)
library(readr)
library(dplyr)

sampleData = read_tsv("https://osf.io/r4kn2/download")
chr22Data = read_tsv("https://osf.io/5nkzc/download")
chrXData = read_tsv("https://osf.io/cwnez/download")

### dimensions of sampleData.
sampleData= sampleData %>% 
  filter(Population %in% c("CEU","YRI","GWD","ASW","GBR","TSI","CHS","JPT"))

print(dim(sampleData))

populationData = sampleData %>% 
  group_by(Population) %>% 
  tally()

chr22Data = chr22Data %>% 
  filter(SampleID %in% sampleData$SampleID) %>% 
  select(-SampleID)
a = as.matrix(chr22Data)

chrXData = chrXData %>% 
  filter(SampleID %in% sampleData$SampleID) %>% 
  select(-SampleID)
b = as.matrix(chrXData)

chrXPC =prcomp(chrXData)
head(chrXPC$x,n=10)

chrXPC = as.data.frame(chrXPC$x)

ggplot(chrXPC, aes(x=PC1, y=PC2)) + 
  geom_point(aes(color= sampleData$Gender))+
  theme_bw()+
  labs(col = "Gender")

ggsave("5.png")
