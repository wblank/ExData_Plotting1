## Exploratory Data Analysis Project 1
## Data loading & subsetting

setwd("ExploratoryDataAnalysis")

## read data & assign classes to columns
elecdata <- read.table("household_power_consumption.txt", header = TRUE, 
            sep=";", na.strings="?", colClasses=c("character", "character", 
            "numeric", "numeric", "numeric", "numeric", "numeric", "numeric"
            , "numeric"),nrow=2080000, comment.char="")

## create datetime variable as POSIXlt
elecdata$datetime=strptime(paste(elecdata$Date, elecdata$Time), 
                         "%d/%m/%Y %H:%M:%S")

## subset by desired dates
elecsub <- subset(elecdata, datetime >= "2007-02-01" & datetime < "2007-02-03")

## write out as .csv
write.csv(elecsub, file="power_subset.csv", row.names=FALSE)
