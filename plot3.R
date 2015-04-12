## Exploratory Data Analysis
## Project 1
## Plot 3

## Read column names from file
cndf <- read.csv2("household_power_consumption.txt", header = FALSE, nrows = 1)
cn <- c(as.character(as.factor(cndf[1,1])), as.character(as.factor(cndf[1,2])), as.character(as.factor(cndf[1,3])), as.character(as.factor(cndf[1,4])), as.character(as.factor(cndf[1,5])), as.character(as.factor(cndf[1,6])), as.character(as.factor(cndf[1,7])), as.character(as.factor(cndf[1,8])), as.character(as.factor(cndf[1,9])))

## Read data for 1-2 Feb 2007 from file
df <- read.csv2("household_power_consumption.txt", header = FALSE, skip = 66637, nrows = 2880, col.names = cn)

## Get sub metering data
df$Sub_metering_1 <- as.numeric(as.character(df$Sub_metering_1))
df$Sub_metering_2 <- as.numeric(as.character(df$Sub_metering_2))
df$Sub_metering_3 <- as.numeric(as.character(df$Sub_metering_3))


## Open png file graphics device
png("plot3.png")

## Plot line
plot(df$Sub_metering_1, type = "n", xlab = " ", ylab = "Energy sub metering", axes = FALSE)
axis(side = 1, at = seq(0, 2880, by = 1440), labels = c("Thu", "Fri", "Sat") )
axis(2)
box()

points(df$Sub_metering_1, type = "l")
points(df$Sub_metering_2, type = "l", col = "red")
points(df$Sub_metering_3, type = "l", col = "blue")

legend('topright', c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       lty=1, col=c('black', 'red', 'blue'))

## Close png file graphics device
dev.off()