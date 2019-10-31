# Isabella Fischer
library(tidyverse)

sampleData = read_tsv("https://osf.io/r4kn2/download")
chr22Data = read_tsv("https://osf.io/5nkzc/download")
chrXData = read_tsv("https://osf.io/cwnez/download")

sampleData = sampleData %>%
  filter(Population == "CEU" | Population == "YRI" | Population == "GWD" |
           Population == "ASW" | Population == "GBR" | Population == "TSI" |
           Population == "CHS" | Population == "JPT")

populationData = sampleData %>% 
  group_by(Population) %>% 
  summarise(Count = length(SampleID))

chr22Data = semi_join(chr22Data, sampleData, by = "SampleID")
chr22Data$SampleID = NULL
chr22Data = as.matrix(chr22Data)

chrXData = semi_join(chrXData, sampleData, by = "SampleID")
chrXData$SampleID = NULL
chrXData = as.matrix(chrXData)

chr22PC = prcomp(chr22Data)
pcchr22PC = as_tibble(chr22PC$x)

percentVE = 100 * chr22PC$sdev^2 / sum(chr22PC$sdev^2)
percentVEDataFrame = data.frame(PC = 1:4, PercentExplained = percentVE[1:4])

ggplot(percentVEDataFrame, aes(PC, PercentExplained)) + 
  geom_bar(stat = "identity") +
  xlab("Principal component") +
  ylab("% variance explained") +
  theme_bw() +
  theme(legend.position = "none")

ggsave("4.png")

