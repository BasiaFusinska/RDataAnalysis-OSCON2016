# Define vector data
a <- c(7,4:1,5,10:8,6)
a

# Sort vector
sort(a)
sort(a, decreasing = TRUE)

# Lists
b <- as.list(a)
b
sort(b)

# Order in data frames
df <- data.frame(v1=c(1,2,3,4,5,6), v2=c(2,3,1,2,3,1), v3=c(3,1,2,2,1,3))
df

df[order(df$v2), ]
df[order(df$v2, df$v3), ]
df[order(df$v2, -df$v3), ]
