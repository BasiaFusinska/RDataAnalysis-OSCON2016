# Filtering vectors
a <- 1:10
a
a[a > 4]

# Using logical function
condition <- function(x) { x > 7 }
a[condition(a)]

# Character vectors
b <- c("ab", "bc", "abc", "ac", "def")
b
b[nchar(b) == 2]

# Filtering lists
A <- as.list(1:10)
B <- list("ab", "bc", "abc", "ac", "def")

A[A > 4]
A[condition(A)]
B[nchar(B) == 2]

# Using filter function
Filter(condition, a)
Filter(function(x) { nchar(x) == 2 }, b)

# Using subset function
subset(a, a > 4)
subset(a, condition(a))
subset(A, A > 7)
