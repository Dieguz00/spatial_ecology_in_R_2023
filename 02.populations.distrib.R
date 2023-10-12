# Why do populations disperse over the landscape in a certain manner?

library(sdm)
library(terra)

file <- system.file("external/species.shp", package="sdm")

rana <- vect(file)

rana$Occurrence
# and you obtain presence/absence data
# the "0" is anyaway uncertain, as you could have just missed it, but maybe it was there

# to look at the data
plot(rana)
plot(rana, cex=.5)
# the points that you see a could be both absence or presence data

# selecting presences
rana [rana$Occurrence==1,]
# because we just selected all the points equal to 1 (presences)
pres <- rana [rana$Occurrence==1,]
pres
pres$Occurrence
plot(pres, cex=.5)

# exercise: select absences and call the abse
abse <- rana [rana$Occurrence==0,]
abse
abse$Occurrence
plot(abse, cex=.5)

# you could also use "!=" to pick the things "different from", so the opposite of "=="
