# This is a script to visualize satellite data

library(devtools) # packages in R are also called libraries

# install the imageRy package from GitHub
devtools::install_github("ducciorocchini/imageRy")

library(imageRy)
library(terra)

# list the data
im.list()

b2 <- im.import("sentinel.dolomites.b2.tif")

# let's plot b2 with a specific colour palette
clb <- colorRampPalette(c("darkgrey","grey","lightgrey")) (100)
plot(b2, col=clb)

# exercise: let's do the same with the green band from Sentinel-2 (band 3)
b3 <- im.import("sentinel.dolomites.b3.tif")
clg <- colorRampPalette(c("darkgrey","grey","lightgrey")) (100)
plot(b3, col=clg)
