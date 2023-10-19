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
