## Vegetation indices

library(imageRy)
library(terra)

im.list()

m1992 <- im.import("matogrosso_l5_1992219_lrg.jpg")
# this image has been processed
# bands: 1=NIR, 2=RED, 3=GREEN

im.plotRGB(m1992, r=1, g=2, b=3)
# this way, all the vegetation "will become" red
# you can write the same input even this way:
im.plotRGB(m1992, 1, 2, 3)
# therefore inverting the colours is easier:
im.plotRGB(m1992, 2, 1, 3)
im.plotRGB(m1992, 2, 3, 1)
