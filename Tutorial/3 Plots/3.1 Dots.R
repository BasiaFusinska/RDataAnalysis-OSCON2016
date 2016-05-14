# Read data
sizesPath <- 'Data/sizes.csv'
sizes <- read.csv(sizesPath)

# Drawing points
plot(sizes$length, sizes$width)

# Labels
plot(sizes$length, sizes$width, xlab = 'Lenth', ylab = 'Width')

# Changing colour
plot(sizes$length, sizes$width, xlab = 'Lenth', ylab = 'Width', col = 2)
plot(sizes$length, sizes$width, xlab = 'Lenth', ylab = 'Width', col = 3)
plot(sizes$length, sizes$width, xlab = 'Lenth', ylab = 'Width', col = 4)
