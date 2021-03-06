## Exploratory Data Analysis Project 1
## Plot 2

data <- read.csv("power_subset.csv")
data$datetime <- as.POSIXct(data$datetime)

png(filename = "plot2.png", width=480, height=480)

with(data, plot(datetime, Global_active_power, type = "n", xlab="", 
                ylab="Global Active Power (kilowatts)"))

with(data, lines(datetime, Global_active_power, type = "l"))

dev.off()
