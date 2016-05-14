# Define data
levels <- factor(c('A','A','B','C','C','A','B','B','A','A'))
levels

# Creating a table
oneWayTable <- table(levels)
oneWayTable
typeof(oneWayTable)

# Attributes
attributes(oneWayTable)
summary(oneWayTable)

# Create table from matrix
myMatrix <- matrix(c(5,3,2), ncol = 3)
myMatrix
resultTable <- as.table(myMatrix)
resultTable
attributes(resultTable)

# Change the rows and columns names
colnames(myMatrix) <- c('X', 'Y', 'Z')
rownames(myMatrix) <- c('X')

resultTable <- as.table(myMatrix)
resultTable
attributes(resultTable)
