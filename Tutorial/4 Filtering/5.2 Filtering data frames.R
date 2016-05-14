# Define data
population <- data.frame(
                age=c(20, 15, 31, 45, 17, 27, 35, 41, 52, 23),
                gender=factor(c('F', 'F', 'M', 'M', 'F', 'M', 'F', 'F', 'M', 'M')),
                smoker=c(TRUE, TRUE, FALSE, TRUE, FALSE, FALSE, TRUE, FALSE, TRUE, TRUE))
population

# Filter specific column
population$age[population$gender == 'F']
population$smoker[population$age > 30]

# Filter data by row information
population[c(2:5, 8), ]
population[population$age > 30, ]
population[population$gender == 'M' & population$age > 30, ]

# Filter data by column information
population[, 2]
population[, 3]
population[, c(1,3)]
population[, c(3,2)]
population[, c('age', 'smoker')]
