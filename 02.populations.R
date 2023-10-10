# recap of the last lecture

library(spatstat)

bei
plot(bei)
plot(bei, cex=.5)
plot(bei, cex=.2)
plot(bei, pch=19, cex=.5) 

bei.extra
plot(bei.extra)
plot(bei.extra[[1]])

# recalling the package "terra"
library(terra)

# passing from points to continous surface (also called interpolation)
densitymap <- density(bei)
densitymap
plot(densitymap)

# to put points on top of the image
points(bei, cex=.2)

# avoid using colours like blue, red, and green in order to help daltonic people
colorRampPalette

cl <- colorRampPalette(c("black", "red", "orange", "yellow"))(100)
# pay attention: use "" for each colour
# the "c" means "concatenate
# "100" is the gradient
plot(densitymap, col=cl)
