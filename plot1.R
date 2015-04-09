## Exploratory Data Analysis Project 1
## Plot 1

data <- read.csv("power_subset.csv")

png(filename = "plot1.png", width=480, height=480)

hist(data$Global_active_power, col="Red", xlab="Global Active Power (kilowatts)", 
     main="Global Active Power")

dev.off()
