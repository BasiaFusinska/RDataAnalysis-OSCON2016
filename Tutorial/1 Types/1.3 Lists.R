# Combine different types
mixedTypesList <- list(1, "a", TRUE)
mixedTypesList
typeof(mixedTypesList)

# List nesting
nestedList <- list(2, 'text', mixedTypesList)
nestedList

# Accessing elements
mixedTypesList[1]
mixedTypesList[[1]]

# Named elements
namedList <- list(Name1 = 1, Name2 = "a", Name3 = TRUE)
namedList

# Accessing named elements
namedList[2]
namedList[[2]]
namedList['Name2']
namedList[['Name2']]
namedList$Name2
