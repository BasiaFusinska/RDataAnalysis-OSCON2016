# Numeric type
numericVariable <- 5
numericVariable
typeof(numericVariable)

numericVector <- c(1,2,3,4,5)
numericVector
typeof(numericVector)

# Text 
textVariable <- 'abcdef'
textVariable
typeof(textVariable)

textVector <- c('a', 'b', 'c', 'd', 'e')
textVector
typeof(textVector)

# Logical type
boolVariable <- TRUE
boolVariable
typeof(boolVariable)

boolVector <- c(TRUE, FALSE, FALSE, TRUE, FALSE)
boolVector
typeof(boolVector)

# Dynamic types
numericVariable <- FALSE
numericVariable
typeof(numericVariable)

# Vector elements
numericVector[1]
textVector[2]
boolVector[3]

# 0-index
numericVector[0]
textVector[0]
boolVector[0]

# Default values
defaultNumeric <- double(10)
defaultNumeric
defaultText <- character(10)
defaultText
defaultBool <- logical(10)
defaultBool

# Generating values
1:20
c(4, 10:15, 22)
letters[3:9]
cut(1:50, c(-Inf, 0, 5, 30, 40, Inf))
