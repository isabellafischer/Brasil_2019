# Isabella Fischer

library(tidyverse)

hurricanes <- tribble(
  ~hurricane, ~year, ~coordinateType, ~coordinate, ~mph,
  "Noel",     2007,  "Latitude",      18.4655,   80,
  "Noel",     2007,  "Longitude",     66.1057,   80,
  "Maria",    2017,  "Latitude",      19.9825,   175,
  "Maria",    2017,  "Longitude",     67.2457,   175,
  "Gilbert",  1988,  "Latitude",      17.7289,   186,
  "Gilbert",  1988,  "Longitude",     63.2839,   186
)

hurricanesSpread = spread(hurricanes,coordinateType,coordinate)
print(hurricanesSpread)
