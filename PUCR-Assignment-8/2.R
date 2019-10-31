# Isabella Fischer

library(tidyverse)

sampleData<-as_tibble(read_tsv("https://osf.io/r4kn2/download"))
chr22Data<-as_tibble(read_tsv("https://osf.io/5nkzc/download"))
chrXData<-as_tibble(read_tsv("https://osf.io/cwnez/download"))

sampleData<-filter(sampleData, Population=="CEU"|
                     Population=="YRI"|
                     Population=="GWD"|
                     Population=="ASW"|
                     Population=="GBR"|
                     Population=="TSI"|
                     Population=="CHS"|
                     Population=="JPT")
print(dim(sampleData))

sampleData %>% 
  group_by(Population) %>%
  summarize(Count=length(Population)) %>%
  print()

chr22Data<-chr22Data %>%
  inner_join(select(sampleData,SampleID),by="SampleID") %>%
  select(2:length(chr22Data)) %>%
  as.matrix()
print(chr22Data[1:3,1:3])  

chrXData<-chrXData %>%
  inner_join(select(sampleData,SampleID),by="SampleID") %>%
  select(2:length(chrXData)) %>%
  as.matrix()
print(chrXData[1:3,1:3])


