# Reading a csv file
sizesPath <- 'Data/sizes.csv'
sizes <- read.csv(sizesPath)

# Factor summary
sizes$category
sizes$category[0]

summary(sizes)
levels(sizes$category)

# Reading strings as factors
options(stringsAsFactors = FALSE)
sizes <- read.csv(sizesPath)
sizes$category
typeof(sizes$category)
summary(sizes)

# Creating a factor
categories <- factor(c('B', 'A', 'B', 'B', 'C', 'B', 'A', 'C', 'A', 'A'))
categories
categories[0]
summary(categories)
levels(categories)

# Creating a factor from integer
categories <- factor(c(1,2,1,1,3,4,2,2,4,1))
categories
categories[0]
summary(categories)
levels(categories)

