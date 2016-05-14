# Define data
gender <- c('F','M','M','F','F','F','M','M','M','F')
smoker <- c('Y','N','N','NA','Y','N','NA','N','Y','Y')

# Creating a table
table(gender, smoker)

# 3 way
age <- c('20','30','20','50','30','50','30','20','50','50')
table(gender, smoker, age)

# Matrix manual creating
myMatrix <- matrix(c(1,1,3,3,1,1), ncol=3, byrow=TRUE)
myMatrix
colnames(myMatrix) <- c('N','NA','Y')
rownames(myMatrix) <- c('F','M')
myMatrix
as.table(myMatrix)


