# Implicit conversions

# Numeric vector
a <- 1:10
a

# Integer type
typeof(a)

# Assign text variable
a[5] <- "some text"
a

# Text type
b <- letters[1:10]
b

# Assign number
b[5] <- 3
b

# Logical type
c <- c(TRUE, FALSE, TRUE, TRUE, FALSE)
c

# Assign number

c[3] <- 4
c

# Explicit conversions

is.character(2)
as.character(5)

is.logical('TRUE')
as.logical('TRUE')

is.logical(0)
as.logical(0)
as.logical(5)

is.numeric('23')
as.numeric('23')

is.numeric('aaa')
x <- as.numeric('aaa')
x

typeof(NA)
