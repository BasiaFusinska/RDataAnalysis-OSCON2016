# Conversion result - NA
as.numeric('abc')

# Calculation result: Inf, -Inf, NaN
20/0
-20/0
0/0
Inf - Inf

# Data with missing values
a <- c(1,2,NA,3,4,5)
a

# Check if there are missing values
is.na(a)
anyNA(a)

# Setting null values
is.na(a) <- c(2,4)
a

# Replacing missing values
a[is.na(a)] <- 0
a
