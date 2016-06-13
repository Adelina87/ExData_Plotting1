#getting the whole dataset 2,075,259 rows and 9 columns. 
data_full <- read.csv("C:/Data Science/Data Plotting Assignment/household_power_consumption.txt",
                      header=TRUE, sep=";", na.strings="?")

#convert the Date and Time variables to Date/Time classes in R using the strptime()  and as.Date() functions.
data_full$Date <- as.Date(data_full$Date, format="%d/%m/%Y")

#We will only be using data from the dates 2007-02-01 and 2007-02-02. 
#One alternative is to read the data from just those dates rather than reading in the entire dataset and subsetting to those dates.
data <- subset(data_full, subset = (Date >= "2007-02-01" & Date <="2007-02-02"))
rm(data_full)

##Converting dates
datetime <- paste(as.Date(data$Date), data$Time)
data$Datetime <- as.POSIXct(datetime)

##Plot 2
png(file="Data Plotting Assignment/Plot2.png")
plot(data$Global_active_power ~ data$Datetime, type="l",
     ylab="Global Active Power (kilowatts)", xlab=" ")
dev.off()