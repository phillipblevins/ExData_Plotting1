
hpc <- read.csv("household_power_consumption.txt", sep=";", na.strings=c("","?","NA"))

twodayhpc <- subset(hpc, hpc$Date=="1/2/2007" | hpc$Date=="2/2/2007")

twodayhpc$Datetime <- as.POSIXct(paste(as.Date(twodayhpc$Date, format="%d/%m/%Y"), twodayhpc$Time))

png(filename = "plot2.png", width = 504, height = 504)
plot(twodayhpc$Global_active_power ~ twodayhpc$Datetime, type = "l",  ylab = "Global Active Power (kilowatts)", xlab = "")
dev.off()
