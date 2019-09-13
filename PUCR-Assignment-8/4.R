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

chrXData = chrXData %>% 
  filter(SampleID %in% sampleData$SampleID) %>% 
  select(-SampleID)


a = as.matrix(chrXData)

chr22PC =prcomp(chr22Data)
percentVE = 100 *  chr22PC$sdev^2 / sum(chr22PC$sdev^2)


percentVE=as_tibble(percentVE)

percentVEDataFrame <- data.frame(PC=1:4, PercentExplained=percentVE[1:4])
view(percentVEDataFrame)

ggplot(percentVEDataFrame, aes(PC, PercentExplained, fill=PC)) + 
  geom_bar(stat="identity") +
  xlab("Principal Component") +
  ylab("% Variance explained") 

ggsave("4.png")

