### Principal Component Analysis
## The first axis covers the greatest variability of the variable  --> it's the axis we're gonna use in the end

# let's revive the same packages used for the standard deviation
library(imageRy)
library(viridis)
library(terra)

im.list()

sent <- im.import("sentinel.png")

dev.off()

# how much the different axes are correlated to each other
pairs(sent)

# perform PCA on sent
sentpca <- im.pca2(sent)
pc1 <- sentpca$PC1
plot(pc1)

viridisc <- colorRampPalette(viridis(7))(255)
plot(pc1, col=viridisc)

#calculatin sd of pc1
pc1sd3 <- focal(pc1, matrix(1/9, 3,3), fun=sd)
plot(pc1sd3, col=viridisc)

pc1sd7 <- focal(pc1, matrix(1/49, 7,7), fun=sd)
plot(pc1sd7, col=viridisc)

par(mfrow=c(2,3))
im.plotRGB(sent, 2,1,3)
# sd from the variability script:
plot(sd3, col=viridisc)
plot(sd7, col=viridisc)
plot(pc1, col=viridisc)
plot(pc1sd3, col=viridisc)
plot(pc1sd7, col=viridisc)

# stack all the sd layers
sdstack <- c(sd3, sd7, pc1sd3, pc1sd7)
names(sdstack) <- c("sd3", "sd7", "pc1sd3", "pc1sd7")
plot(sdstack, col=viridisc)

