# Set path to the iris data file
irisPath <- 'Data/iris.data'

# Read data from file
irisData <- read.csv(irisPath, header = FALSE)

# Have a look at the data
names(irisData)
head(irisData)

# Set proper headers
names(irisData)

names(irisData) <- c('Sepal.l', 'Sepal.w', 'Petal.l', 'Petal.w', 'Species')

# Summary of data
summary(irisData)

# Add petal and sepal areas
irisData$Sepal.Area = irisData$Sepal.l * irisData$Sepal.w
irisData$Petal.Area = irisData$Petal.l * irisData$Petal.w

head(irisData)

# Change column order
irisData <- irisData[, c(1,2,3,4,6,7,5)]
head(irisData)

# Plot sepal with petal areas

irisData$Colour[irisData$Species == 'Iris-setosa'] = 1
irisData$Colour[irisData$Species == 'Iris-versicolor'] = 2
irisData$Colour[irisData$Species == 'Iris-virginica'] = 3

plot(irisData$Sepal.Area, irisData$Petal.Area, xlab = 'Sepal length', 
     ylab = 'Sepal width', main = 'Irises', col = irisData$Colour)

irisData$Colour <- NULL

#-------------------------------------------------
# Use datasets for iris data
str(iris)
head(iris)

# List available datasets
data()
