# Write data frame to a file
outputPath <- 'Data/sizesOutput.csv'

write.csv(sizes, file=outputPath)
sizes

# Without row names
write.csv(sizes, file=outputPath, row.names = FALSE)
