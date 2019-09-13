# Isabella Fischer

library(tidyverse)

clinicData = as_tibble(read_tsv("https://osf.io/vqsr4/download"))
geneExpe = as_tibble(read_tsv("https://osf.io/um4g9/download"))

clinicData$Ethnicity = factor(clinicData$Ethnicity)
clinicData$Sex = factor(clinicData$Sex)

print(clinicData, n = 10)
geneExpe2 <- select(geneExpe, c("Class", "ENSG00000159579", "ENSG00000072506", "ENSG00000076351", "ENSG00000182013"))
print(geneExpe2, n=10)
