install.packages("gdata")
library(gdata)

# Read data from 'BOROUGH' header
manhattan <- read.xls("Data/rollingsales_manhattan.xls", 
               pattern="BOROUGH", 
               perl = "c:/Strawberry/perl/bin/perl.exe")
head(manhattan)
summary(manhattan)

# Check sale price and square feets column types
manhattan$SALE.PRICE[0]
manhattan$LAND.SQUARE.FEET[0]
manhattan$GROSS.SQUARE.FEET[0]
manhattan$YEAR.BUILT[0]
manhattan$SALE.DATE[0]

# Retrieve price from currency value
manhattan$SALE.PRICE.CURRENCY <- manhattan$SALE.PRICE
manhattan$SALE.PRICE <- as.numeric(gsub("\\$|,","", manhattan$SALE.PRICE))

# Convert square feets columns
manhattan$LAND.SQUARE.FEET <- as.numeric(gsub(",","", manhattan$LAND.SQUARE.FEET))
manhattan$GROSS.SQUARE.FEET <- as.numeric(gsub(",","", manhattan$GROSS.SQUARE.FEET))

# Check if conversion worked for every data in price column
any(is.na(manhattan$SALE.PRICE))
any(is.na(manhattan$LAND.SQUARE.FEET))
any(is.na(manhattan$GROSS.SQUARE.FEET))

head(manhattan)
summary(manhattan)

# Convert sale date
manhattan$SALE.DATE <- as.Date(manhattan$SALE.DATE)

hist(manhattan$SALE.PRICE)

# Check if prices are right
nrow(manhattan)
nrow(manhattan[manhattan$SALE.PRICE > 0,])

# Keep only actual sales
sales <- manhattan[manhattan$SALE.PRICE > 0,]
# Plot gross square feet per price 
plot(sales$GROSS.SQUARE.FEET, sales$SALE.PRICE, xlab = 'Square feet', ylab = 'Price ($)')

# Take only homes
homes <- sales[grep("FAMILY", sales$BUILDING.CLASS.CATEGORY),]
