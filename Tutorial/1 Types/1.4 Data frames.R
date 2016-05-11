# Creating data frame, vectors as columns

myDataFrame <- data.frame(1:10, letters[1:10], stringsAsFactors=FALSE)
myDataFrame
typeof(myDataFrame)

# Creating data frame with column names
myDataFrame <- data.frame(numbers=11:20, letters=letters[1:10], stringsAsFactors=FALSE)
myDataFrame

# Basic information
head(myDataFrame)
summary(myDataFrame)
attributes(myDataFrame)

# Accessing columns
names(myDataFrame)
myDataFrame$numbers
myDataFrame$numbers[0]
myDataFrame$letters
myDataFrame$letters[0]

# Accessing rows
row.names(myDataFrame)

myDataFrame[3,]
myDataFrame[4:7,]

# Adding a column
myDataFrame$newColumn <- logical(10)
myDataFrame

# Removing a column
myDataFrame$newColumn <- NULL

# Changing the order of columns
myDataFrame <- myDataFrame[, c(2,1)]
myDataFrame

# Removing element
myDataFrame$newColumn <- logical(10)
myDataFrame
myDataFrame <- myDataFrame[, 1:2]
myDataFrame

# Appending a row & column
rbind(myDataFrame, list('x', 66))
cbind(myDataFrame, newColumn = logical(10))

# Removing a row
myDataFrame[-c(6,7),]

# Changing names of columns
names(myDataFrame) <- c('col1', 'col2')
myDataFrame

# Changing names of rows
row.names(myDataFrame) <- letters[11:20]
myDataFrame

# Creating data frame from matrix

#matrix
myMatrix <- matrix(c(1,2,3,4,5,6), nrow = 2)
myMatrix
typeof(myMatrix)

myMatrix <- matrix(c(1,2,3,4,5,6), ncol = 2)
myMatrix

as.data.frame(myMatrix)
