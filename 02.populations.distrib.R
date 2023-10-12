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

# Selecting presences
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

# exercise: plot presences and absences, one next to each other
par(mfrow=c(1,2))
plot(pres, cex=.5)
plot(abse, cex=.5)

# exercise: plot presences and absences altogether, but with different colours
# first of all, close the multiframe. to do it, use the function dev.off(). this is especially useful in the case of graphical problems
dev.off()
# and then, plot one and add the points of the other
plot(pres, col="darkblue", cex=.5)
points(abse, col="lightblue4", cex=.5)

