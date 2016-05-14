# Define data for 2 way frequency table
A <- c('F','M','M','F','F','F','M','M','M','F')
B <- c('Y','N','N','NA','Y','N','NA','N','Y','Y')

ft <- table(A, B)
ft

# Frequencies by A & B
margin.table(ft, 1)
margin.table(ft, 2)

# Percentages
prop.table(ft)
prop.table(ft, 1)
prop.table(ft, 2)

# 3 way frequency table
C <- c('20','30','20','50','30','50','30','20','50','50')
ft <- table(A,B,C)
ft
ftable(ft)

# Frequencies using data frames
df <- data.frame(A,B,C)
df
xtabs(~., data=ft)
xtabs(~A+C, data=df)
