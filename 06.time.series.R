### Time series analysis

library(imageRy)
library(terra)

## Covid-19 and pollution over Europe: January 2020 -> March 2020
im.list()

# import the data
EN01 <- im.import("EN_01.png")   # situation in January
EN13 <- im.import("EN_13.png")   # situation in March

# to make a unique plot
par(mfrow=c(2,1))
im.plotRGB.auto(EN01)
im.plotRGB.auto(EN13)

# to calculate the difference between two images in the RGB space --> you can make the difference between the Rs, the Gs, and the Bs respectively (so in terms of single elements)
# using the first element (band) of images
dif = EN01[[1]] - EN13[[1]]
dev.off()
plot(dif)

# let's change the palette
cldif <- colorRampPalette(c("blue", "white", "red")) (100)  # as it is an array, you have to use the "c"
plot(dif, col=cldif)

## Temperatures over Greenland 2000 -> 2015
# Copernicus Global Land Servi --> website from which data (maps especially) can be downloaded

g2000 <- im.import("greenland.2000.tif")
g2000
clgr <- colorRampPalette(c("black", "blue", "white", "red")) (100)
plot(g2000, col = clgr)   # low T in Greenland

# let's import also the other data about 2005, 2010, and 2015
g2005 <- im.import("greenland.2005.tif")
g2010 <- im.import("greenland.2010.tif")
g2015 <- im.import("greenland.2015.tif")

# plot just the last one
plot(g2015, col = clgr)

# let's plot one after the other one
par(mfrow=c(2,1))
plot(g2000, col = clgr)
plot(g2015, col = clgr)   # a lot of ice is clearly being lost

# stacking the data
stackgr <- c(g2000, g2005, g2010, g2015)
plot(stackgr, col = clgr)
# stacking things all together and then plotting them all at once is a great alternative to "par"

## Exercise: make the difference between the first and the the final elements of the stack
difgr = stackgr[[1]] - stackgr[[4]]   # or, alternatively, also difgr = g2000 - g2015
dev.off()
plot(difgr, col = cldif)

## Exercise: make an RGB plot with stackgr
# if the final image will become reddish, the T will have been higher at the beginning; if it becomes greenish, the T will have been higher in the middle; blueish = T higher at the end
im.plotRGB(stackgr, r=1, g=2, b=3)   # as it is blueish, Ts have increased in Greenland

## a nice website from which we can download data is www.earthobservatory.nasa.gov
