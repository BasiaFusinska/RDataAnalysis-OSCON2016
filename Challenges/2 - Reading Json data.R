# Read lines from file
usersPath <- 'Data/users.json'
jsonLines <- readLines(usersPath)
jsonLines

# Install Json package
install.packages("rjson")
library("rjson")

# Deserialize json into list and select only name and age
selectFeatures <- function(txtJson) { 
      obj <- fromJSON(txtJson)
      list(username=obj$name, age=obj$age)
    }
users <- lapply(jsonLines, selectFeatures)

# Display list of users
users

# Display 12th user in the list
users[[12]]

# Display only users that are teenagers
teenagers <- Filter(function(user) { user$age > 10 && user$age < 20 }, users)
teenagers

# Read all data as text
options(stringsAsFactors = FALSE)

selectFeatures <- function(txtJson) { 
  obj <- fromJSON(txtJson)
  c(Username=obj$name, Age=obj$age)
}

users <- sapply(jsonLines, selectFeatures, USE.NAMES = FALSE)
users

# Create data frame from give list
users <- data.frame(username = users["Username",], age = users["Age",])
users

# Check the types of columns
users$username[0]
users$age[0]

# Convert age to number column
users$age <- as.numeric(users$age)
users$age[0]
users

# Display only users in their 20s
inTwentees <- users[users$age >= 20 & users$age < 30,]
inTwentees
