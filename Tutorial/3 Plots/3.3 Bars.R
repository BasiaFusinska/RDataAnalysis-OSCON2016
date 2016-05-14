# Define data
x <- c(3,5,12,20,25,33,41)
y <- c(1,7,11,5,17,14,25)

# Graph cars
barplot(x)
barplot(x, names.arg = letters[1:7], ylab = 'Total')
barplot(x, col=4)

# Combining data
xyData <- data.frame(x,y)
barplot(t(xyData), col=c(2,3))
