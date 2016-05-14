# Define data
elements <- c(1, 4, 9, 16, 25)
elementsList <- as.list(elements)

# Apply operation accross elements
sapply(elements, sqrt)
lapply(elements, sqrt)

# Apply accrost list elements
sapply(elementsList, sqrt)
lapply(elementsList, sqrt)

# Return list from sapply
mapper <- function(a) { if (a %% 2 == 0) NULL else a }
sapply(elementsList, mapper)

# Using indexes
sapply(elements, function(x) { 
  print(parent.frame()$i)
  x^2
})
