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
# the "c" means "concatenate; it stresses that two things are part of the same array
# "100" is the gradient
plot(densitymap, col=cl)

# by lowering the gradient, the transition between the different colours becomes sharper
cl <- colorRampPalette(c("black", "red", "orange", "yellow"))(4)
plot(densitymap, col=cl)

# exercise! change the colours without using green, red, or blue together
crp <- colorRampPalette(c("grey1", "maroon3", "sienna2", "gold"))(100)
plot(densitymap, col=crp)

#
plot(bei.extra)
elev <- bei.extra[[1]]
# (we use two "[[" as we are dealing with an image (2D))
plot(elev)

# remember that you could have also used the "$" to recall an element within a dataset: bei.extra$elev


# "multiframing" means plotting many things together
# the function "par" helps us to state how many columns will be present in the plot
par(mfrow=c(1,2))
plot(densitymap)
plot(elev)
