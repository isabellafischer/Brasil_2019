#Isabella Fischer

library(tidyverse)
swabs = read_tsv("https://osf.io/sh75w/download")
counts = read_tsv("https://osf.io/vjcdt/download")
taxa = read_tsv("https://osf.io/z4bfu/download")

swabs2 = filter(swabs,type == "wall")
swabs3= arrange(swabs2,xcor,ycor)
swabs4= select(swabs3,swab.id,location,location2)
swabs5 = mutate(swabs4,combo_location = str_c(swabs4$location,swabs4$location2))

print(swabs5)
