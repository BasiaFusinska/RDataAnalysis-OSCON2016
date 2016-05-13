# Reading a csv file
sizesPath <- 'Data/sizes.csv'

sizes <- read.csv(sizesPath)
sizes
sizes$category[0]
sizes$length[0]
sizes$width[0]

# Determining separator
sizesPath <- 'Data/sizes-semicolon.txt'

sizes <- read.csv(sizesPath)
sizes

sizes <- read.csv(sizesPath, sep = ';')
sizes

# Including header
sizesPath <- 'Data/sizes-noheader.csv'

sizes <- read.csv(sizesPath)
sizes

sizes <- read.csv(sizesPath, head = FALSE)
sizes
