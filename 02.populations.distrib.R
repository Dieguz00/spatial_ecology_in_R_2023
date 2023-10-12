# Why do populations disperse over the landscape in a certain manner?

library(sdm)
library(terra)

file <- system.file("external/species.shp", packages="sdm")

rana <- vect(file)

rana$Occurrence
# and you obtain presence/absence data
