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
# what seems bare soil, in this case, it's water (which usually should be black)

# let's look at the 2006 images
m2006 <- im.import("matogrosso_ast_2006209_lrg.jpg")
im.plotRGB(m2006, r=1, g=2, b=3)
im.plotRGB(m2006, 1, 2, 3)
im.plotRGB(m2006, 2, 1, 3)
im.plotRGB(m2006, 2, 3, 1)
# pay attention that putting the NIF in the blue increases the attention of the viewer (so it's good)
