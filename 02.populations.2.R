# Code related to population ecology

# A package is needed for point pattern analysis
install.packages("spatstat")
library(spatstat)

# let's use the bei data
# data description:
# https://CRAN.R-project.org/package=spatstat

bei

# plotting the data
plot(bei)

# changing dimension - cex
plot(bei, cex=0.5)
# or even just "cex=.5", so without the "0"

# changing the symbol - pch
plot(bei, cex=.2, pch=19)

# let's look at an additional dataset
bei.extra
plot(bei.extra)
# remember that this dataset isn't composed of points, but of maps (images) --> in pratice, raster files
# one of them is called elev (elevation) and the other one grad (gradient), but we need to use only one part of the data, only "elev"

# let's use only part of the dataset: elev --> we have to use a sort of "rope", the symbol of the $
plot(bei.extra$elev)
# of course we can assign this stuff to the object "elevation"
elevation <- bei.extra$elev
plot(elevation)

# we can use another method to used just a part of the dataset, especially convenient if we don't want to recall the name of that portion of the dataset
plot(bei.extra[[1]])
elevation2 <- bei.extra[[1]]
plot(elevation2)
# the number of [] depends on the type of data
