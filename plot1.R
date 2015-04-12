## Exploratory Data Analysis
## Project 1
## Plot 1

## Read column names from file
cndf <- read.csv2("household_power_consumption.txt", header = FALSE, nrows = 1)
cn <- c(as.character(as.factor(cndf[1,1])), as.character(as.factor(cndf[1,2])), as.character(as.factor(cndf[1,3])), as.character(as.factor(cndf[1,4])), as.character(as.factor(cndf[1,5])), as.character(as.factor(cndf[1,6])), as.character(as.factor(cndf[1,7])), as.character(as.factor(cndf[1,8])), as.character(as.factor(cndf[1,9])))

## Read data for 1-2 Feb 2007 from file
df <- read.csv2("household_power_consumption.txt", header = FALSE, skip = 66637, nrows = 2880, col.names = cn)

## Get global active power data
gap <- as.numeric(as.character(df[,3]))

## Open png file graphics device
png("plot1.png")

## Plot historgram
hist(gap, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")

## Close png file graphics device
dev.off()

