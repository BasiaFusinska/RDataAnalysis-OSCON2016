# Define data
v1 <- 1:100
v2 <- 101:200
v3 <- 201:300
v4 <- 301:400
v5 <- 401:500

dataSource <- data.frame(v1, v2, v3, v4, v5)
head(dataSource)

# Get 5/15 random samples
dataSource[sample(1:nrow(dataSource), 5, replace=FALSE),]
dataSource[sample(1:nrow(dataSource), 15, replace=TRUE),]
