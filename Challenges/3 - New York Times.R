# Read NYT data
nyt <- read.csv('Data/nyt1.csv')
head(nyt)
summary(nyt)

# Gender as factor
nyt$Gender <- factor(nyt$Gender)
summary(nyt)

# Number of rows
nrow(nyt)

# Create age groups: <= 18, (18, 20], (20, 35], (35, 50], (50, 60], > 60
nyt$age_group <- cut(nyt$Age, c(-Inf,18,20,35,50,60,Inf))
nyt$age_group[0]

# How many people in every age group
ages <- table(nyt$age_group)

# Plot frequency per age group
barplot(ages, ylab = 'Total')

# Age mean per age group
aggregate(Age ~ age_group, data=nyt, FUN=mean)

# ... and per gender
aggregate(Age ~ age_group + Gender, data=nyt, FUN=mean)

# Impressions and Clicks per age group
aggregate(cbind(Impressions, Clicks) ~ age_group, data=nyt, FUN=mean)

# COunt impressions per age group
impressions <- aggregate(Impressions ~ age_group, data=nyt, FUN=sum)
impressions

# plot number of impressions per age group
barplot(impressions$Impressions, names.arg = impressions$age_group, ylab = 'Total')

# try doBy library
install.packages("doBy") 
library("doBy") 

# Aggregate Impressions by gender and age group
impressions <- summaryBy(Impressions~Gender+age_group, data = nyt, FUN=sum)
impressions

# Merge impressions sums by gender
g0 <- impressions[1:6, c(2,3)]
g1 <- impressions[7:12, c(2,3)]

impressions <- merge(g0, g1, by='age_group')
impressions
names(impressions) <- c('age_group', 'Impr - F', 'Impr - M')
impressions

# Plot impressions sum by gender
barplot(t(impressions[, c(2,3)]), col = c(2,7), names.arg = impressions$age_group)

# Define a click through rate

# Are there any Clicks without impressions?
nyt[nyt$Impressions <= 0 & nyt$Clicks > 0,]

# Define new column - clicks per impression
nyt$CpI <- nyt$Clicks / nyt$Impressions

# Count and plot clicks per impressions per age group
ctr <- summaryBy(CpI ~ age_group, data = subset(nyt, Impressions > 0), FUN = sum)
ctr

barplot(ctr$CpI.sum, names.arg = ctr$age_group)
