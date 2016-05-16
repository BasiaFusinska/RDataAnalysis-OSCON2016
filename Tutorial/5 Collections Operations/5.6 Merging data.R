# Define data
id1 <- 1:10
id2 <- 2:11
type1 <- 3:12
type2 <- 4:13
name <- c('Anna','John','Adam','Thom','Maria','Sebastian','Paul','Mark','Mike','Isabella')
age <- c(15,20,35,41,32,24,51,43,17,21)

data1 <- data.frame(id=id1, name, type=type1)
data1
data2 <- data.frame(age, id=id2, type=type2)
data2

# Inner join
merge(data1, data2, by='id')

#multiple columns
merge(data1, data2, by=c('id', 'type'))
