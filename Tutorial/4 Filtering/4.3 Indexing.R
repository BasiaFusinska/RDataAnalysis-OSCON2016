# Selecting elements
indexes <- c(1, 4, 7)

a <- 1:10
a
a[indexes]

b <- as.list(1:10)
b
b[indexes]

# Indexing with bool values
y <- c(TRUE, TRUE, FALSE, TRUE, TRUE, FALSE, FALSE, TRUE, FALSE, FALSE)
y

a[y]
b[y]
