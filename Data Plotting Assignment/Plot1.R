##setting directory and reading the file
myfile <- file("C:/Data Science/Data Plotting Assignment/household_power_consumption.txt")
data <- read.table(text=grep("^[1,2]/2/2007", readLines(file),value=TRUE),
                   col.names=c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3"), 
                   sep=";", header=TRUE)
                   
##Plot 1
png(file="Data Plotting Assignment/Plot1.png")
hist(data$Global_active_power, col="red", xlab="Global Active Power (kilowatts)", main="Global Active Power")
dev.off()
