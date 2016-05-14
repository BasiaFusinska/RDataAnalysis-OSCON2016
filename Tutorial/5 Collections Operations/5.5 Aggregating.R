# Define data
A <- 1:20
B <- 40:21
C <- 41:60
D <- factor(c(letters[1:5],letters[1:5],letters[5:1],letters[5:1]))
E <- factor(c(letters[1:4],letters[1:4],letters[4:1],letters[4:1], letters[1:4]))

df <- data.frame(A, B, C, D)
df

# Aggregate data my calculating mean value
aggregate(df, by=list(g1=D), FUN=mean)
aggregate(df[,c(1,2,3)], by=list(g1=D), FUN=mean)

# Using formulas
aggregate(. ~ D, df, mean)
aggregate(B ~ D, df, mean)
aggregate(cbind(A,B) ~ D, df, mean)
aggregate(A ~ D + E, df, mean)
