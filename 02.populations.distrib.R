# Why do populations disperse over the landscape in a certain manner?

library(sdm)
library(terra)

file <- system.file("external/species.shp", packages="sdm")

rana <- vect(file)

rana$Occurrence
# and you obtain presence/absence data
# the "0" is anyaway uncertain, as you could have just missed it, but maybe it was there

# to look at the data
plot(rana)
plot(rana, cex=.5)
# the points that you see a could be both absence or presence data

