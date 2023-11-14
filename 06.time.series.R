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
cldif <- colorRampPalette(c("blue", "white", "red")) (100)  # --> as it is an array, you have to use the "c"
plot(dif, col=cldif)

## Temperatures over Greenland 2000 -> 2015
# Copernicus Global Land Servi --> website from which data (maps especially) can be downloaded

g2000 <- im.import("greenland.2000.tif")
g2000