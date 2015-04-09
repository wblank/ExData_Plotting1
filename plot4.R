## Exploratory Data Analysis Project 1
## Plot 4

data <- read.csv("power_subset.csv")
data$datetime <- as.POSIXct(data$datetime)


png(filename = "plot4.png", width=480, height=480)

par(mfrow=c(2,2))

## TL
plot(data$datetime, data$Global_active_power, type="n", xlab="", 
    ylab="Global Active Power")
lines(data$datetime, data$Global_active_power, type = "l", col="Black")

## TR
plot(data$datetime, data$Voltage, type="n", xlab="datetime", 
     ylab="Voltage")
lines(data$datetime, data$Voltage, type = "l", col="Black")

## BL
with(data, plot(datetime, Sub_metering_1, type = "n", xlab="", 
                ylab="Energy sub metering"))

with(data, lines(datetime, Sub_metering_1, type = "l", col="Black"))
with(data, lines(datetime, Sub_metering_2, type = "l", col="Red"))
with(data, lines(datetime, Sub_metering_3, type = "l", col="Blue"))
legend("topright", lwd=1, col = c("Black", "Blue", "Red"), legend = 
        c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
        bty="n")

## BR
with(data, plot(datetime, Global_reactive_power, type="n"))
lines(data$datetime, data$Global_reactive_power, type = "l", col="Black")



dev.off()
