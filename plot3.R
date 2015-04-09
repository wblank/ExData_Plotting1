## Exploratory Data Analysis Project 1
## Plot 3

data <- read.csv("power_subset.csv")
data$datetime <- as.POSIXct(data$datetime)


png(filename = "plot3.png", width=480, height=480)

with(data, plot(datetime, Sub_metering_1, type = "n", xlab="", 
                ylab="Energy sub metering"))

with(data, lines(datetime, Sub_metering_1, type = "l", col="Black"))
with(data, lines(datetime, Sub_metering_2, type = "l", col="Red"))
with(data, lines(datetime, Sub_metering_3, type = "l", col="Blue"))
legend("topright", lwd=1, col = c("Black", "Blue", "Red"), legend = 
        c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))


dev.off()
