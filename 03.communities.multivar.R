library(vegan)

data(dune)
dune

# in order to see just the first 6 rows of the data
head(dune)

# in order to see just the last 6 rows of the data
tail(dune)

# decorana means "detrended correspondence analysis"; it's a type of analysis
ord <- decorana(dune)
ord

# in order to build a propoer graph, given by the lenghts of the four axes
ldc1 <- 3.7004
ldc2 <- 3.1166
ldc3 <- 1.30055
ldc4 <- 1.47888
# you could also use "=" instead of "<-"

# for the total length
total = ldc1 + ldc2 + ldc3 + ldc4

# and to calculate the percentage of each axis
pldc1 = ldc1 * 100 / total
pldc2 = ldc2 * 100 / total
pldc3 = ldc3 * 100 / total
pldc4 = ldc4 * 100 / total

# for the percentage of two axes
pldc1 + pldc2

# to create a plot based exactly on those two axes
plot(ord)
