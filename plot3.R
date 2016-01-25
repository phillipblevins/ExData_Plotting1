
hpc <- read.csv("household_power_consumption.txt", sep=";", na.strings=c("","?","NA"))

twodayhpc <- subset(hpc, hpc$Date=="1/2/2007" | hpc$Date=="2/2/2007")

twodayhpc$Datetime <- as.POSIXct(paste(as.Date(twodayhpc$Date, format="%d/%m/%Y"), twodayhpc$Time))

png(filename = "plot3.png", width = 504, height = 504)
plot(twodayhpc$Sub_metering_1 ~ twodayhpc$Datetime, type = "l",  ylab = "Global Active Power (kilowatts)", xlab = "")
lines (twodayhpc$Sub_metering_2 ~twodayhpc$Datetime, col="red")
lines (twodayhpc$Sub_metering_3 ~twodayhpc$Datetime, col="blue")
legend("topright", col = c("black", "red", "blue"), lty = 1, lwd = 2, 
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

dev.off()